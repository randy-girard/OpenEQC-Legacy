sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Greetings. Vah Shir. You are welcome in [Kejek] so long as you do not offend the [spirits] of these lands.");
}
if($text=~/what is kejek?/i){
quest::say("This is Kejek. our village on the peak of Mt. Klaw. It is here that we continue to cherish the customs and beliefs of our ancestors. the Vah'Shir. Our location here in the Stonebrunt Mountains and the protection of the spirits allows us to escape the persecution and war that is waged between our yellow furred cousins and the Erudites.");
}
if($text=~/what spirits?/i){
quest::say("There are spirits around us always. the spirits of our ancestors. and the spirits of the beasts that have past on beyond the mortal realms. It is through our devotions to these spirits that we shaman are granted our mystical powers. A few of the more powerful spirits are capable of becoming flesh once again and wander the wild serving as protectors and guides.");
}
if($text=~/Jali sent me/i){
quest::say("Ah yes Jali. whose wife is ill. I have been looking for a cure for many moons. I do believe I can make one now if I had the proper ingredients. Unfortunately it will require the deaths of some of our lands creatures but the spirits will not be angered as it is for a noble cause. Perhaps you could [fetch them] for me?");
}
if($text=~/I will fetch them/i){
quest::say("Take this satchel and please listen closely. I need the following and they need to be relatively fresh. So don't waste time with frivolous strolls through the jungle. I require two Panda Claws. two Tiger Skins. two Asp Poison Sacs. a Bamboo Shoot. and a Kejekan Palm Fruit. which you will need to find somewhere in the jungle. Once you have these items. combine them in the bag and return to me."); }
}
#END of FILE Zone:stonebrunt  ID:100138 -- Khonza_Ayssla 

