sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Well met kind Gnome. I am Governor Toktonn Geerlok of the Loyalist Combine. It is my duty to oversee all matters concerning engineering. construction. and maintenance within Katta Castellum. There is a wonderful ore native to Luclin called [Acrylia] that has proved to be a valuable asset to my crew and I.");
}
if($text=~/what acrylia/i){
quest::say("Yes. it is a marvelous luminescent ore that when properly smelted has properties similar to the finest of steels. and sometimes even better. Depending on the purity of the ore of course. The Tenebrous Mountains are rich with very pure acrylia veins but unfortunately the Grimlings have overrun the mines and are not willing to allow others to mine the ore. Instead they horde it for their tribes to the south. I am permitted by the Validus Custodus to reward those seeking to cleanse the mines of the Grimlings. More precisely to pay a reward for every four grimling mining picks presented to me."); }
}
#END of FILE Zone:katta  ID:160174 -- Toktonn_Geerlok 

