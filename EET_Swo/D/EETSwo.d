CHAIN
IF WEIGHT #-2~Global("SWO_Delay","Global",2)~THEN Belt SwoQuest1
@0
DO~SetGlobal("SWO_Delay","Global",3)~
==Liia IF~InParty("%IMOEN_DV%")~THEN@1
END
++@2+ SwoQuest2
++@3+ SwoQuest2

CHAIN
IF~~THEN Belt SwoQuest2
@4
==Liia@5
==Belt@6
==Liia@7
==Belt@8DO~EscapeAreaDestroy(45)~
==Liia@9DO~AddJournalEntry(@1004,QUEST)~
==Liia IF~InParty("%IMOEN_DV%")~THEN@10
==%IMOEN_JOINED% IF~InParty("%IMOEN_DV%")~THEN@11
==Liia IF~InParty("%IMOEN_DV%")~THEN@12DO~EscapeAreaDestroy(45)~
==%IMOEN_JOINED% IF~InParty("%IMOEN_DV%")~THEN@13DO~DestroyAllEquipment() Wait(1)LeaveParty() DestroySelf()~EXIT

CHAIN
IF WEIGHT #-4~AreaCheck("%NBaldursGate%") Global("TamokoJoin","GLOBAL",0)~THEN Tamoko AfterSar1
@14
=@15
END
++@16+ AfterSar2
++@17+ AfterSar2
++@18+ AfterSar2

CHAIN
IF~~THEN Tamoko AfterSar2
@19
=@20
=@21
END
++@22DO~EscapeAreaDestroy(90)~EXIT
++@23DO~JoinParty()~EXIT
++@24DO~Enemy()~EXIT

CHAIN
IF~Global("Swo_Ambush","%NBaldursGate%",1)~THEN BDKorme1 GetSword
@25
DO~SetGlobal("Swo_Ambush","%NBaldursGate%",2)~
==BDKorme2@26
==BDKorme1@27DO~ ClearAllActions() StartCutSceneMode() StartCutScene("SwoAmbS")~EXIT

CHAIN
IF WEIGHT #-5~Global("Safloot","%Undercity%",1)~THEN Safana ComeLoot
@28
DO~SetGlobal("Safloot","%Undercity%",2)~
=@29
END
++@30EXIT
++@31EXIT
++@32EXIT

I_C_T BDKorlas 5 Swo_KorlTamok
==TamokoJ IF~InParty("Tamoko")~THEN@33
==BDKorlas IF~InParty("Tamoko")~THEN@34
==TamokoJ IF~InParty("Tamoko")~THEN@35
==BDKorlas IF~InParty("Tamoko")~THEN@36
==TamokoJ IF~InParty("Tamoko")~THEN@37
==BDKorlas IF~InParty("Tamoko")~THEN@38END

 ADD_TRANS_TRIGGER Tamoko 23
~ReputationLT(Player1,9)~

EXTEND_BOTTOM Tamoko 23
IF~ReputationGT(Player1,8)~THEN REPLY@39GOTO 21
IF~ReputationGT(Player1,8)~THEN REPLY@40GOTO 25
END 

I_C_T BDIreni 23 Swo_IrenTamok
==BDIreni IF~InParty("Tamoko")~THEN@41
END

I_C_T BDMadele 2 Swo_Madele
==TamokoJ IF~InParty("Tamoko")~THEN@42
==BDMadele IF~InParty("Tamoko")~THEN@43
==TamokoJ IF~InParty("Tamoko")~THEN@44
==BDMadele IF~InParty("Tamoko")~THEN@45END