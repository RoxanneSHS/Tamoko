BEGIN TamokoJ
BEGIN TamokoP

CHAIN
IF~Global("TamokoJoin","GLOBAL",1)~THEN TamokoP GoOnce
~I will never again degrade myself to begging a Bhaalspawn to keep me. We go our separate ways.~
DO~SetGlobal("TamokoJoin","GLOBAL",0) EscapeAreaDestroy(60)~EXIT

CHAIN
IF~Global("Swo_TamokInt","Global",1)~THEN TamokoJ Underc1
~Last time I was here I was ready to end my life. This time I am here to start a new one, <CHARNAME>.~
DO~SetGlobal("Swo_TamokInt","Global",2)~
=~Things can change rather quick, just like new plants springing out of the ashes of a bushfire.~
END
++~Your moods swing rather wild, woman. From despair to rejoice within half a day.~+ Underc2
++~You are over the death of the man you claimed to have loved very fast. Not long ago you were ready to give your life for him.~+ Underc2
++~Such flowery words from the one who wanted to be the chosen of the new God of Murder? It's hard to believe you.~+ Underc2

CHAIN
IF~~THEN TamokoJ Underc2
~It took long, really much too long for me to awake. I was still clinging to Sarevok when everything was telling me already how useless my loyalty and persistence was. He was never to be what he wanted to be, he was just fuel for his father's return.~
=~You...you have seen what will happen, didn't you? You grew up in Candlekeep with the chanters singing Alaundo's words all the time. Are you warned? Are you strong enough?~
END
++~Stop it already. Come to your senses, Tamoko, you scare me.~+ Underc3
++~You read all the prophesy with your former lover, didn't you?~+ Underc3
++~Let us finish that final quest ahead and leave this darkness, Tamoko. It stresses your nerves like it does mine.~+ Underc3

CHAIN
IF~~THEN TamokoJ Underc3
~Bhaalspawns die to return their essence to its source, <CHARNAME>. Sarevok's death gives strength to the Throne of Murder. Your death would do the same. Sarevok thought that causing death would give HIM strength. Do not make that same mistake.~EXIT

CHAIN
IF~Global("Swo_TamokInt","Global",3)~THEN TamokoJ Korla1
~This Korlasz had no interest in Sarevok's sword, she sold it to someone in Amn, <CHARNAME>.~
DO~SetGlobal("Swo_TamokInt","Global",4)~
=~Keeping a relict for the cult of the god-that-never-was would be one thing but there seems to be something else going on here.~
END
++~Do you have some more insight into that Korlasz's plans, you must know her?~+ Korla2
++~What do you suspect is going on, you were one of them until recently?~+ Korla2

CHAIN
IF~~THEN TamokoJ Korla2
~That sword may be a relict representing Sarevok for some, but there may be another interest in the weapon...~
=~(She points to a slash that started healing on your forearm. You received it in the battle with your *brother*). Blood, <CHARNAME>, your blood.~
END
++~I see, my blood which is Bhaalblood.~+ Korla3
++~What would anyone want with a weapon that has some dried blood on it.~+ Korla3
++~Recent events have done your mind no good, Tamoko, your wild fantasies are better kept to yourself.~+ Korla3

CHAIN
IF~~THEN TamokoJ Korla3
~Korlasz is a rich heiress in Baldur's Gate who followed Sarevok partly out of boredom and maybe hoping to win my place one day. Sarevok cared not for her, only for her gold. She bothers me not. But you should be aware of the one from Amn who seems to track you.~
=~I knew they would come and I often warned Sarevok. Those that are not interested in Bhaal but in the powers that a Bhaalspawn gains when growing and which they want to use for their purpose.~
END
++~To be used as a weapon for someone's purpose? I have heard this theory somewhere already.~+ Korla4
IF~InParty("CVSandr")~THEN REPLY~Now you start to sound just like Sandrah with her hints and warnings.~+ Korla5
++~After I saved the Sword Coast from a war and from your lover it's no wonder that people get interested in me.~+ Korla4

CHAIN
IF~~THEN TamokoJ Korla4
~Stay alert, that is my advice. You want not become the pawn in someone's game. Winski tried it with Sarevok, he wanted to use him as a means to revenge on Rashemen, who expelled him. Winski was too weak but your pursuers may be stronger.~EXIT

