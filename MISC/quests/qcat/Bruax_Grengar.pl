sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Hail $name. I am Bruax Grengar. master necromancer of the Bloodsabers. I assist not only young necromancers with their training but also aid all those Bloodsabers who have chosen to practice the [sorcerous arts]. If you a practitioner of a sorcerous art I can give you instructions to obtain an [outfit and robe] that will assist you in your work. Once you have been properly outfitted I will also assist you in acquiring a [Staff of the Bloodsabers].");
}
if($text=~/what sorcerous arts?/i){
quest::say("I speak of those who practice the sorcerous arts other than necromancy. the arts of Enchantment. Magery. and Wizardry. It is a common misnomer proclaimed by those uneducated to the ways of the Plague Bringer that only Shadowknights and Necromancers serve Bertoxxulous. In fact this temple alone has members from all walks of life. from tailors. scholars. and blacksmiths to warriors and sorcerers.");
}
if($text=~/what is the staff of the bloodsabers?/i){
quest::say("A Staff of the Bloodsabers is a useful implement for young sorcerers dedicated to Bertoxxulous the Plague Lord. I will assist you in the creation of a staff but first you must complete a task for me. The sorcerers of The Order of Three are supporters of Antonius Bayle IV. the haughty ruler of Qeynos. They lend magical aid to the Knights of Thunder and Priests of Life to identify and capture members of the Bloodsabers. A rather troublesome member of The Order of Three. Larkin Tolman. has recently been spotted at a settlement in the Western Plains of Karana. Find this Larkin Tolman and bring me his head."); }
}
#END of FILE Zone:qcat  ID:45065 -- Bruax_Grengar 

