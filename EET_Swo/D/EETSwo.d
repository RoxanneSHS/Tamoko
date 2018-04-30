CHAIN
IF WEIGHT #-2~Global("SWO_Delay","Global",2)~THEN Belt SwoQuest1
~<CHARNAME>, your return indicates that you and your friends were successful.~
DO~SetGlobal("SWO_Delay","Global",3)~
==Liia IF~InParty("Imoen2")~THEN~It is good to see you are well, Imoen. We have to talk, you and me - but first let us hear about Sarevok.~
END
++~Sarevok is dead. But on my return to here I was ambushed by remaining followers who are still loyal to his cause.~+ SwoQuest2
++~Sarevok is history but he was not alone. Someone named Korlasz is still around with what remains of Sarevok's followers.~+ SwoQuest2

CHAIN
IF~~THEN Belt SwoQuest2
~We have gained some information about Sarevok's background - and yours - while you were in the Undercity.~
==Liia~Let us keep that Bhaalspawn issue aside for the moment, Belt. <CHARNAME> has proven <PRO_HISHER> alignment today.~
==Belt~Very well, Liia Jannath. But it is important that the remaining followers of your so-called brother be eliminated and peace be restored in this town. This Korlasz you heard about is the heiress of a wealthy family here in town and probably one of Sarevok's sponsors.~
==Liia~Our diviners say that her family possesses a large mausoleum right in the Undercity. She is down there, gathering the remaining forces of Sarevok's organisation.~
==Belt~<CHARNAME>, need I remind you that there will be no peace for you until you put an end to them? You were and still are their target. It is not just our interest but your very own to search for them.~DO~EscapeAreaDestroy(45)~
==Liia~You need to go once more to that Temple where your brother found his end.~DO~AddJournalEntry(@1004,QUEST)~
==Liia IF~InParty("Imoen2")~THEN~You follow your task, <CHARNAME>, but Imoen will stay with me for the time. Nothing to worry, my dear girl. It is a promise I gave to Gorion and Winthrop long ago.~
==Imoen2J IF~InParty("Imoen2")~THEN~You know Puffguts and ol' Gorion, lady?~
==Liia IF~InParty("Imoen2")~THEN~Yes, of course. I gave them a promise to take care of your further education when the time has come. Obviously that time is now. Come, my girl, it is the moment to think about yourself for a while, <CHARNAME> will be able to manage without you eventually. It will not be forever, be sure.~DO~EscapeAreaDestroy(45)~
==Imoen2J IF~InParty("Imoen2")~THEN~Ha, I doubt <PRO_HESHE> can, but hell...See you later, old buffleheads, I've got a career waitin'.~DO~LeaveParty() DestroySelf()~EXIT

CHAIN
IF WEIGHT #-4~AreaCheck("BG0200") Global("TamokoJoin","GLOBAL",0)~THEN Tamoko AfterSar1
~I see it already, you don't have to tell me...He did not listen, am I right, you had to do what had to be done, tell me.~
=~Sarevok is dead?~
END
++~Yes, he is, there was no way to reason with him.~+ AfterSar2
++~I was not the person who could have stopped him. I was just another one who stood in his way. It was him or me.~+ AfterSar2
++~Your heart told it to you but you didn't want to believe it, am I right? He would never have stood down.~+ AfterSar2

CHAIN
IF~~THEN Tamoko AfterSar2
~You are right, <CHARNAME>, I knew it would end this way. It was my foolish pride and blind love that made me hope for another ending.~
=~I should have accepted the fact that I lost him already long time ago...~
=~There is nothing for me to do any more for him. I need to forget him although I never will. But you need to go on and for you this journey has just begun. Will you do better with your heritage than he could? I would want to be witness and supporter for the one who withstands the blood. Let me follow you.~
END
++~Follow me like you followed him until you betrayed him. No, woman, get out of my sight while you still can.~DO~EscapeAreaDestroy(90)~EXIT
++~What happened was not your fault, you tried to stay loyal as long as you could. You are someone I would like to get to know better. Join me.~DO~JoinParty()~EXIT
++~First you betray Sarevok, now you try to poison me, snake. Are you in league with that Korlasz? I will not let you fool me, draw steel!~DO~Enemy()~EXIT

