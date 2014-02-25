sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Hail $name. You will have to excuse me because I am quite busy with my work and trying to sort out my [deliveries]. However. please help yourself to anything in my store that may be to your liking.");
}
if($text=~/what deliveries?/i){
quest::say("You see. I have to make more and more deliveries everyday. what with my business growing so much. I find it difficult to make time to go pick up the different skins and pelts I need for my trade. It's tough when you need some good help but can't afford to pay them. Sorry to bother you with my banter. perhaps I will find someone on the [way to the bazaar].");
}
if($text=~/I am on my way to the bazaar/i){
quest::say("You are. eh $name? Well then if you wanted to pick up some supplies for me and deliver them to my partner in the Bazaar I'm sure I would be very grateful. Would you like to make a [trip to the bazaar]?");
}
if($text=~/I will make a trip to the bazaar/i){
quest::say("All right! Great to hear that $name. Here are the supplies I need delivered to my partner Gearo in the Bazaar. Please take them to him and return with whatever he has picked up for me. I look forward to seeing you soon. and thank you.");
quest::summonitem("4766");
}
if($text=~/what way to bazaar/i){
quest::say("You are. eh $name? Well then if you wanted to pick up some supplies for me and deliver them to my partner in the Bazaar I'm sure I would be very grateful. Would you like to make a [trip to the bazaar]?");
}
if($text=~/i am on my way to bazaar/i){
quest::say("You are. eh $name? Well then if you wanted to pick up some supplies for me and deliver them to my partner in the Bazaar I'm sure I would be very grateful. Would you like to make a [trip to the bazaar]?");
}
if($text=~/i would like to make a trip to the bazaare/i){
quest::say("All right! Great to hear that $name. Here are the supplies I need delivered to my partner Gearo in the Bazaar. Please take them to him and return with whatever he has picked up for me. I look forward to seeing you soon. and thank you.");
quest::summonitem("4766");
}
if($text=~/i would like to make a trip to the bazaar/i){
quest::say("All right! Great to hear that $name. Here are the supplies I need delivered to my partner Gearo in the Bazaar. Please take them to him and return with whatever he has picked up for me. I look forward to seeing you soon. and thank you.");
quest::say("All right! Great to hear that $name. Here are the supplies I need delivered to my partner Gearo in the Bazaar. Please take them to him and return with whatever he has picked up for me. I look forward to seeing you soon. and thank you.");
quest::summonitem("4766");
}
if($text=~/I will make the trip to the bazaar/i){
quest::say("All right! Great to hear that $name. Here are the supplies I need delivered to my partner Gearo in the Bazaar. Please take them to him and return with whatever he has picked up for me. I look forward to seeing you soon. and thank you.");
quest::summonitem("4766"); }
}
sub EVENT_ITEM { 
if($itemcount{4767} == 1){
quest::say("Hey again $name. Its nice to see you back so soon. thank you for bringing my supplies to that crazy Gnome and bringing back my gems that he got for me. You are always welcome in my shop. good luck to you!");
quest::say("Hey again $name. Its nice to see you back so soon. thank you for bringing my supplies to that crazy Gnome and bringing back my gems that he got for me. You are always welcome in my shop. good luck to you!");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1"); }
}
#END of FILE Zone:shadowhaven  ID:150108 -- Steaon_Alarenier 

