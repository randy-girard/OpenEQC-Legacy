sub EVENT_SAY { 
if ($text=~/Hail/i){quest::say("Welcome friend. I hope your stay in Surefall Glade will enlighten your soul. While you are here we ask you to abide by the [laws of the Jaggedpine]."); }
}
sub EVENT_ITEM { 
if ($item1=="18713"){quest::say("Well met, friend of the forest. You will find power and enlightenment among these woods. Here. wear this tunic and represent the Jaggedpine with pride. Gerael Woodone will help train you and teach you the duties of Jaggedpine Treefolk. The forests, being the soul and heart of Norrath, depend on you and your actions from this day forth.");
quest::summonitem("13510");
quest::exp("100"); }
}
#END of FILE Zone:qrg  ID:4917 -- Te`Anara 

