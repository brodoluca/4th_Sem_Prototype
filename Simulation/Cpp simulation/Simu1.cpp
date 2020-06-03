#include <iostream>
#include "olcConsoleGameEngine.h"
//due to the game engine used, the simulation is only available on windows
#include <windows.h>



using namespace std;

class Example : public olcConsoleGameEngine {
public:
	bool Solve_AStar()
	{
		// Reset Navigation Graph - default all node states
		for (int x = 0; x < nMapWidth; x++)
			for (int y = 0; y < nMapHeight; y++)
			{
				nodes[y * nMapWidth + x].bVisited = false;
				nodes[y * nMapWidth + x].fGlobalGoal = INFINITY;
				nodes[y * nMapWidth + x].fLocalGoal = INFINITY;
				nodes[y * nMapWidth + x].parent = nullptr;	// No parents
			}
		//delta function for helping in calculating the distance between the two nodes
		auto distance = [](sNode* a, sNode* b) // For convenience
		{
			return sqrtf((a->x - b->x) * (a->x - b->x) + (a->y - b->y) * (a->y - b->y));
		};
		//distance between local goal of node plus distance to de node
		auto heuristic = [distance](sNode* a, sNode* b) // So we can experiment with heuristic
		{
			return distance(a, b);
		};

		// Setup starting conditions
		sNode* nodeCurrent = nodeEnd;
		nodeEnd->fLocalGoal = 0.0f;
		nodeEnd->fGlobalGoal = heuristic(nodeEnd, nodeStart);

		// Add start node to not tested list - this will ensure it gets tested.
		// As the algorithm progresses, newly discovered nodes get added to this
		// list, and will themselves be tested later
		list<sNode*> listNotTestedNodes;
		listNotTestedNodes.push_back(nodeEnd);

		// if the not tested list contains nodes, there may be better paths
		// which have not yet been explored. However, we will also stop 
		// searching when we reach the target - there may well be better
		// paths but this one will do - it wont be the longest.
		while (!listNotTestedNodes.empty() && nodeCurrent != nodeStart)// Find absolutely shortest path // && nodeCurrent != nodeEnd)
		{
			// Sort Untested nodes by global goal, so lowest is first
			listNotTestedNodes.sort([](const sNode* lhs, const sNode* rhs) { return lhs->fGlobalGoal < rhs->fGlobalGoal; });

			// Front of listNotTestedNodes is potentially the lowest distance node. Our
			// list may also contain nodes that have been visited, so ditch these...
			while (!listNotTestedNodes.empty() && listNotTestedNodes.front()->bVisited)
				listNotTestedNodes.pop_front();

			// ...or abort because there are no valid nodes left to test
			if (listNotTestedNodes.empty())
				break;

			nodeCurrent = listNotTestedNodes.front();
			nodeCurrent->bVisited = true; // We only explore a node once


			// Check each of this node's neighbours...
			for (auto nodeNeighbour : nodeCurrent->vecNeighbours)
			{
				// ... and only if the neighbour is not visited and is 
				// not an obstacle, add it to NotTested List
				if (!nodeNeighbour->bVisited && nodeNeighbour->bObstacle == 0)
					listNotTestedNodes.push_back(nodeNeighbour);

				// Calculate the neighbours potential lowest parent distance
				float fPossiblyLowerGoal = nodeCurrent->fLocalGoal + distance(nodeCurrent, nodeNeighbour);

				// If choosing to path through this node is a lower distance than what 
				// the neighbour currently has set, update the neighbour to use this node
				// as the path source, and set its distance scores as necessary
				if (fPossiblyLowerGoal < nodeNeighbour->fLocalGoal)
				{
					nodeNeighbour->parent = nodeCurrent;
					nodeNeighbour->fLocalGoal = fPossiblyLowerGoal;

					// The best path length to the neighbour being tested has changed, so
					// update the neighbour's score. The heuristic is used to globally bias
					// the path algorithm, so it knows if its getting better or worse. At some
					// point the algo will realise this path is worse and abandon it, and then go
					// and search along the next best path.
					nodeNeighbour->fGlobalGoal = nodeNeighbour->fLocalGoal + heuristic(nodeNeighbour, nodeStart);
				}
			}
		}

		return true;
	}

