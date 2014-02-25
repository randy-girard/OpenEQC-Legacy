sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Shalom. $name! I welcome you to our humble village in these [trying times].");
}
if($text=~/what trying times?/i){
quest::say("There are many threats currently facing this village. The kobolds of Clan Kolbok are becoming bolder in pushing the boundaries of the territory in which they usually hunt. A few of the kobolds now hunt recklessly. killing for pleasure instead of sustenance. [Rognarog] the Infuriated is the most murderous of such kobolds. Then there are the [heretics] that have been invading both Clan Kolbok and Kejek territories alike. practicing their dark sorceries as a show of devotion to their faceless god.");
}
if($text=~/who is rognarog?/i){
quest::say("Rognarog the Infuriated was once a mighty warrior for Clan Kolbok until his devotion to the kobold god Rolfron Zek devoured his spirit and drove him mad with anguish. Now he wanders the mountains and valleys of Stonebrunt shedding the blood of whatever creatures cross his path. Should you face Rognarog and release him from this life I will reward you for his severed head.");
}
if($text=~/what heretics?/i){
quest::say("The heretics have not only corrupted their own spirits but they defile the spirits of the dead with their evil sorceries. Fill this satchel with the heads of invading heretics and I shall reward you for your allegiance to Kejek."); }
}
#END of FILE Zone:stonebrunt  ID:100139 -- Shazda_Kaekwon 

