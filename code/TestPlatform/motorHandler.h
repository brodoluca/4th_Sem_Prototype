#define NO 555

typedef struct Motor Motor;
typedef struct backMotor backMotor;
typedef struct frontMotor frontMotor;

struct Motor{
	uint8_t speed_;
	uint8_t speedPin_;
	uint8_t Apin_;
	uint8_t Bpin_;
};

void initialize(Motor* m, uint8_t Apin, uint8_t Bpin, uint8_t speedP){
	 m->speed_ =0;
	 m->Apin_ = Apin;
	 m->Bpin_ = Bpin;
	 m->speedPin_ = speedP;
}

struct backMotor{
	Motor *m_;
	void (*forward)(backMotor* , uint8_t speed);
	void (*backwards)(backMotor *, uint8_t speed);
	void (*setSpeed)(backMotor *,  uint8_t speed);
	void (*stop)(backMotor *);	
};
struct frontMotor{
	Motor *m_;
	void (*rightM)(frontMotor * );
	void (*leftM)(frontMotor * );
	void (*strM)();
};


void forward(backMotor *b, uint8_t speed){
	PORTC |= (1<<PC3);
	PORTC &= ~(1<<PC2);
	b->setSpeed(b, speed);
}

void backwards(backMotor *b, uint8_t speed){
	PORTC |= (1<<b->m_->Bpin_);
	PORTC &= ~(1<<b->m_->Apin_);
	b->m_->speed_=speed;
	OCR2A = speed;
}
void stopM(backMotor *b){
	b->m_->speed_=0;
	OCR2A = 0;
}

void setSpeed(backMotor *b,  uint8_t speed){
	b->m_->speed_=speed;
	OCR2A = 200;	
}





void leftM(frontMotor * f){
	PORTC |= (1<<PC4); 
	PORTC &= ~(1<<PC5); 
}
void rightM(frontMotor * f){
	PORTC |= (1<<PC5); 
	PORTC &= ~(1<<PC4); 
}

void strM(){
	PORTC &=~((1<<PC5) | (1<<PC4)); 
}





void front_init(frontMotor * f, Motor *m){
	f->m_ = m;
	f->leftM = leftM;
	f->rightM = rightM;
	f->strM = strM;
}
void back_init(backMotor *b, Motor * m){
	b->m_=m;
	b->forward = forward;
	b->backwards = backwards;
	b->stop = stopM;
	b->setSpeed = setSpeed;
}





/*
void forw(){
	PORTC |= (1<<PC3) | (1<<PC1);
    PORTC &= ~(1<<PC2);  
	OCR2A = 160;                 
}

void back(){
	PORTC |= (1<<PC2) | (1<<PC1);
    PORTC &= ~(1<<PC3);                      
}


void stop(){
	PORTC &=  ~(1<<PC1);
	OCR2A = 0;
}
*/