CHAIN
IF~~THEN TamokoJ Korla5
~She is often right with what she says although I would not trust her if I were you. She has more hidden intentions than anyone else around.~EXIT

CHAIN
IF~Global("Swo_TamokInt","Global",5)~THEN TamokoJ Palace1
~Ha! Life is full of antics, <CHARNAME>. I stand here in the Ducal Palace of Baldur's Gate side by side with a Bhaalspawn just like it was promised to me long ago. And everything went different from what was planned.~
DO~SetGlobal("Swo_TamokInt","Global",6)~
END
++~The duchess Anchev? Was that your dream of life?~+ Palace2
++~Ambitions made Sarevok fail, and your own ambitions have hardly done you any good.~+ Palace2

CHAIN
IF~~THEN TamokoJ Palace2
~Without ambitions there wouldn't have been my failures, so much is true. But that makes not trying to achieve something not an option for me. Not trying would have meant a squalid life for me.~
=~Except for my poor mother, nobody ever cared about a fatherless Kara-Tur halfbreed. From where I started there is only one way and that leads uphill. Everybody can fall down but those at the bottom will not stay down if they have a choice.~
=~One may listen to the false people's promises but the urge to move is too strong to ignore whichever option appears before you.~
END
++~This drove you into the faith of an evil god, is that so?~+ Palace3
++~Sarevok used you but you seemed to have used him just the same, it appears to me.~+ Palace3
++~Some learn from mistakes and some justify them. Which type are you?~+ Palace3

CHAIN
IF~~THEN TamokoJ Palace3
~(Tamoko has already moved ahead, ignoring your last question.)~
EXIT

CHAIN
IF~Global("Swo_SkieReact","Locals",2)~THEN TamokoJ Skie1
~(Mumbles) Skie Silvershield, so near but yet unreachable...~
DO~SetGlobal("Swo_SkieReact","Locals",3)~
END
++~Did you meet her before, Tamoko?~+ Skie2
++~Unreachable? She is here in the camp.~+ Skie2
++~What?~+ Skie2

CHAIN
IF~~THEN TamokoJ Skie2
~(Startled) Was I thinking aloud? I was contemplating Sarevok's list, I guess he never met her.~
END
++~A list? Now you have me confused. Why did Sarevok have a list with Skie's name on it.~+ Skie3

CHAIN
IF~~THEN TamokoJ Skie3
~I...well, now that I started, why not go on. I knew Skie was in Baldur's Gate all the time and thus very near to us, Sarevok and me. But he never met her.~
=~You see, Sarevok had a list of people he intended to meet someday. Your name was on it and Skie's and many more. He scratched out the ones he was done with. Even with Skie being near all the time, her name was still unmarked when I last saw the paper. His family list.~
END
++~My name? What does that mean. We met in Candlekeep where he disguised as Koveras.~+ Skie4
++~Family list? Neither me nor Skie Silvershield were his relatives.~+ Skie4

CHAIN
IF~~THEN TamokoJ Skie4
~*<CHARNAME>, Gorion's ward*, I remember the entry. But it was crossed out long before he went to Candlekeep to eliminate Rieltar and the others. ~
=~Anyway, I was just lost in memories. It does not help us here today. Let us forget it and move on.~EXIT

CHAIN
IF~Global("Swo_SkieReact","Locals",4) ~THEN TamokoJ Gorion1
~Recently I remembered the very first time we met, <CHARNAME>. Do you recall it?~
DO~SetGlobal("Swo_SkieReact","Locals",5) ~
END
++~You came to betray Sarevok, in the streets of Baldur's Gate we met.~+ Gorion1a
++~I got a glance of you before Gorion ordered me to run to safety.~+ Gorion1b
++~I don't remember it any more, to be honest.~+ Gorion1c

CHAIN
IF~~THEN TamokoJ Gorion1a
~I did never betray Sarevok, I tried to save his life, Anyway, that was not our first meeting.~EXTERN TamokoJ Gorion2

CHAIN
IF~~THEN TamokoJ Gorion1b
~You did well to listen to him otherwise you wouldn't be here today.~EXTERN TamokoJ Gorion2

