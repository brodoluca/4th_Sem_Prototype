<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="3" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="15" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="15" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="50" name="dxf" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="101" name="Hidden" color="15" fill="1" visible="yes" active="yes"/>
<layer number="102" name="Changes" color="12" fill="1" visible="yes" active="yes"/>
<layer number="200" name="200bmp" color="1" fill="10" visible="no" active="no"/>
<layer number="201" name="tNamesOnPCB" color="5" fill="1" visible="yes" active="yes"/>
<layer number="202" name="bNamesOnPCB" color="3" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="diy-modules">
<description>&lt;b&gt;DIY Modules for Arduino, Raspberry Pi, CubieBoard etc.&lt;/b&gt;
&lt;br&gt;&lt;br&gt;
The library contains a list of symbols and footprints for popular, cheap and easy-to-use electronic modules.&lt;br&gt;
The modules are intend to work with microprocessor-based platforms such as &lt;a href="http://arduino.cc"&gt;Arduino&lt;/a&gt;, &lt;a href="http://raspberrypi.org/"&gt;Raspberry Pi&lt;/a&gt;, &lt;a href="http://cubieboard.org/"&gt;CubieBoard&lt;/a&gt;, &lt;a href="http://beagleboard.org/"&gt;BeagleBone&lt;/a&gt; and many others. There are many manufacturers of the modules in the world. Almost all of them can be bought on &lt;a href="ebay.com"&gt;ebay.com&lt;/a&gt;.&lt;br&gt;
&lt;br&gt;
By using this library, you can design a PCB for devices created with usage of modules. Even if you do not need to create PCB design, you can also use the library to quickly document your work by drawing schematics of devices built by you.&lt;br&gt;
&lt;br&gt;
The latest version, examples, photos and much more can be found at: &lt;b&gt;&lt;a href="http://diymodules.org/eagle"&gt;diymodules.org/eagle&lt;/a&gt;&lt;/b&gt;&lt;br&gt;&lt;br&gt;
Comments, suggestions and bug reports please send to: &lt;b&gt;&lt;a href="mailto:eagle@diymodules.org"&gt;eagle@diymodules.org&lt;/b&gt;&lt;/a&gt;&lt;br&gt;&lt;br&gt;
&lt;i&gt;Version: 1.8.0 (2017-Jul-02)&lt;/i&gt;&lt;br&gt;
&lt;i&gt;Created by: Miroslaw Brudnowski&lt;/i&gt;&lt;br&gt;&lt;br&gt;
&lt;i&gt;Released under the Creative Commons Attribution 4.0 International License: &lt;a href="http://creativecommons.org/licenses/by/4.0"&gt;http://creativecommons.org/licenses/by/4.0&lt;/a&gt;&lt;/i&gt;
&lt;br&gt;&lt;br&gt;
&lt;center&gt;
&lt;a href="http://diymodules.org/eagle"&gt;&lt;img src="http://www.diymodules.org/img/diymodules-lbr-image.php?v=1.8.0" alt="DIYmodules.org"&gt;&lt;/a&gt;
&lt;/center&gt;</description>
<packages>
<package name="ULTRASONIC-HC-SR04">
<description>&lt;b&gt;Ultrasonic Ranging Module HC-SR04&lt;/b&gt;</description>
<wire x1="-22.5" y1="9.8" x2="22.5" y2="9.8" width="0.127" layer="21"/>
<wire x1="22.5" y1="9.8" x2="22.5" y2="-10.2" width="0.127" layer="21"/>
<wire x1="22.5" y1="-10.2" x2="-22.5" y2="-10.2" width="0.127" layer="21"/>
<wire x1="-22.5" y1="-10.2" x2="-22.5" y2="9.8" width="0.127" layer="21"/>
<hole x="-21.1" y="8.4" drill="1.8"/>
<hole x="-21.1" y="-8.8" drill="1.8"/>
<hole x="21.1" y="-8.8" drill="1.8"/>
<hole x="21.1" y="8.4" drill="1.8"/>
<circle x="-13" y="0" radius="8" width="0.127" layer="21"/>
<circle x="13" y="0" radius="8" width="0.127" layer="21"/>
<pad name="1" x="-3.81" y="-8.89" drill="1" shape="square"/>
<pad name="2" x="-1.27" y="-8.89" drill="1"/>
<pad name="3" x="1.27" y="-8.89" drill="1"/>
<pad name="4" x="3.81" y="-8.89" drill="1"/>
<wire x1="-5.08" y1="-8.255" x2="-4.445" y2="-7.62" width="0.127" layer="21"/>
<wire x1="-4.445" y1="-7.62" x2="-3.175" y2="-7.62" width="0.127" layer="21"/>
<wire x1="-3.175" y1="-7.62" x2="-2.54" y2="-8.255" width="0.127" layer="21"/>
<wire x1="-2.54" y1="-8.255" x2="-1.905" y2="-7.62" width="0.127" layer="21"/>
<wire x1="-1.905" y1="-7.62" x2="-0.635" y2="-7.62" width="0.127" layer="21"/>
<wire x1="-0.635" y1="-7.62" x2="0" y2="-8.255" width="0.127" layer="21"/>
<wire x1="0" y1="-8.255" x2="0.635" y2="-7.62" width="0.127" layer="21"/>
<wire x1="0.635" y1="-7.62" x2="1.905" y2="-7.62" width="0.127" layer="21"/>
<wire x1="1.905" y1="-7.62" x2="2.54" y2="-8.255" width="0.127" layer="21"/>
<wire x1="2.54" y1="-8.255" x2="3.175" y2="-7.62" width="0.127" layer="21"/>
<wire x1="3.175" y1="-7.62" x2="4.445" y2="-7.62" width="0.127" layer="21"/>
<wire x1="4.445" y1="-7.62" x2="5.08" y2="-8.255" width="0.127" layer="21"/>
<wire x1="5.08" y1="-8.255" x2="5.08" y2="-9.525" width="0.127" layer="21"/>
<wire x1="5.08" y1="-9.525" x2="4.445" y2="-10.16" width="0.127" layer="21"/>
<wire x1="4.445" y1="-10.16" x2="3.175" y2="-10.16" width="0.127" layer="21"/>
<wire x1="3.175" y1="-10.16" x2="2.54" y2="-9.525" width="0.127" layer="21"/>
<wire x1="2.54" y1="-9.525" x2="1.905" y2="-10.16" width="0.127" layer="21"/>
<wire x1="1.905" y1="-10.16" x2="0.635" y2="-10.16" width="0.127" layer="21"/>
<wire x1="0.635" y1="-10.16" x2="0" y2="-9.525" width="0.127" layer="21"/>
<wire x1="0" y1="-9.525" x2="-0.635" y2="-10.16" width="0.127" layer="21"/>
<wire x1="-0.635" y1="-10.16" x2="-1.905" y2="-10.16" width="0.127" layer="21"/>
<wire x1="-1.905" y1="-10.16" x2="-2.54" y2="-9.525" width="0.127" layer="21"/>
<wire x1="-2.54" y1="-9.525" x2="-3.175" y2="-10.16" width="0.127" layer="21"/>
<wire x1="-3.175" y1="-10.16" x2="-4.445" y2="-10.16" width="0.127" layer="21"/>
<wire x1="-4.445" y1="-10.16" x2="-5.08" y2="-9.525" width="0.127" layer="21"/>
<wire x1="-5.08" y1="-9.525" x2="-5.08" y2="-8.255" width="0.127" layer="21"/>
<text x="0" y="10.795" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-11.43" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
</package>
<package name="ULTRASONIC-HC-SR04#V">
<description>&lt;b&gt;Ultrasonic Ranging Module HC-SR04&lt;/b&gt; vertically mounted</description>
<wire x1="-22.5" y1="-4.064" x2="22.5" y2="-4.064" width="0.127" layer="21"/>
<wire x1="22.5" y1="-4.064" x2="22.5" y2="-5.7" width="0.127" layer="21"/>
<wire x1="22.5" y1="-5.7" x2="21" y2="-5.7" width="0.127" layer="21"/>
<wire x1="21" y1="-5.7" x2="5" y2="-5.7" width="0.127" layer="21"/>
<wire x1="5" y1="-5.7" x2="-5" y2="-5.7" width="0.127" layer="21"/>
<wire x1="-5" y1="-5.7" x2="-21" y2="-5.7" width="0.127" layer="21"/>
<wire x1="-21" y1="-5.7" x2="-22.5" y2="-5.7" width="0.127" layer="21"/>
<wire x1="-22.5" y1="-5.7" x2="-22.5" y2="-4.064" width="0.127" layer="21"/>
<wire x1="-5.08" y1="-4.064" x2="5.08" y2="-4.064" width="0.127" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="1" shape="square" rot="R180"/>
<pad name="2" x="-1.27" y="0" drill="1" rot="R180"/>
<pad name="3" x="1.27" y="0" drill="1" rot="R180"/>
<pad name="4" x="3.81" y="0" drill="1" rot="R180"/>
<text x="0" y="1.905" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-18.415" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
<wire x1="-5.08" y1="-4.064" x2="-5.08" y2="-1.524" width="0.127" layer="21"/>
<wire x1="-5.08" y1="-1.524" x2="-4.191" y2="-1.524" width="0.127" layer="21"/>
<wire x1="-4.191" y1="-1.524" x2="-3.429" y2="-1.524" width="0.127" layer="21"/>
<wire x1="-3.429" y1="-1.524" x2="-1.651" y2="-1.524" width="0.127" layer="21"/>
<wire x1="-1.651" y1="-1.524" x2="-0.889" y2="-1.524" width="0.127" layer="21"/>
<wire x1="-0.889" y1="-1.524" x2="0.889" y2="-1.524" width="0.127" layer="21"/>
<wire x1="0.889" y1="-1.524" x2="1.651" y2="-1.524" width="0.127" layer="21"/>
<wire x1="1.651" y1="-1.524" x2="3.429" y2="-1.524" width="0.127" layer="21"/>
<wire x1="3.429" y1="-1.524" x2="4.191" y2="-1.524" width="0.127" layer="21"/>
<wire x1="4.191" y1="-1.524" x2="5.08" y2="-1.524" width="0.127" layer="21"/>
<wire x1="5.08" y1="-1.524" x2="5.08" y2="-4.064" width="0.127" layer="21"/>
<wire x1="4.191" y1="-1.524" x2="4.191" y2="-0.889" width="0.127" layer="21"/>
<wire x1="3.429" y1="-1.524" x2="3.429" y2="-0.889" width="0.127" layer="21"/>
<wire x1="1.651" y1="-1.524" x2="1.651" y2="-0.889" width="0.127" layer="21"/>
<wire x1="-0.889" y1="-1.524" x2="-0.889" y2="-0.889" width="0.127" layer="21"/>
<wire x1="-3.429" y1="-1.524" x2="-3.429" y2="-0.889" width="0.127" layer="21"/>
<wire x1="0.889" y1="-1.524" x2="0.889" y2="-0.889" width="0.127" layer="21"/>
<wire x1="-1.651" y1="-1.524" x2="-1.651" y2="-0.889" width="0.127" layer="21"/>
<wire x1="-4.191" y1="-1.524" x2="-4.191" y2="-0.889" width="0.127" layer="21"/>
<wire x1="-21" y1="-5.7" x2="-21" y2="-17.7" width="0.127" layer="21"/>
<wire x1="-21" y1="-17.7" x2="-5" y2="-17.7" width="0.127" layer="21"/>
<wire x1="-5" y1="-17.7" x2="-5" y2="-5.7" width="0.127" layer="21"/>
<wire x1="5" y1="-5.7" x2="5" y2="-17.7" width="0.127" layer="21"/>
<wire x1="5" y1="-17.7" x2="21" y2="-17.7" width="0.127" layer="21"/>
<wire x1="21" y1="-17.7" x2="21" y2="-5.7" width="0.127" layer="21"/>
</package>
<package name="IR-RECEIVER#NC">
<description>&lt;b&gt;IR Receiver Module&lt;/b&gt;&lt;br&gt;
Symbol wihtout IR sensor connector</description>
<wire x1="-12.065" y1="8.255" x2="12.065" y2="8.255" width="0.127" layer="21"/>
<wire x1="12.065" y1="8.255" x2="12.065" y2="-8.255" width="0.127" layer="21"/>
<wire x1="12.065" y1="-8.255" x2="-12.065" y2="-8.255" width="0.127" layer="21"/>
<wire x1="-12.065" y1="-8.255" x2="-12.065" y2="8.255" width="0.127" layer="21"/>
<pad name="A.1" x="-8.89" y="2.54" drill="1" shape="square"/>
<pad name="A.2" x="-8.89" y="0" drill="1"/>
<pad name="A.3" x="-8.89" y="-2.54" drill="1"/>
<pad name="B.1" x="-6.35" y="2.54" drill="1" shape="square"/>
<pad name="B.2" x="-6.35" y="0" drill="1"/>
<pad name="B.3" x="-6.35" y="-2.54" drill="1"/>
<wire x1="-10.16" y1="3.175" x2="-9.525" y2="3.81" width="0.127" layer="21"/>
<wire x1="-9.525" y1="3.81" x2="-8.255" y2="3.81" width="0.127" layer="21"/>
<wire x1="-8.255" y1="3.81" x2="-7.62" y2="3.175" width="0.127" layer="21"/>
<wire x1="-7.62" y1="3.175" x2="-6.985" y2="3.81" width="0.127" layer="21"/>
<wire x1="-6.985" y1="3.81" x2="-5.715" y2="3.81" width="0.127" layer="21"/>
<wire x1="-5.715" y1="3.81" x2="-5.08" y2="3.175" width="0.127" layer="21"/>
<wire x1="-5.08" y1="3.175" x2="-5.08" y2="1.905" width="0.127" layer="21"/>
<wire x1="-5.08" y1="1.905" x2="-5.715" y2="1.27" width="0.127" layer="21"/>
<wire x1="-5.715" y1="1.27" x2="-5.08" y2="0.635" width="0.127" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-5.08" y2="-0.635" width="0.127" layer="21"/>
<wire x1="-5.08" y1="-0.635" x2="-5.715" y2="-1.27" width="0.127" layer="21"/>
<wire x1="-5.715" y1="-1.27" x2="-5.08" y2="-1.905" width="0.127" layer="21"/>
<wire x1="-5.08" y1="-1.905" x2="-5.08" y2="-3.175" width="0.127" layer="21"/>
<wire x1="-5.08" y1="-3.175" x2="-5.715" y2="-3.81" width="0.127" layer="21"/>
<wire x1="-5.715" y1="-3.81" x2="-6.985" y2="-3.81" width="0.127" layer="21"/>
<wire x1="-6.985" y1="-3.81" x2="-7.62" y2="-3.175" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-3.175" x2="-8.255" y2="-3.81" width="0.127" layer="21"/>
<wire x1="-8.255" y1="-3.81" x2="-9.525" y2="-3.81" width="0.127" layer="21"/>
<wire x1="-9.525" y1="-3.81" x2="-10.16" y2="-3.175" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-3.175" x2="-10.16" y2="-1.905" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-1.905" x2="-9.525" y2="-1.27" width="0.127" layer="21"/>
<wire x1="-9.525" y1="-1.27" x2="-10.16" y2="-0.635" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-0.635" x2="-10.16" y2="0.635" width="0.127" layer="21"/>
<wire x1="-10.16" y1="0.635" x2="-9.525" y2="1.27" width="0.127" layer="21"/>
<wire x1="-9.525" y1="1.27" x2="-10.16" y2="1.905" width="0.127" layer="21"/>
<wire x1="-10.16" y1="1.905" x2="-10.16" y2="3.175" width="0.127" layer="21"/>
<hole x="-10.16" y="6.35" drill="3"/>
<wire x1="7.62" y1="3.175" x2="10.16" y2="3.175" width="0.127" layer="21"/>
<wire x1="10.16" y1="3.175" x2="11.43" y2="1.905" width="0.127" layer="21"/>
<wire x1="11.43" y1="1.905" x2="11.43" y2="-1.905" width="0.127" layer="21"/>
<wire x1="11.43" y1="-1.905" x2="10.16" y2="-3.175" width="0.127" layer="21"/>
<wire x1="10.16" y1="-3.175" x2="7.62" y2="-3.175" width="0.127" layer="21"/>
<text x="0" y="9.525" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-9.525" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
<text x="9.525" y="0" size="1.778" layer="21" rot="R270" align="center">IR</text>
<wire x1="7.62" y1="3.175" x2="7.62" y2="-3.175" width="0.127" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="ULTRASONIC-HC-SR04">
<description>&lt;b&gt;Ultrasonic Ranging Module HC-SR04&lt;/b&gt;</description>
<pin name="VCC" x="-2.54" y="-15.24" length="middle" direction="pwr" rot="R90"/>
<pin name="TRIG" x="0" y="-15.24" length="middle" direction="in" rot="R90"/>
<pin name="ECHO" x="2.54" y="-15.24" length="middle" direction="out" rot="R90"/>
<pin name="GND" x="5.08" y="-15.24" length="middle" direction="pwr" rot="R90"/>
<wire x1="-22.86" y1="-10.16" x2="-22.86" y2="10.16" width="0.254" layer="94"/>
<wire x1="-22.86" y1="10.16" x2="25.4" y2="10.16" width="0.254" layer="94"/>
<wire x1="25.4" y1="10.16" x2="25.4" y2="-10.16" width="0.254" layer="94"/>
<wire x1="25.4" y1="-10.16" x2="-22.86" y2="-10.16" width="0.254" layer="94"/>
<circle x="-12.7" y="0" radius="7.62" width="0.254" layer="94"/>
<circle x="15.24" y="0" radius="7.62" width="0.254" layer="94"/>
<circle x="15.24" y="0" radius="3.81845625" width="0.254" layer="94"/>
<circle x="-12.7" y="0" radius="3.81845625" width="0.254" layer="94"/>
<text x="-22.86" y="15.24" size="1.778" layer="95">&gt;NAME</text>
<text x="-22.86" y="12.7" size="1.778" layer="95">&gt;VALUE</text>
</symbol>
<symbol name="IR-RECEIVER#NC">
<description>&lt;b&gt;IR Receiver Module&lt;/b&gt; without IR sensor connector</description>
<pin name="VCC.1" x="-17.78" y="7.62" length="middle"/>
<pin name="VCC.2" x="-17.78" y="5.08" length="middle"/>
<pin name="GND.1" x="-17.78" y="2.54" length="middle"/>
<pin name="GND.2" x="-17.78" y="0" length="middle"/>
<pin name="IN.1" x="-17.78" y="-2.54" length="middle"/>
<pin name="IN.2" x="-17.78" y="-5.08" length="middle"/>
<wire x1="-12.7" y1="10.16" x2="12.7" y2="10.16" width="0.254" layer="94"/>
<wire x1="12.7" y1="10.16" x2="12.7" y2="-7.62" width="0.254" layer="94"/>
<wire x1="12.7" y1="-7.62" x2="-12.7" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-7.62" x2="-12.7" y2="10.16" width="0.254" layer="94"/>
<text x="-12.7" y="15.24" size="1.778" layer="95">&gt;NAME</text>
<text x="-12.7" y="12.7" size="1.778" layer="96">&gt;VALUE</text>
<wire x1="2.54" y1="5.842" x2="6.35" y2="5.842" width="0.254" layer="94"/>
<wire x1="6.35" y1="5.842" x2="8.89" y2="3.302" width="0.254" layer="94"/>
<wire x1="8.89" y1="3.302" x2="8.89" y2="-1.016" width="0.254" layer="94"/>
<wire x1="8.89" y1="-1.016" x2="6.35" y2="-3.556" width="0.254" layer="94"/>
<wire x1="6.35" y1="-3.556" x2="2.54" y2="-3.556" width="0.254" layer="94"/>
<wire x1="2.54" y1="-3.556" x2="2.54" y2="5.842" width="0.254" layer="94"/>
<text x="5.334" y="1.27" size="2.54" layer="94" rot="R90" align="center">IR</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="ULTRASONIC-HC-SR04">
<description>&lt;b&gt;Ultrasonic Ranging Module HC-SR04&lt;/b&gt;
&lt;p&gt;More details available here:&lt;br&gt;
&lt;a href="http://randomnerdtutorials.com/complete-guide-for-ultrasonic-sensor-hc-sr04/"&gt;
http://randomnerdtutorials.com/complete-guide-for-ultrasonic-sensor-hc-sr04/&lt;/a&gt;&lt;/p&gt;
&lt;p&gt;&lt;b&gt;&lt;a href="http://www.ebay.com/sch/hc+sr04+ultrasonic"&gt;Click here to find device on ebay.com&lt;/a&gt;&lt;/b&gt;&lt;/p&gt;

