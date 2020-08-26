BEGIN TamokoJ
BEGIN TamokoP

CHAIN
IF~Global("TamokoJoin","GLOBAL",1)~THEN TamokoP GoOnce
@0
DO~SetGlobal("TamokoJoin","GLOBAL",0) EscapeAreaDestroy(60)~EXIT

CHAIN
IF~Global("Swo_TamokInt","Global",1)~THEN TamokoJ Underc1
@1
DO~SetGlobal("Swo_TamokInt","Global",2)~
=@2
END
++@3+ Underc2
++@4+ Underc2
++@5+ Underc2

CHAIN
IF~~THEN TamokoJ Underc2
@6
=@7
END
++@8+ Underc3
++@9+ Underc3
++@10+ Underc3

CHAIN
IF~~THEN TamokoJ Underc3
@11EXIT

CHAIN
IF~Global("Swo_TamokInt","Global",3)~THEN TamokoJ Korla1
@12
DO~SetGlobal("Swo_TamokInt","Global",4)~
=@13
END
++@14+ Korla2
++@15+ Korla2

CHAIN
IF~~THEN TamokoJ Korla2
@16
=@17
END
++@18+ Korla3
++@19+ Korla3
++@20+ Korla3

CHAIN
IF~~THEN TamokoJ Korla3
@21
=@22
END
++@23+ Korla4
IF~InParty("CVSandr")~THEN REPLY@24+ Korla5
++@25+ Korla4

CHAIN
IF~~THEN TamokoJ Korla4
@26EXIT

CHAIN
IF~~THEN TamokoJ Korla5
@27EXIT

CHAIN
IF~Global("Swo_Sareroom","BD0130",1) ~ THEN TamokoJ Korsec1
@28
DO~SetGlobal("Swo_Sareroom","BD0130",2)~
END
++@29+ Korsec2
++@30+ Korsec2

CHAIN
IF~~THEN TamokoJ Korsec2
@31EXIT

CHAIN
IF~Global("Swo_TamokInt","Global",5)~THEN TamokoJ Palace1
@32
DO~SetGlobal("Swo_TamokInt","Global",6)~
END
++@33+ Palace2
++@34+ Palace2

CHAIN
IF~~THEN TamokoJ Palace2
@35
=@36
=@37
END
++@38+ Palace3
++@39+ Palace3
++@40+ Palace3

CHAIN
IF~~THEN TamokoJ Palace3
@41
EXIT

CHAIN
IF~Global("Swo_SkieReact","Locals",2)~THEN TamokoJ Skie1
@42
DO~SetGlobal("Swo_SkieReact","Locals",3)~
END
++@43+ Skie2
++@44+ Skie2
++@45+ Skie2

CHAIN
IF~~THEN TamokoJ Skie2
@46
END
++@47+ Skie3

CHAIN
IF~~THEN TamokoJ Skie3
@48
=@49
END
++@50+ Skie4
++@51+ Skie4

CHAIN
IF~~THEN TamokoJ Skie4
@52
=@53EXIT

CHAIN
IF~Global("Swo_SkieReact","Locals",4) ~THEN TamokoJ Gorion1
@54
DO~SetGlobal("Swo_SkieReact","Locals",5) ~
END
++@55+ Gorion1a
++@56+ Gorion1b
++@57+ Gorion1c

CHAIN
IF~~THEN TamokoJ Gorion1a
@58EXTERN TamokoJ Gorion2

CHAIN
IF~~THEN TamokoJ Gorion1b
@59EXTERN TamokoJ Gorion2

CHAIN
IF~~THEN TamokoJ Gorion1c
@60EXTERN TamokoJ Gorion2

CHAIN
IF~~THEN TamokoJ Gorion2
@61  
END
++@62+ Gorion3
++@63+ Gorion3
++@64+ Gorion3

CHAIN
IF~~THEN TamokoJ Gorion3
@65EXIT

CHAIN
IF~Global("Swo_TamokInt","Global",7)~THEN TamokoJ Swordire1
@66
DO~SetGlobal("Swo_TamokInt","Global",8)~
END
++@67+ Swordire2
++@68+ Swordire3
++@69+ Swordire2 

CHAIN
IF~~THEN TamokoJ Swordire2
@70
END 
++@68+ Swordire3
++@71+ Swordire4

CHAIN
IF~~THEN TamokoJ Swordire3
@72
END
++@73+ Swordire4
++@74+ Swordire4

CHAIN
IF~~THEN TamokoJ Swordire4
@75 EXIT

CHAIN
IF~ Global("Swo_Madele","Global",2)~THEN TamokoJ AfterMadel1
@76
DO~SetGlobal("Swo_Madele","Global",3)~
END
++@77+ AfterMadel2
++@78+ AfterMadel2
++@79+ AfterMadel2

CHAIN
IF~~THEN TamokoJ AfterMadel2
@80
END
++@81+ AfterMadel3
++@82+ AfterMadel3
++@83+ AfterMadel3
IF~!InParty("CVSandr")~THEN REPLY@84+ AfterMadel3

CHAIN
IF~~THEN TamokoJ AfterMadel3
@85EXIT

CHAIN 
IF ~ Global("Swo_camp","LOCALS",1)~THEN TamokoJ Campfire1
@86
DO~SetGlobal("Swo_camp","LOCALS",2)~
=@87
END
++@88+ Campfire2
++@89DO~StartMovie("Rest")~EXIT
++@90+ Campfire2

CHAIN
IF~~THEN TamokoJ Campfire2
@91
END
++@92+ Campfire3
++@93+ Campfire3

CHAIN
IF~~THEN TamokoJ Campfire3
@94
=@95
END
++@96+ Campfire4
++@97+ Campfire4

CHAIN
IF~~THEN TamokoJ Campfire4
@98
=@99
=@100DO~StartMovie("Rest")~EXIT

CHAIN
IF~Global("Swo_Desease","Locals",2)~ THEN TamokoJ Diseased
@101
DO~SetGlobal("Swo_Desease","Locals",3)~
=@102
=@103 DO~CreateVisualEffectObject("SPHOLY",Myself) ActionOverride(Player1,DisplayStringHead(Myself,@1007)) DropInventory() Wait(2)LeaveParty()ApplySpellRES("SPWI055",Myself) DestroySelf()~EXIT

CHAIN
IF~Global("Swo_InJail","Global",2)~THEN TamokoJ Jaildead
@104
DO~SetGlobal("Swo_InJail","Global",3)~
=@105
END
++@106+ Jaildead2
++@107+ Jaildead2
++@108+ Jaildead2

CHAIN
IF~~THEN TamokoJ Jaildead2
@109
=@110EXTERN TamokoJ Diseased
 