CHAIN
IF~Global("Swo_Ambush","BG0200",1)~THEN BDKorme1 GetSword
~There they are, this one there has the sword!~
DO~SetGlobal("Swo_Ambush","BG0200",2)~
==BDKorme2~Risk nothing, they killed Sarevok, we only need the weapon for Korlasz.~
==BDKorme1~Be quick before the guards get alarmed.~DO~ ClearAllActions() StartCutSceneMode() StartCutScene("SwoAmbS")~ EXIT

CHAIN
IF WEIGHT #-5~Global("Safloot","bg0123",1)~THEN Safana ComeLoot
~Darlings, you did it, really, you killed that bastard Sarevok. Too bad I missed the battle.~
DO~SetGlobal("Safloot","bg0123",2)~
=~Anyway, I'm just in time to help you carry all those valuables that must be stored inside. What you're waiting for?~
END
++~I was only waiting for your encouragement, what else.~EXIT
++~Forget it, greedy thief, what is inside there is mine, I earned it with my blood.~EXIT
++~Scared, aren't you? Let me hold your hand, Safana, and fear nothing. I cleared the temple already for us.~EXIT

I_C_T BDKorlas 5 Swo_KorlTamok
==TamokoJ IF~InParty("Tamoko")~THEN~Another fool who does not see when the dream is over. What do you think you still can gain?~
==BDKorlas IF~InParty("Tamoko")~THEN~I am impressed by your undying love for Sarevok, traitress! He did right to kick you from his bed. So it was you who led them here so fast.~
==TamokoJ IF~InParty("Tamoko")~THEN~It was not necessary to reveal anything to them, Korlasz, your plan was too clumsy and obvious. And don't call me a traitor when you sell Sarevok's sword the moment after he dropped it.~
==BDKorlas IF~InParty("Tamoko")~THEN~It was...necessary. We needed the support to leave this town. I will not discuss this further, not with you, Tamoko, not with you!~
==TamokoJ IF~InParty("Tamoko")~THEN~Who was the one to buy it?~
==BDKorlas IF~InParty("Tamoko")~THEN~I wouldn't tell you even if I knew. The deal was through middlemen. Good gold and no questions, we were not in a position to reject it.~END

 ADD_TRANS_TRIGGER Tamoko 23
~ReputationLT(Player1,9)~

EXTEND_BOTTOM Tamoko 23
IF~ReputationGT(Player1,8)~THEN REPLY~If I must kill you to pass, then so be it. I do so forgiving you your transgressions against me.~GOTO 21
IF~ReputationGT(Player1,8)~THEN REPLY~If you would throw your life away, then you are already dead. If that is your choice, then you do not need me.~GOTO 25
END 

I_C_T BDIreni 23 Swo_IrenTamok
==BDIreni IF~InParty("Tamoko")~THEN~(Points at Tamoko) Your Banite priestess could tell you of the power of dead gods, she followed one and then another who wanted to become heir. And now she follows the power she found in you.~
END

I_C_T BDMadele 2 Swo_Madele
==TamokoJ IF~InParty("Tamoko")~THEN~The faithful will be champions one day...~
==BDMadele IF~InParty("Tamoko")~THEN~The Black Hand is just sleeping like my Lord sleeps. They will sweep the usurpers away when the day to return will come.~
==TamokoJ IF~InParty("Tamoko")~THEN~They may or they may find their successors, who knows.~
==TamokoJ IF~InParty("Tamoko")~THEN~Bah, the Banites have reason to destroy Cyric as good as we have.~END