&lt;p&gt;&lt;img alt="photo" src="http://www.diymodules.org/img/device-photo.php?name=ULTRASONIC-HC-SR04"&gt;&lt;/p&gt;</description>
<gates>
<gate name="G$1" symbol="ULTRASONIC-HC-SR04" x="0" y="0"/>
</gates>
<devices>
<device name="" package="ULTRASONIC-HC-SR04">
<connects>
<connect gate="G$1" pin="ECHO" pad="3"/>
<connect gate="G$1" pin="GND" pad="4"/>
<connect gate="G$1" pin="TRIG" pad="2"/>
<connect gate="G$1" pin="VCC" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="#V" package="ULTRASONIC-HC-SR04#V">
<connects>
<connect gate="G$1" pin="ECHO" pad="3"/>
<connect gate="G$1" pin="GND" pad="4"/>
<connect gate="G$1" pin="TRIG" pad="2"/>
<connect gate="G$1" pin="VCC" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="IR-RECEIVER#NC">
<description>&lt;b&gt;IR Receiver Module&lt;/b&gt; without IR sensor connector
&lt;p&gt;&lt;img alt="photo" src="http://www.diymodules.org/img/device-photo.php?name=IR-RECEIVER"&gt;&lt;/p&gt;</description>
<gates>
<gate name="G$1" symbol="IR-RECEIVER#NC" x="0" y="0"/>
</gates>
<devices>
<device name="" package="IR-RECEIVER#NC">
<connects>
<connect gate="G$1" pin="GND.1" pad="A.2"/>
<connect gate="G$1" pin="GND.2" pad="B.2"/>
<connect gate="G$1" pin="IN.1" pad="A.3"/>
<connect gate="G$1" pin="IN.2" pad="B.3"/>
<connect gate="G$1" pin="VCC.1" pad="A.1"/>
<connect gate="G$1" pin="VCC.2" pad="B.1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="atmel_tiny24-44-84tiny48-88mega48-88-168-328">
<description>Atmel MCUs:

