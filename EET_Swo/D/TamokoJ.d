BEGIN TamokoJ
BEGIN TamokoP

CHAIN
IF~Global("TamokoJoin","GLOBAL",1)~THEN TamokoP GoOnce
~I will never again degrade myself to begging a Bhaalspawn to keep me. We go our separate ways.~
DO~SetGlobal("TamokoJoin","GLOBAL",0) EscapeAreaDestroy(60)~ EXIT

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