    virtual bool OnUserCreate() {
        // Create a 2D array of nodes - this is for convenience of rendering and construction
        // and is not required for the algorithm to work - the nodes could be placed anywhere
        // in any space, in multiple dimensions...
        nodes = new sNode[nMapWidth * nMapHeight];

        for (int x = 0; x < nMapWidth; x++)
            for (int y = 0; y < nMapHeight; y++){
                nodes[y * nMapWidth + x].x = x; // ...because we give each node its own coordinates
                nodes[y * nMapWidth + x].y = y;
                nodes[y * nMapWidth + x].bObstacle = false;
                nodes[y * nMapWidth + x].parent = nullptr;
                nodes[y * nMapWidth + x].bVisited = false;
				nodes[y * nMapWidth + x].bLightHouse = false;
				nodes[y * nMapWidth + x].bWater = false;
            }
		//define lighthouses nodes
		nodes[0].bLightHouse = true;
		nodes[nMapWidth - 1].bLightHouse = true;
		nodes[(nMapWidth-1)*(nMapHeight)].bLightHouse = true;
		nodes[(nMapWidth - 1) * (nMapHeight) + nMapWidth-1].bLightHouse = true;
		
		//define obstacles
		nodes[nMapWidth/2 * nMapHeight + nMapWidth/2-1].bObstacle = true;
		for (int i = -4; i < 5; i++) {
			nodes[(nMapWidth-i+4) / 2 * nMapHeight + nMapWidth / 2  + i].bObstacle = true;
			nodes[nMapWidth / 2 * nMapHeight + nMapWidth/2  + i].bObstacle = true;
			nodes[(nMapWidth - i - 4) / 2 * nMapHeight + nMapWidth / 2 + i].bObstacle = true;
		}
		
		//create lake in the worst and laziest possible way
		for (size_t i = 4; i < 13; i++){

			nodes[i].bWater = true;
		}
		for (size_t i = 5; i < 12; i++) {

			nodes[i+nMapWidth].bWater = true;
		}
		for (size_t i = 7; i < 10; i++) {

			nodes[i + 2*nMapWidth].bWater = true;
		}

        // Create connections - in this case nodes are on a regular grid
        for (int x = 0; x < nMapWidth; x++)
            for (int y = 0; y < nMapHeight; y++){
                if (y > 0)
                    nodes[y * nMapWidth + x].vecNeighbours.push_back(&nodes[(y - 1) * nMapWidth + (x + 0)]);
                if (y < nMapHeight - 1)
                    nodes[y * nMapWidth + x].vecNeighbours.push_back(&nodes[(y + 1) * nMapWidth + (x + 0)]);
                if (x > 0)
                    nodes[y * nMapWidth + x].vecNeighbours.push_back(&nodes[(y + 0) * nMapWidth + (x - 1)]);
                if (x < nMapWidth - 1)
                    nodes[y * nMapWidth + x].vecNeighbours.push_back(&nodes[(y + 0) * nMapWidth + (x + 1)]);
            }
        // Manually positio the start and end markers so they are not nullptr
        nodeStart = &nodes[(nMapHeight / 2) * nMapWidth + 1 -1];
        nodeEnd = &nodes[(nMapHeight / 2) * nMapWidth + nMapWidth - 1];

        return true;
    }