&lt;p&gt;&lt;b&gt;ATmega48/88/168/328&lt;/b&gt; in variants AU, MU, PU
&lt;p&gt;&lt;b&gt;ATtiny24/44/84&lt;/b&gt; in variants SSU, PU, MU
&lt;p&gt;&lt;b&gt;ATtiny48/88&lt;/b&gt; in variants AU, MU, MMU, MMH, PU
&lt;p&gt;&lt;b&gt;AT89C51/52/...&lt;/b&gt;
&lt;p&gt;&lt;b&gt;AT89C1051/2052/4052&lt;/b&gt;

&lt;i&gt;&lt;p&gt;&lt;author&gt;Created by Ing. Miroslav Kovar @ soft&lt;/author&gt;</description>
<packages>
<package name="DIL28">
<wire x1="-17.78" y1="-6.35" x2="17.78" y2="-6.35" width="0.2" layer="21"/>
<wire x1="17.78" y1="-6.35" x2="17.78" y2="6.35" width="0.2" layer="21"/>
<wire x1="17.78" y1="6.35" x2="-17.78" y2="6.35" width="0.2" layer="21"/>
<wire x1="-17.78" y1="6.35" x2="-17.78" y2="1.27" width="0.2" layer="21"/>
<wire x1="-17.78" y1="1.27" x2="-16.51" y2="1.27" width="0.2" layer="21"/>
<wire x1="-16.51" y1="1.27" x2="-16.51" y2="-1.27" width="0.2" layer="21"/>
<wire x1="-16.51" y1="-1.27" x2="-17.78" y2="-1.27" width="0.2" layer="21"/>
<wire x1="-17.78" y1="-1.27" x2="-17.78" y2="-6.35" width="0.2" layer="21"/>
<pad name="1" x="-16.51" y="-7.62" drill="0.889" diameter="1.524" shape="square"/>
<pad name="2" x="-13.97" y="-7.62" drill="0.889" diameter="1.524" shape="octagon"/>
<pad name="3" x="-11.43" y="-7.62" drill="0.889" diameter="1.524" shape="octagon"/>
<pad name="4" x="-8.89" y="-7.62" drill="0.889" diameter="1.524" shape="octagon"/>
<pad name="5" x="-6.35" y="-7.62" drill="0.889" diameter="1.524" shape="octagon"/>
<pad name="6" x="-3.81" y="-7.62" drill="0.889" diameter="1.524" shape="octagon"/>
<pad name="7" x="-1.27" y="-7.62" drill="0.889" diameter="1.524" shape="octagon"/>
<pad name="8" x="1.27" y="-7.62" drill="0.889" diameter="1.524" shape="octagon"/>
<pad name="9" x="3.81" y="-7.62" drill="0.889" diameter="1.524" shape="octagon"/>
<pad name="10" x="6.35" y="-7.62" drill="0.889" diameter="1.524" shape="octagon"/>
<pad name="11" x="8.89" y="-7.62" drill="0.889" diameter="1.524" shape="octagon"/>
<pad name="12" x="11.43" y="-7.62" drill="0.889" diameter="1.524" shape="octagon"/>
<pad name="13" x="13.97" y="-7.62" drill="0.889" diameter="1.524" shape="octagon"/>
<pad name="14" x="16.51" y="-7.62" drill="0.889" diameter="1.524" shape="octagon"/>
<pad name="15" x="16.51" y="7.62" drill="0.889" diameter="1.524" shape="octagon"/>
<pad name="16" x="13.97" y="7.62" drill="0.889" diameter="1.524" shape="octagon"/>
<pad name="17" x="11.43" y="7.62" drill="0.889" diameter="1.524" shape="octagon"/>
<pad name="18" x="8.89" y="7.62" drill="0.889" diameter="1.524" shape="octagon"/>
<pad name="19" x="6.35" y="7.62" drill="0.889" diameter="1.524" shape="octagon"/>
<pad name="20" x="3.81" y="7.62" drill="0.889" diameter="1.524" shape="octagon"/>
<pad name="21" x="1.27" y="7.62" drill="0.889" diameter="1.524" shape="octagon"/>
<pad name="22" x="-1.27" y="7.62" drill="0.889" diameter="1.524" shape="octagon"/>
<pad name="23" x="-3.81" y="7.62" drill="0.889" diameter="1.524" shape="octagon"/>
<pad name="24" x="-6.35" y="7.62" drill="0.889" diameter="1.524" shape="octagon"/>
<pad name="25" x="-8.89" y="7.62" drill="0.889" diameter="1.524" shape="octagon"/>
<pad name="26" x="-11.43" y="7.62" drill="0.889" diameter="1.524" shape="octagon"/>
<pad name="27" x="-13.97" y="7.62" drill="0.889" diameter="1.524" shape="octagon"/>
<pad name="28" x="-16.51" y="7.62" drill="0.889" diameter="1.524" shape="octagon"/>
<text x="-13.97" y="1.27" size="1.524" layer="25">&gt;NAME</text>
<text x="-13.97" y="-3.175" size="1.524" layer="27">&gt;VALUE</text>
<text x="-18.0975" y="-6.35" size="1.27" layer="201" font="vector" ratio="12" rot="R90">&gt;NAME</text>
</package>
</packages>
<symbols>
<symbol name="ATMEGA48/88/168/328-PU(DIP28)">
<wire x1="-30.48" y1="22.86" x2="30.48" y2="22.86" width="0.254" layer="94"/>
<wire x1="30.48" y1="22.86" x2="30.48" y2="-22.86" width="0.254" layer="94"/>
<wire x1="30.48" y1="-22.86" x2="-30.48" y2="-22.86" width="0.254" layer="94"/>
<wire x1="-30.48" y1="-22.86" x2="-30.48" y2="22.86" width="0.254" layer="94"/>
<pin name="PB5(SCK/PCINT5)" x="-33.02" y="7.62" length="short" swaplevel="1"/>
<pin name="PB7(XTAL2/TOSC2/PCINT7)" x="-33.02" y="2.54" length="short" swaplevel="1"/>
<pin name="PB6(XTAL1/TOSC1/PCINT6)" x="-33.02" y="5.08" length="short" swaplevel="1"/>
<pin name="AREF" x="33.02" y="-12.7" length="short" direction="pas" rot="R180"/>
<pin name="AVCC" x="33.02" y="-10.16" length="short" direction="pwr" rot="R180"/>
<pin name="PB4(MISO/PCINT4)" x="-33.02" y="10.16" length="short" swaplevel="1"/>
<pin name="PB3(MOSI/OC2A/PCINT3)" x="-33.02" y="12.7" length="short" swaplevel="1"/>
<pin name="PB2(SS/OC1B/PCINT2)" x="-33.02" y="15.24" length="short" swaplevel="1"/>
<pin name="PB1(OC1A/PCINT1)" x="-33.02" y="17.78" length="short" swaplevel="1"/>
<pin name="PB0(ICP1/CLKO/PCINT0)" x="-33.02" y="20.32" length="short" swaplevel="1"/>
<pin name="PD7(AIN1/PCINT23)" x="33.02" y="2.54" length="short" swaplevel="1" rot="R180"/>
<pin name="PD6(AIN0/OC0A/PCINT22)" x="33.02" y="5.08" length="short" swaplevel="1" rot="R180"/>
<pin name="PD5(T1/OC0B/PCINT21)" x="33.02" y="7.62" length="short" swaplevel="1" rot="R180"/>
<pin name="PD4(T0/XCK/PCINT20)" x="33.02" y="10.16" length="short" swaplevel="1" rot="R180"/>
<pin name="PD3(INT1/OC2B/PCINT19)" x="33.02" y="12.7" length="short" swaplevel="1" rot="R180"/>
<pin name="PD2(INT0/PCINT18)" x="33.02" y="15.24" length="short" swaplevel="1" rot="R180"/>
<pin name="PD1(TXD/PCINT17)" x="33.02" y="17.78" length="short" swaplevel="1" rot="R180"/>
<pin name="PD0(RXD/PCINT16)" x="33.02" y="20.32" length="short" swaplevel="1" rot="R180"/>
<pin name="PC5(ADC5/SCL/PCINT13)" x="-33.02" y="-15.24" length="short" swaplevel="1"/>
<pin name="PC4(ADC4/SDA/PCINT12)" x="-33.02" y="-12.7" length="short" swaplevel="1"/>
<pin name="PC3(ADC3/PCINT11)" x="-33.02" y="-10.16" length="short" swaplevel="1"/>
<pin name="PC2(ADC2/PCINT10)" x="-33.02" y="-7.62" length="short" swaplevel="1"/>
<pin name="PC1(ADC1/PCINT9)" x="-33.02" y="-5.08" length="short" swaplevel="1"/>
<pin name="PC0(ADC0/PCINT8)" x="-33.02" y="-2.54" length="short" swaplevel="1"/>
<pin name="PC6(!RESET!/PCINT14)" x="-33.02" y="-17.78" length="short" swaplevel="1"/>
<text x="27.94" y="-15.875" size="2.54" layer="95" ratio="12" rot="R180">&gt;NAME</text>
<text x="27.94" y="-19.05" size="2.54" layer="96" ratio="12" rot="R180">&gt;VALUE</text>
</symbol>
<symbol name="!UCC+GND">
<text x="0.635" y="-2.54" size="1.27" layer="95" rot="R90">&gt;NAME</text>
<text x="2.2225" y="-4.7625" size="1.27" layer="95" rot="R90">GND</text>
<text x="0.9525" y="4.7625" size="1.27" layer="95" rot="R270">UCC</text>
<pin name="GND" x="0" y="-5.08" visible="pad" length="short" direction="pwr" rot="R90"/>
<pin name="UCC" x="0" y="5.08" visible="pad" length="short" direction="pwr" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ATMEGA48/88/168/328-PU(DIP28)" prefix="IC" uservalue="yes">
<gates>
<gate name="IC" symbol="ATMEGA48/88/168/328-PU(DIP28)" x="0" y="0"/>
<gate name="PWR" symbol="!UCC+GND" x="0" y="33.02" addlevel="request"/>
</gates>
<devices>
<device name="PU" package="DIL28">
<connects>
<connect gate="IC" pin="AREF" pad="21"/>
<connect gate="IC" pin="AVCC" pad="20"/>
<connect gate="IC" pin="PB0(ICP1/CLKO/PCINT0)" pad="14"/>
<connect gate="IC" pin="PB1(OC1A/PCINT1)" pad="15"/>
<connect gate="IC" pin="PB2(SS/OC1B/PCINT2)" pad="16"/>
<connect gate="IC" pin="PB3(MOSI/OC2A/PCINT3)" pad="17"/>
<connect gate="IC" pin="PB4(MISO/PCINT4)" pad="18"/>
<connect gate="IC" pin="PB5(SCK/PCINT5)" pad="19"/>
<connect gate="IC" pin="PB6(XTAL1/TOSC1/PCINT6)" pad="9"/>
<connect gate="IC" pin="PB7(XTAL2/TOSC2/PCINT7)" pad="10"/>
<connect gate="IC" pin="PC0(ADC0/PCINT8)" pad="23"/>
<connect gate="IC" pin="PC1(ADC1/PCINT9)" pad="24"/>
<connect gate="IC" pin="PC2(ADC2/PCINT10)" pad="25"/>
<connect gate="IC" pin="PC3(ADC3/PCINT11)" pad="26"/>
<connect gate="IC" pin="PC4(ADC4/SDA/PCINT12)" pad="27"/>
<connect gate="IC" pin="PC5(ADC5/SCL/PCINT13)" pad="28"/>
<connect gate="IC" pin="PC6(!RESET!/PCINT14)" pad="1"/>
<connect gate="IC" pin="PD0(RXD/PCINT16)" pad="2"/>
<connect gate="IC" pin="PD1(TXD/PCINT17)" pad="3"/>
<connect gate="IC" pin="PD2(INT0/PCINT18)" pad="4"/>
<connect gate="IC" pin="PD3(INT1/OC2B/PCINT19)" pad="5"/>
<connect gate="IC" pin="PD4(T0/XCK/PCINT20)" pad="6"/>
<connect gate="IC" pin="PD5(T1/OC0B/PCINT21)" pad="11"/>
<connect gate="IC" pin="PD6(AIN0/OC0A/PCINT22)" pad="12"/>
<connect gate="IC" pin="PD7(AIN1/PCINT23)" pad="13"/>
<connect gate="PWR" pin="GND" pad="8 22"/>
<connect gate="PWR" pin="UCC" pad="7"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="display-lcd" urn="urn:adsk.eagle:library:214">
<description>&lt;b&gt;Hitachi, Data Modul, Tuxgraphics - LCD Displays&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="TUXGR_16X2_R2" urn="urn:adsk.eagle:footprint:13120/1" library_version="2">
<description>&lt;b&gt;Tuxgraphics LCD display 16x2 characters&lt;/b&gt; reflective, without background light&lt;p&gt;
Source: tuxgr_12x2_r2.pdf</description>
<wire x1="-39.9" y1="17.9" x2="39.9" y2="17.9" width="0.2032" layer="21"/>
<wire x1="39.9" y1="17.9" x2="39.9" y2="-17.9" width="0.2032" layer="21"/>
<wire x1="39.9" y1="-17.9" x2="-39.9" y2="-17.9" width="0.2032" layer="21"/>
<wire x1="-39.9" y1="-17.9" x2="-39.9" y2="17.9" width="0.2032" layer="21"/>
<wire x1="-36.75" y1="12" x2="36.75" y2="12" width="0.2032" layer="21"/>
<wire x1="36.75" y1="12" x2="36.75" y2="-12.6" width="0.2032" layer="21"/>
<wire x1="36.75" y1="-12.6" x2="-36.75" y2="-12.6" width="0.2032" layer="21"/>
<wire x1="-36.75" y1="-12.6" x2="-36.75" y2="12" width="0.2032" layer="21"/>
<wire x1="-32.15" y1="6.5" x2="32.15" y2="6.5" width="0.2032" layer="21"/>
<wire x1="32.15" y1="6.5" x2="32.15" y2="-7.1" width="0.2032" layer="21"/>
<wire x1="32.15" y1="-7.1" x2="-32.15" y2="-7.1" width="0.2032" layer="21"/>
<wire x1="-32.15" y1="-7.1" x2="-32.15" y2="6.5" width="0.2032" layer="21"/>
<pad name="1" x="-32" y="15.5" drill="1" diameter="1.6764"/>
<pad name="2" x="-29.46" y="15.5" drill="1" diameter="1.6764"/>
<pad name="3" x="-26.92" y="15.5" drill="1" diameter="1.6764"/>
<pad name="4" x="-24.38" y="15.5" drill="1" diameter="1.6764"/>
<pad name="5" x="-21.84" y="15.5" drill="1" diameter="1.6764"/>
<pad name="6" x="-19.3" y="15.5" drill="1" diameter="1.6764"/>
<pad name="7" x="-16.76" y="15.5" drill="1" diameter="1.6764"/>
<pad name="8" x="-14.22" y="15.5" drill="1" diameter="1.6764"/>
<pad name="9" x="-11.68" y="15.5" drill="1" diameter="1.6764"/>
<pad name="10" x="-9.14" y="15.5" drill="1" diameter="1.6764"/>
<pad name="11" x="-6.6" y="15.5" drill="1" diameter="1.6764"/>
<pad name="12" x="-4.06" y="15.5" drill="1" diameter="1.6764"/>
<pad name="13" x="-1.52" y="15.5" drill="1" diameter="1.6764"/>
<pad name="14" x="1.02" y="15.5" drill="1" diameter="1.6764"/>
<pad name="15" x="3.56" y="15.5" drill="1" diameter="1.6764"/>
<pad name="16" x="6.1" y="15.5" drill="1" diameter="1.6764"/>
<text x="-38.1" y="18.415" size="1.27" layer="25">&gt;NAME</text>
<text x="0.635" y="18.415" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-28.85" y1="0.1" x2="-25.9" y2="4.45" layer="21"/>
<rectangle x1="-28.85" y1="-5.05" x2="-25.9" y2="-0.7" layer="21"/>
<rectangle x1="-25.2" y1="0.1" x2="-22.25" y2="4.45" layer="21"/>
<rectangle x1="-25.2" y1="-5.05" x2="-22.25" y2="-0.7" layer="21"/>
<rectangle x1="-21.55" y1="0.1" x2="-18.6" y2="4.45" layer="21"/>
<rectangle x1="-21.55" y1="-5.05" x2="-18.6" y2="-0.7" layer="21"/>
<rectangle x1="-17.9" y1="0.1" x2="-14.95" y2="4.45" layer="21"/>
<rectangle x1="-17.9" y1="-5.05" x2="-14.95" y2="-0.7" layer="21"/>
<rectangle x1="-14.25" y1="0.1" x2="-11.3" y2="4.45" layer="21"/>
<rectangle x1="-14.25" y1="-5.05" x2="-11.3" y2="-0.7" layer="21"/>
<rectangle x1="-10.6" y1="0.1" x2="-7.65" y2="4.45" layer="21"/>
<rectangle x1="-10.6" y1="-5.05" x2="-7.65" y2="-0.7" layer="21"/>
<rectangle x1="-6.95" y1="0.1" x2="-4" y2="4.45" layer="21"/>
<rectangle x1="-6.95" y1="-5.05" x2="-4" y2="-0.7" layer="21"/>
<rectangle x1="-3.3" y1="0.1" x2="-0.35" y2="4.45" layer="21"/>
<rectangle x1="-3.3" y1="-5.05" x2="-0.35" y2="-0.7" layer="21"/>
<rectangle x1="0.35" y1="0.1" x2="3.3" y2="4.45" layer="21"/>
<rectangle x1="0.35" y1="-5.05" x2="3.3" y2="-0.7" layer="21"/>
<rectangle x1="4" y1="0.1" x2="6.95" y2="4.45" layer="21"/>
<rectangle x1="4" y1="-5.05" x2="6.95" y2="-0.7" layer="21"/>
<rectangle x1="7.65" y1="0.1" x2="10.6" y2="4.45" layer="21"/>
<rectangle x1="7.65" y1="-5.05" x2="10.6" y2="-0.7" layer="21"/>
<rectangle x1="11.3" y1="0.1" x2="14.25" y2="4.45" layer="21"/>
<rectangle x1="11.3" y1="-5.05" x2="14.25" y2="-0.7" layer="21"/>
<rectangle x1="14.95" y1="0.1" x2="17.9" y2="4.45" layer="21"/>
<rectangle x1="14.95" y1="-5.05" x2="17.9" y2="-0.7" layer="21"/>
<rectangle x1="18.6" y1="0.1" x2="21.55" y2="4.45" layer="21"/>
<rectangle x1="18.6" y1="-5.05" x2="21.55" y2="-0.7" layer="21"/>
<rectangle x1="22.25" y1="0.1" x2="25.2" y2="4.45" layer="21"/>
<rectangle x1="22.25" y1="-5.05" x2="25.2" y2="-0.7" layer="21"/>
<rectangle x1="25.9" y1="0.1" x2="28.85" y2="4.45" layer="21"/>
<rectangle x1="25.9" y1="-5.05" x2="28.85" y2="-0.7" layer="21"/>
<hole x="-37.5" y="-15.5" drill="2.5"/>
<hole x="37.5" y="-15.5" drill="2.5"/>
<hole x="-37.5" y="15.5" drill="2.5"/>
<hole x="37.5" y="15.5" drill="2.5"/>
</package>
</packages>
<packages3d>
<package3d name="TUXGR_16X2_R2" urn="urn:adsk.eagle:package:13139/1" type="box" library_version="2">
<description>Tuxgraphics LCD display 16x2 characters reflective, without background light
Source: tuxgr_12x2_r2.pdf</description>
<packageinstances>
<packageinstance name="TUXGR_16X2_R2"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="TUXGR_16X2_R2" urn="urn:adsk.eagle:symbol:13119/1" library_version="2">
<wire x1="-20.32" y1="-7.62" x2="22.86" y2="-7.62" width="0.2032" layer="94"/>
<wire x1="22.86" y1="-7.62" x2="22.86" y2="12.7" width="0.2032" layer="94"/>
<wire x1="22.86" y1="12.7" x2="-20.32" y2="12.7" width="0.2032" layer="94"/>
<wire x1="-20.32" y1="12.7" x2="-20.32" y2="-7.62" width="0.2032" layer="94"/>
<text x="-10.16" y="10.668" size="1.524" layer="94">LCD DISPLAY 16x2</text>
<text x="-20.32" y="13.97" size="1.778" layer="95">&gt;NAME</text>
<text x="-1.27" y="13.97" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="-19.05" y1="6.604" x2="-16.764" y2="10.16" layer="94"/>
<rectangle x1="-19.05" y1="2.54" x2="-16.764" y2="6.096" layer="94"/>
<rectangle x1="-16.51" y1="6.604" x2="-14.224" y2="10.16" layer="94"/>
<rectangle x1="-16.51" y1="2.54" x2="-14.224" y2="6.096" layer="94"/>
<rectangle x1="-13.97" y1="6.604" x2="-11.684" y2="10.16" layer="94"/>
<rectangle x1="-13.97" y1="2.54" x2="-11.684" y2="6.096" layer="94"/>
<rectangle x1="-11.43" y1="6.604" x2="-9.144" y2="10.16" layer="94"/>
<rectangle x1="-11.43" y1="2.54" x2="-9.144" y2="6.096" layer="94"/>
<rectangle x1="-8.89" y1="6.604" x2="-6.604" y2="10.16" layer="94"/>
<rectangle x1="-8.89" y1="2.54" x2="-6.604" y2="6.096" layer="94"/>
<rectangle x1="-6.35" y1="6.604" x2="-4.064" y2="10.16" layer="94"/>
<rectangle x1="-6.35" y1="2.54" x2="-4.064" y2="6.096" layer="94"/>
<rectangle x1="-3.81" y1="6.604" x2="-1.524" y2="10.16" layer="94"/>
<rectangle x1="-3.81" y1="2.54" x2="-1.524" y2="6.096" layer="94"/>
<rectangle x1="-1.27" y1="6.604" x2="1.016" y2="10.16" layer="94"/>
<rectangle x1="-1.27" y1="2.54" x2="1.016" y2="6.096" layer="94"/>
<rectangle x1="1.27" y1="6.604" x2="3.556" y2="10.16" layer="94"/>
<rectangle x1="1.27" y1="2.54" x2="3.556" y2="6.096" layer="94"/>
<rectangle x1="3.81" y1="6.604" x2="6.096" y2="10.16" layer="94"/>
<rectangle x1="3.81" y1="2.54" x2="6.096" y2="6.096" layer="94"/>
<rectangle x1="6.35" y1="6.604" x2="8.636" y2="10.16" layer="94"/>
<rectangle x1="6.35" y1="2.54" x2="8.636" y2="6.096" layer="94"/>
<rectangle x1="8.89" y1="6.604" x2="11.176" y2="10.16" layer="94"/>
<rectangle x1="8.89" y1="2.54" x2="11.176" y2="6.096" layer="94"/>
<rectangle x1="11.43" y1="6.604" x2="13.716" y2="10.16" layer="94"/>
<rectangle x1="11.43" y1="2.54" x2="13.716" y2="6.096" layer="94"/>
<rectangle x1="13.97" y1="6.604" x2="16.256" y2="10.16" layer="94"/>
<rectangle x1="13.97" y1="2.54" x2="16.256" y2="6.096" layer="94"/>
<rectangle x1="16.51" y1="6.604" x2="18.796" y2="10.16" layer="94"/>
<rectangle x1="16.51" y1="2.54" x2="18.796" y2="6.096" layer="94"/>
<rectangle x1="19.05" y1="6.604" x2="21.336" y2="10.16" layer="94"/>
<rectangle x1="19.05" y1="2.54" x2="21.336" y2="6.096" layer="94"/>
<pin name="GND" x="-17.78" y="-10.16" length="short" direction="pwr" rot="R90"/>
<pin name="VCC" x="-15.24" y="-10.16" length="short" direction="pwr" rot="R90"/>
<pin name="CONTR" x="-12.7" y="-10.16" length="short" direction="in" rot="R90"/>
<pin name="RS" x="-10.16" y="-10.16" length="short" direction="in" rot="R90"/>
<pin name="R/W" x="-7.62" y="-10.16" length="short" direction="in" rot="R90"/>
<pin name="E" x="-5.08" y="-10.16" length="short" direction="in" rot="R90"/>
<pin name="D0" x="-2.54" y="-10.16" length="short" direction="in" rot="R90"/>
<pin name="D1" x="0" y="-10.16" length="short" direction="in" rot="R90"/>
<pin name="D2" x="2.54" y="-10.16" length="short" direction="in" rot="R90"/>
<pin name="D3" x="5.08" y="-10.16" length="short" direction="in" rot="R90"/>
<pin name="D4" x="7.62" y="-10.16" length="short" direction="in" rot="R90"/>
<pin name="D5" x="10.16" y="-10.16" length="short" direction="in" rot="R90"/>
<pin name="D6" x="12.7" y="-10.16" length="short" direction="in" rot="R90"/>
<pin name="D7" x="15.24" y="-10.16" length="short" direction="in" rot="R90"/>
<pin name="NC@1" x="17.78" y="-10.16" length="short" direction="nc" rot="R90"/>
<pin name="NC@2" x="20.32" y="-10.16" length="short" direction="nc" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="TUXGR_16X2_R2" urn="urn:adsk.eagle:component:13152/2" prefix="DIS" library_version="2">
<description>&lt;b&gt;Tuxgraphics LCD display 16x2 characters&lt;/b&gt; reflective, without background light&lt;p&gt;
Source: tuxgr_12x2_r2.pdf</description>
<gates>
<gate name="G$1" symbol="TUXGR_16X2_R2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="TUXGR_16X2_R2">
<connects>
<connect gate="G$1" pin="CONTR" pad="3"/>
<connect gate="G$1" pin="D0" pad="7"/>
<connect gate="G$1" pin="D1" pad="8"/>
<connect gate="G$1" pin="D2" pad="9"/>
<connect gate="G$1" pin="D3" pad="10"/>
<connect gate="G$1" pin="D4" pad="11"/>
<connect gate="G$1" pin="D5" pad="12"/>
<connect gate="G$1" pin="D6" pad="13"/>
<connect gate="G$1" pin="D7" pad="14"/>
<connect gate="G$1" pin="E" pad="6"/>
<connect gate="G$1" pin="GND" pad="1"/>
<connect gate="G$1" pin="NC@1" pad="15"/>
<connect gate="G$1" pin="NC@2" pad="16"/>
<connect gate="G$1" pin="R/W" pad="5"/>
<connect gate="G$1" pin="RS" pad="4"/>
<connect gate="G$1" pin="VCC" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:13139/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="5" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="pinhead" urn="urn:adsk.eagle:library:325">
<description>&lt;b&gt;Pin Header Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="1X02" urn="urn:adsk.eagle:footprint:22309/1" library_version="4">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<pad name="1" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-2.6162" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
</package>
<package name="1X02/90" urn="urn:adsk.eagle:footprint:22310/1" library_version="4">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-2.54" y1="-1.905" x2="0" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.905" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="6.985" x2="-1.27" y2="1.27" width="0.762" layer="21"/>
<wire x1="0" y1="-1.905" x2="2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="6.985" x2="1.27" y2="1.27" width="0.762" layer="21"/>
<pad name="1" x="-1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<text x="-3.175" y="-3.81" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="4.445" y="-3.81" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-1.651" y1="0.635" x2="-0.889" y2="1.143" layer="21"/>
<rectangle x1="0.889" y1="0.635" x2="1.651" y2="1.143" layer="21"/>
<rectangle x1="-1.651" y1="-2.921" x2="-0.889" y2="-1.905" layer="21"/>
<rectangle x1="0.889" y1="-2.921" x2="1.651" y2="-1.905" layer="21"/>
</package>
</packages>
<packages3d>
<package3d name="1X02" urn="urn:adsk.eagle:package:22435/2" type="model" library_version="4">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="1X02"/>
</packageinstances>
</package3d>
<package3d name="1X02/90" urn="urn:adsk.eagle:package:22437/2" type="model" library_version="4">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="1X02/90"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="PINHD2" urn="urn:adsk.eagle:symbol:22308/1" library_version="4">
<wire x1="-6.35" y1="-2.54" x2="1.27" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="1.27" y2="5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="5.08" x2="-6.35" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="5.08" x2="-6.35" y2="-2.54" width="0.4064" layer="94"/>
<text x="-6.35" y="5.715" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PINHD-1X2" urn="urn:adsk.eagle:component:22516/4" prefix="JP" uservalue="yes" library_version="4">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="PINHD2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1X02">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22435/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="98" constant="no"/>
</technology>
</technologies>
</device>
<device name="/90" package="1X02/90">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22437/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="24" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U$1" library="diy-modules" deviceset="ULTRASONIC-HC-SR04" device=""/>
<part name="IC1" library="atmel_tiny24-44-84tiny48-88mega48-88-168-328" deviceset="ATMEGA48/88/168/328-PU(DIP28)" device="PU"/>
<part name="U$7" library="diy-modules" deviceset="IR-RECEIVER#NC" device=""/>
<part name="DIS1" library="display-lcd" library_urn="urn:adsk.eagle:library:214" deviceset="TUXGR_16X2_R2" device="" package3d_urn="urn:adsk.eagle:package:13139/1"/>
<part name="JP1" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X2" device="" package3d_urn="urn:adsk.eagle:package:22435/2"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U$1" gate="G$1" x="-157.48" y="86.36" smashed="yes">
<attribute name="NAME" x="-180.34" y="101.6" size="1.778" layer="95"/>
<attribute name="VALUE" x="-180.34" y="99.06" size="1.778" layer="95"/>
</instance>
<instance part="IC1" gate="IC" x="-76.2" y="33.02" smashed="yes">
<attribute name="NAME" x="-48.26" y="17.145" size="2.54" layer="95" ratio="12" rot="R180"/>
<attribute name="VALUE" x="-48.26" y="13.97" size="2.54" layer="96" ratio="12" rot="R180"/>
</instance>
<instance part="U$7" gate="G$1" x="-7.62" y="93.98" smashed="yes">
<attribute name="NAME" x="-20.32" y="109.22" size="1.778" layer="95"/>
<attribute name="VALUE" x="-20.32" y="106.68" size="1.778" layer="96"/>
</instance>
<instance part="DIS1" gate="G$1" x="7.62" y="43.18" smashed="yes">
<attribute name="NAME" x="-12.7" y="57.15" size="1.778" layer="95"/>
<attribute name="VALUE" x="6.35" y="57.15" size="1.778" layer="96"/>
</instance>
<instance part="JP1" gate="G$1" x="-208.28" y="40.64" smashed="yes">
<attribute name="NAME" x="-214.63" y="46.355" size="1.778" layer="95"/>
<attribute name="VALUE" x="-214.63" y="35.56" size="1.778" layer="96"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="IC1" gate="IC" pin="PB1(OC1A/PCINT1)"/>
<pinref part="U$1" gate="G$1" pin="TRIG"/>
<wire x1="-109.22" y1="50.8" x2="-157.48" y2="50.8" width="0.1524" layer="91"/>
<wire x1="-157.48" y1="50.8" x2="-157.48" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="ECHO"/>
<pinref part="IC1" gate="IC" pin="PB0(ICP1/CLKO/PCINT0)"/>
<wire x1="-154.94" y1="71.12" x2="-154.94" y2="53.34" width="0.1524" layer="91"/>
<wire x1="-154.94" y1="53.34" x2="-109.22" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="IC1" gate="IC" pin="PD4(T0/XCK/PCINT20)"/>
<wire x1="-43.18" y1="43.18" x2="-22.86" y2="43.18" width="0.1524" layer="91"/>
<wire x1="-22.86" y1="43.18" x2="-22.86" y2="15.24" width="0.1524" layer="91"/>
<wire x1="-22.86" y1="15.24" x2="15.24" y2="15.24" width="0.1524" layer="91"/>
<pinref part="DIS1" gate="G$1" pin="D4"/>
<wire x1="15.24" y1="15.24" x2="15.24" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="IC1" gate="IC" pin="PD5(T1/OC0B/PCINT21)"/>
<wire x1="-43.18" y1="40.64" x2="-25.4" y2="40.64" width="0.1524" layer="91"/>
<wire x1="-25.4" y1="40.64" x2="-25.4" y2="12.7" width="0.1524" layer="91"/>
<wire x1="-25.4" y1="12.7" x2="17.78" y2="12.7" width="0.1524" layer="91"/>
<pinref part="DIS1" gate="G$1" pin="D5"/>
<wire x1="17.78" y1="12.7" x2="17.78" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="IC1" gate="IC" pin="PD6(AIN0/OC0A/PCINT22)"/>
<wire x1="-43.18" y1="38.1" x2="-27.94" y2="38.1" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="38.1" x2="-27.94" y2="10.16" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="10.16" x2="20.32" y2="10.16" width="0.1524" layer="91"/>
<pinref part="DIS1" gate="G$1" pin="D6"/>
<wire x1="20.32" y1="10.16" x2="20.32" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="DIS1" gate="G$1" pin="D7"/>
<wire x1="22.86" y1="33.02" x2="22.86" y2="7.62" width="0.1524" layer="91"/>
<wire x1="22.86" y1="7.62" x2="-30.48" y2="7.62" width="0.1524" layer="91"/>
<pinref part="IC1" gate="IC" pin="PD7(AIN1/PCINT23)"/>
<wire x1="-30.48" y1="7.62" x2="-30.48" y2="35.56" width="0.1524" layer="91"/>
<wire x1="-30.48" y1="35.56" x2="-43.18" y2="35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="IC1" gate="IC" pin="PD0(RXD/PCINT16)"/>
<wire x1="-43.18" y1="53.34" x2="-15.24" y2="53.34" width="0.1524" layer="91"/>
<wire x1="-15.24" y1="53.34" x2="-15.24" y2="30.48" width="0.1524" layer="91"/>
<wire x1="-15.24" y1="30.48" x2="-2.54" y2="30.48" width="0.1524" layer="91"/>
<pinref part="DIS1" gate="G$1" pin="RS"/>
<wire x1="-2.54" y1="30.48" x2="-2.54" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="U$7" gate="G$1" pin="IN.1"/>
<wire x1="-25.4" y1="91.44" x2="-33.02" y2="91.44" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="91.44" x2="-33.02" y2="50.8" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="50.8" x2="-38.1" y2="50.8" width="0.1524" layer="91"/>
<wire x1="-38.1" y1="50.8" x2="-38.1" y2="48.26" width="0.1524" layer="91"/>
<pinref part="IC1" gate="IC" pin="PD2(INT0/PCINT18)"/>
<wire x1="-38.1" y1="48.26" x2="-43.18" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<wire x1="2.54" y1="27.94" x2="-20.32" y2="27.94" width="0.1524" layer="91"/>
<wire x1="-20.32" y1="27.94" x2="-20.32" y2="45.72" width="0.1524" layer="91"/>
<pinref part="IC1" gate="IC" pin="PD3(INT1/OC2B/PCINT19)"/>
<wire x1="-20.32" y1="45.72" x2="-43.18" y2="45.72" width="0.1524" layer="91"/>
<pinref part="DIS1" gate="G$1" pin="E"/>
<wire x1="2.54" y1="33.02" x2="2.54" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="JP1" gate="G$1" pin="2"/>
<wire x1="-210.82" y1="40.64" x2="-210.82" y2="5.08" width="0.1524" layer="91"/>
<wire x1="-210.82" y1="5.08" x2="-152.4" y2="5.08" width="0.1524" layer="91"/>
<wire x1="-152.4" y1="5.08" x2="-35.56" y2="5.08" width="0.1524" layer="91"/>
<wire x1="-35.56" y1="5.08" x2="-35.56" y2="20.32" width="0.1524" layer="91"/>
<pinref part="IC1" gate="IC" pin="AREF"/>
<wire x1="-35.56" y1="20.32" x2="-43.18" y2="20.32" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="GND"/>
<wire x1="-152.4" y1="71.12" x2="-152.4" y2="66.04" width="0.1524" layer="91"/>
<junction x="-152.4" y="5.08"/>
<pinref part="U$7" gate="G$1" pin="GND.1"/>
<wire x1="-152.4" y1="66.04" x2="-152.4" y2="5.08" width="0.1524" layer="91"/>
<wire x1="-25.4" y1="96.52" x2="-66.04" y2="96.52" width="0.1524" layer="91"/>
<wire x1="-66.04" y1="96.52" x2="-66.04" y2="66.04" width="0.1524" layer="91"/>
<wire x1="-66.04" y1="66.04" x2="-152.4" y2="66.04" width="0.1524" layer="91"/>
<junction x="-152.4" y="66.04"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="IC1" gate="IC" pin="AVCC"/>
<wire x1="-43.18" y1="22.86" x2="-33.02" y2="22.86" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="22.86" x2="-33.02" y2="2.54" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="2.54" x2="-218.44" y2="2.54" width="0.1524" layer="91"/>
<wire x1="-218.44" y1="2.54" x2="-218.44" y2="30.48" width="0.1524" layer="91"/>
<pinref part="JP1" gate="G$1" pin="1"/>
<wire x1="-218.44" y1="30.48" x2="-218.44" y2="43.18" width="0.1524" layer="91"/>
<wire x1="-218.44" y1="43.18" x2="-210.82" y2="43.18" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="VCC"/>
<wire x1="-160.02" y1="71.12" x2="-226.06" y2="71.12" width="0.1524" layer="91"/>
<wire x1="-226.06" y1="71.12" x2="-228.6" y2="71.12" width="0.1524" layer="91"/>
<wire x1="-228.6" y1="71.12" x2="-228.6" y2="30.48" width="0.1524" layer="91"/>
<wire x1="-228.6" y1="30.48" x2="-218.44" y2="30.48" width="0.1524" layer="91"/>
<junction x="-218.44" y="30.48"/>
<pinref part="U$7" gate="G$1" pin="VCC.1"/>
<wire x1="-25.4" y1="101.6" x2="-226.06" y2="101.6" width="0.1524" layer="91"/>
<wire x1="-226.06" y1="101.6" x2="-226.06" y2="71.12" width="0.1524" layer="91"/>
<junction x="-226.06" y="71.12"/>
<pinref part="DIS1" gate="G$1" pin="VCC"/>
<wire x1="-7.62" y1="33.02" x2="-7.62" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="-12.7" x2="-228.6" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="-228.6" y1="-12.7" x2="-228.6" y2="30.48" width="0.1524" layer="91"/>
<junction x="-228.6" y="30.48"/>
<pinref part="DIS1" gate="G$1" pin="GND"/>
<wire x1="-10.16" y1="33.02" x2="-10.16" y2="22.86" width="0.1524" layer="91"/>
<wire x1="-10.16" y1="22.86" x2="-10.16" y2="2.54" width="0.1524" layer="91"/>
<wire x1="-10.16" y1="2.54" x2="-33.02" y2="2.54" width="0.1524" layer="91"/>
<junction x="-33.02" y="2.54"/>
<pinref part="DIS1" gate="G$1" pin="R/W"/>
<wire x1="0" y1="33.02" x2="0" y2="22.86" width="0.1524" layer="91"/>
<wire x1="0" y1="22.86" x2="-10.16" y2="22.86" width="0.1524" layer="91"/>
<junction x="-10.16" y="22.86"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