CHAIN
IF~~THEN TamokoJ Gorion1c
~I must have impressed you as little as you impressed me on that occasion.~EXTERN TamokoJ Gorion2

CHAIN
IF~~THEN TamokoJ Gorion2
~It was outside of Candlekeep on the day Gorion died. He gave his life for yours. You just ran. A pathetic weakling compared to Sarevok. You are here today while he and Gorion are both dead.~  
END
++~You attacked Gorion with spells while Sarevok did the hackwork.~+ Gorion3
++~Neither of you scared me for too long. It was an ambush and a surprise. You were lucky, Gorion sadly was not.~+ Gorion3
++~Those two are dead - and many more. You and I are still alive.~+ Gorion3

CHAIN
IF~~THEN TamokoJ Gorion3
~I did not bring this up to dwell on memories. I compare the <PRO_MANWOMAN> you are today with the fledgling you were then. You grew fast and you are growing still. It is impressive and it gives me confidence. Many have died since that day. You and I are still alive. We have something they had not. Make sure you do not lose it, <CHARNAME>.~EXIT

CHAIN
IF~Global("Swo_TamokInt","Global",7)~THEN TamokoJ Swordire1
~Sarevok's missing sword of chaos...This Caelar does not have it. She did not need a sample of your blood to know about your heritage.~
DO~SetGlobal("Swo_TamokInt","Global",8)~
END
++~Didn't you mention someone in Amn who would be interested?~+ Swordire2
++~What does the sword mean to you, Tamoko, a symbol of your lost love?~+ Swordire3
++~The sword, I almost forgot about it. Why would it be important.~+ Swordire2 

CHAIN
IF~~THEN TamokoJ Swordire2
~Korlasz or her servants mentioned it. The sword is nothing, the interest someone may have in your blood is disturbing. The sooner we finish this foolish Shining Lady, the sooner we can take care of that matter.~
END 
++~What does the sword mean to you, Tamoko, a symbol of your lost love?~+ Swordire3
++~The Shining Lady is our opponent here and now. Your phantom sword thief is secondary only.~+ Swordire4

CHAIN
IF~~THEN TamokoJ Swordire3
~Do you really think that I loved Sarevok just because I shared his bed?~
END
++~You were begging for his life when we first met.~+ Swordire4
++~Are you saying that you lied about your love to him and to me. You just used him like all the others?~+ Swordire4

CHAIN
IF~~THEN TamokoJ Swordire4
~You still understand very little of what is going on, <CHARNAME>. Sarevok was not the one to claim the throne of his father. All his death has resulted in, was to provide more bhaalspawn essence to the abyss. Nobody has an interest in that and I tried to prevent it. We do not want to wake up Bhaal. The time is not yet for anyone to try it.~ EXIT

CHAIN
IF~ Global("Swo_Madele","Global",2)~THEN TamokoJ AfterMadel1
~Nothing is permanent, <CHARNAME>, victories and defeats are temporary events in history's flow.~
DO~SetGlobal("Swo_Madele","Global",3)~
END
++~Does that refer to Cyric's taking the portfolio of the Dead Three?~+ AfterMadel2
++~I still wonder what you and Madele were talking about back in that temple.~+ AfterMadel2
++~That temple visit seems to have left you a bit uneasy. Your past catches up with you.~+ AfterMadel2

CHAIN
IF~~THEN TamokoJ AfterMadel2
~My past is the key to my future. The mad Cyric is just an upstart without substance. The heirs of Jergal will reclaim their power in just a while.~
END
++~The heirs of Jergal are the Dead Three, and they have that name, well, because they are dead.~+ AfterMadel3
++~Dream on, just like Sarevok dreamt and that blind fool dreams. None of those dead gods is supposed to threaten us again.~+ AfterMadel3
++~You carry a large load of death gods and mortals with you, Tamoko. Wake up and start to deal with those who live.~+ AfterMadel3
IF~!InParty("CVSandr")~THEN REPLY~Whether is is Bhaal or it is Bane, you want to be on the winning side. Your ambitions will be your downfall, Tamoko, since none of the two will happen.~+ AfterMadel3

CHAIN
IF~~THEN TamokoJ AfterMadel3
~Those who think of themselves as living powers may not be it for long. Those assumed to be forever gone may return sooner than they can be forgotten. Make sure you take that into account when making choices, <CHARNAME>. Learn from what Sarevok refused to learn.~EXIT