    virtual bool OnUserUpdate(float fElapsedTime) {
		int nNodeSize = 6;
		int nNodeBorder = 0.5;

		// Use integer division to nicely get cursor position in node space
		int nSelectedNodeX = m_mousePosX / nNodeSize;
		int nSelectedNodeY = m_mousePosY / nNodeSize;
		
		if (m_keys[VK_RETURN].bHeld) {
			switch (marker){
			case 0 :
				nodeStart = &nodes[nodeStart->y * nMapHeight - nMapWidth];
				if (nodes[nodeStart->y * nMapHeight - nMapWidth ].bLightHouse) {
					nodeStart = &nodes[nodeStart->x * nMapWidth + 1];
					marker++;
				}
				break;
			case 1:
				nodeStart = &nodes[nodeStart->x + 1];
				if (nodes[nodeStart->x].bLightHouse) {
					nodeStart = &nodes[nodeStart->x + nMapWidth];
					marker = 2;
				}
				break;
			case 2:
				nodeStart = &nodes[nodeStart->y * nMapHeight+ 2*(nMapWidth)-1];
				if (nodes[nodeStart->y * nMapHeight + 2*nMapWidth-1].bLightHouse) {
					nodeStart = &nodes[nodeStart->x * nMapWidth + 1];
					marker=0;
				}
				if (nodeStart == nodeEnd)
				{
					marker = 0;
				}
			default:
				break;
			}
			
				
			Solve_AStar(); // Solve in "real-time" gives a nice effect
			
		}
		if (m_keys[VK_SPACE].bPressed)
		{
			d = nodeStart;
			while (d->parent != nullptr) {
				nodeStart = d;
				Fill(nodeStart->x * nNodeSize + nNodeBorder, nodeStart->y * nNodeSize + nNodeBorder, (nodeStart->x + 1) * nNodeSize - nNodeBorder, (nodeStart->y+ 1) * nNodeSize - nNodeBorder, PIXEL_SOLID, FG_GREEN); //starting position
				d = d->parent;
			}
		}

		

		// Draw Nodes
		for (int x = 0; x < nMapWidth; x++)
			for (int y = 0; y < nMapHeight; y++)
			{

				Fill(x * nNodeSize + nNodeBorder, y * nNodeSize + nNodeBorder,
					(x + 1) * nNodeSize - nNodeBorder, (y + 1) * nNodeSize - nNodeBorder,
					PIXEL_HALF, nodes[y * nMapWidth + x].bObstacle ? FG_WHITE : BG_DARK_GREEN);
				if (nodes[y * nMapWidth + x].bWater) {
					Fill(x * nNodeSize + nNodeBorder, y * nNodeSize + nNodeBorder, (x + 1) * nNodeSize - nNodeBorder, (y + 1) * nNodeSize - nNodeBorder, PIXEL_SOLID, FG_DARK_BLUE); //lake
				}
				//if (nodes[y * nMapWidth + x].bVisited)
					//Fill(x * nNodeSize + nNodeBorder, y * nNodeSize + nNodeBorder, (x + 1) * nNodeSize - nNodeBorder, (y + 1) * nNodeSize - nNodeBorder, PIXEL_SOLID, FG_GREY); //obstacle 

				if (&nodes[y * nMapWidth + x] == nodeStart)
					Fill(x * nNodeSize + nNodeBorder, y * nNodeSize + nNodeBorder, (x + 1) * nNodeSize - nNodeBorder, (y + 1) * nNodeSize - nNodeBorder, PIXEL_SOLID, FG_GREEN); //starting position

				if (&nodes[y * nMapWidth + x] == nodeEnd)
					Fill(x * nNodeSize + nNodeBorder, y * nNodeSize + nNodeBorder, (x + 1) * nNodeSize - nNodeBorder, (y + 1) * nNodeSize - nNodeBorder, PIXEL_SOLID, FG_RED); //object

				if (nodes[y * nMapWidth + x].bLightHouse) {
					Fill(x * nNodeSize + nNodeBorder, y * nNodeSize + nNodeBorder, (x + 1) * nNodeSize - nNodeBorder, (y + 1) * nNodeSize - nNodeBorder, PIXEL_SOLID, FG_DARK_YELLOW); //lighz houses
				}
				

			}
		drawBeamLight(nodes[0], nNodeSize);
		// Draw Path by starting ath the end, and following the parent node trail
		// back to the start - the start node will not have a parent path to follow
		if (nodeStart!= nullptr)
		{
			sNode* p = nodeStart;
			while (p->parent != nullptr)
			{
				DrawLine(p->x * nNodeSize + nNodeSize / 2, p->y * nNodeSize + nNodeSize / 2,
					p->parent->x * nNodeSize + nNodeSize / 2, p->parent->y * nNodeSize + nNodeSize / 2, PIXEL_SOLID, FG_YELLOW);
				
				// Set next node to this node's parent
				p = p->parent;
			}
			
			


		}


		// Draw Path by starting ath the end, and following the parent node trail
		// back to the start - the start node will not have a parent path to follow
		if (nodeEnd != nullptr)
		{
			sNode* p = nodeEnd;
			int dimension = 0;
			while (p->parent != nullptr)
			{
				DrawLine(p->x * nNodeSize + nNodeSize / 2, p->y * nNodeSize + nNodeSize / 2,
					p->parent->x * nNodeSize + nNodeSize / 2, p->parent->y * nNodeSize + nNodeSize / 2, PIXEL_SOLID, FG_YELLOW);

				// Set next node to this node's parent
				p = p->parent;
				dimension++;
			}


		}



		Sleep(100);
        return true;
    }
private:
    struct sNode
    {
        bool bObstacle = false;			// Is the node an obstruction?
        bool bVisited = false;			// Have we searched this node before?
        float fGlobalGoal;				// Distance to goal so far
        float fLocalGoal;				// Distance to goal if we took the alternative route
        int x;							// Nodes position in 2D space
        int y;
        vector<sNode*> vecNeighbours;	// Connections to neighbours
        sNode* parent;// Node connecting to this node that offers shortest parent
		bool bWater;
		bool bLightHouse;
	};

    sNode* nodes = nullptr;
    int nMapWidth = 16;
    int nMapHeight = 16;

    sNode* nodeStart = nullptr;
    sNode* nodeEnd = nullptr;
	sNode* d;
	int marker = 0;
	bool driving = false;

	void drawBeamLight(sNode Node, int nNodeSize) {
		DrawLine(Node.x * (nNodeSize)+nNodeSize / 2, Node.y * nNodeSize + nNodeSize / 2,
			Node.x * (nNodeSize)+nNodeSize / 2 + 4 * nNodeSize, Node.y * nNodeSize + nNodeSize / 2, PIXEL_SOLID, FG_DARK_YELLOW);
		DrawLine(Node.x * (nNodeSize)+nNodeSize / 2, Node.y * nNodeSize + nNodeSize / 2,
			Node.x * (nNodeSize)+nNodeSize / 2, Node.y * nNodeSize + nNodeSize / 2 + 4 * nNodeSize, PIXEL_SOLID, FG_DARK_YELLOW);
	
	}
};


int main(){
    std::cout << "Hello World!\n";
    Example demo;
    demo.ConstructConsole(160, 100, 8, 8);
    demo.Start();

    return 0;
}

