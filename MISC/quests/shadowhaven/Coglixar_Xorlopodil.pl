sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Hello there $name. Its nice to meet you. Are you just passing through our fine city or do you have dealings you need to address to me personally? Also if ye know anyone that will want to assist with some deliveries to our mining contingent in the Paludal caverns let me know");
}
if($text=~/i want to assist/i){
quest::say("Ah Excellent. you must have been sent by our Patriarch. Well I have some goods that I need delivered to some different areas if you are still willing to [help].");
}
if($text=~/what help/i){
quest::say("That is great to hear $name. I have a task for you to complete for me first and if you are able to complete it I may have other things for you in the future. I have heard word that some of our dwarf workers in the [mining operation] are in need of some food.");
}
if($text=~/i want to help/i){
quest::say("That is great to hear $name. I have a task for you to complete for me first and if you are able to complete it I may have other things for you in the future. I have heard word that some of our dwarf workers in the [mining operation] are in need of some food.");
}
if($text=~/i am willing to help/i){
quest::say("That is great to hear $name. I have a task for you to complete for me first and if you are able to complete it I may have other things for you in the future. I have heard word that some of our dwarf workers in the [mining operation] are in need of some food.");
}
if($text=~/what mining operation/i){
quest::say("In the Paludal caverns our workers are starting to get very low on rations and are working with very old and tarnished mining utensils. I need you to deliver these rations to Daesorak first and then see what supplies he thinks they need. He is the one overseeing the operation and will be able to tell you what supplies he needs and what quanity is necessary.");
quest::summonitem("4747"); }
}
#END of FILE Zone:shadowhaven  ID:150016 -- Coglixar_Xorlopodil 