CHAIN 
IF ~ Global("Swo_camp","LOCALS",1)~THEN TamokoJ Campfire1
~(You wake up to find that it is still dark and your companions are asleep, except for...)~
DO~SetGlobal("Swo_camp","LOCALS",2)~
=~(Tamoko sits near the campfire staring into the dying flames. Given that she must be twice your age, or Sarevok's, she is still a very attractive woman with the exotic touch of her Kara-Turan heritage.)~
END
++~Was it really love that connected you and Sarevok or was it rather some alliance to strive for power?~+ Campfire2
++~You turn back to your pillow. You need all the rest you can get to face the challenge of the next day.)~DO~StartMovie("Rest")~EXIT
++~Was it just Cythandria's youth that made Sarevok turn to her and abandon you?~+ Campfire2

CHAIN
IF~~THEN TamokoJ Campfire2
~You are a good observer, <CHARNAME>. I don't deny all of us were ambitious - and angry. We wanted to show all those in Baldur's Gate that treated us like outcasts our power, make them kneel before us and ask for mercy. We envisioned the scenes and our satisfaction from them before we went between the sheets. Our lust for power and our lust for each other were fierce and strong.~
END
++~Lust is not love, Tamoko.~+ Campfire3
++~A relationship built on such foundation was supposed to fail when a younger woman emerges, like Cythandria.~+ Campfire3

CHAIN
IF~~THEN TamokoJ Campfire3
~I have asked myself the same again and again. I thought I loved Sarevok. I wished for it to be true. And maybe it was for a time. But there were too many other aspects in our relationship and love was not the most important.~
=~Sarevok changed and probably I changed as well. That mage whore was just a symptom of the disease that had grown in Sarevok's heart. He may have loved me once but he lost the ability to love when his ideas and visions began to eat him up. He surely never loved Cythandria.~
END
++~And you, are you sure you stopped loving him?~+ Campfire4
++~I don't think Sarevok was ever able to love anyone but himself. I'm not even sure you are.~+ Campfire4

CHAIN
IF~~THEN TamokoJ Campfire4
~You are even younger than he was. You learned too little of life behind those walls of Candlekeep. Keep your illusions of love, forgiveness, dreams that come true...~
=~We are out here fighting for survival, we all are. ~
=~Stop talking - we need a good night's rest to be fit for what awaits us.~DO~StartMovie("Rest")~EXIT

CHAIN
IF~Global("Swo_Desease","Locals",2)~ THEN TamokoJ Diseased
~Now I will never see Kara-Tur...I always hoped I would someday.~
DO~SetGlobal("Swo_Desease","Locals",3)~
=~You may ask why...I was not even born there. It has been a curse all my life. You suffer from your blood and I did from mine, the father I never saw who bequeathed me with a homeland I've never set foot on...(Cough).~
=~Ha! Life is full of antics, <CHARNAME>.~ DO~CreateVisualEffectObject("SPHOLY",Myself) ActionOverride(Player1,DisplayStringHead(Myself,@1007)) DropInventory() Wait(2)LeaveParty()ApplySpellRES("SPWI055",Myself) DestroySelf()~EXIT

CHAIN
IF~Global("Swo_InJail","Global",2)~THEN TamokoJ Jaildead
~Following Bhaalspawns was my fate and seals my end, <CHARNAME>.~
DO~SetGlobal("Swo_InJail","Global",3)~
=~The Flaming Fist does not forgive their own errors to trust first Sarevok and then you. I was on their warrant list already, your downfall allowed them to strike.~
END
++~Tamoko, I'm sorry, but I can't help you at this moment. I'll come back if I can.~+ Jaildead2
++~That was not foreseen. I wasn't aware they were still after you.~+ Jaildead2
++~What will happen to you, Tamoko?~+ Jaildead2

CHAIN
IF~~THEN TamokoJ Jaildead2
~There is nothing that you or anyone else can do for me now. The Dukes and the Fist want to see me hang, just as a symbol and scapegoat for their own mistakes.~
=~I won't give them that show. Talona spoils their plan. My end is my own and dedicated to my Lord - Bane.~EXTERN TamokoJ Diseased
 