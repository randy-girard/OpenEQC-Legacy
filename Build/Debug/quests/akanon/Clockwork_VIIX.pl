################################### 
#Zone: Ak`Anon                    #                                              
#Short Name: akanon               #                                                                  
#Zone ID: 55                      #                                        
###################################                                             
#NPC Name: Clockwork_VIIX         #                             
#NPC ID: 55017                    #
#Quest Status: Complete           #                                      
###################################
sub EVENT_SAY { 
if($text=~/Are you mizzle/i){
quest::say("Oh hello! I'm Mizzle, that I am. I bet you want to be given true clarity, don't you?");
}
if($text=~/what are the required components? I am ready to collect them/i){
quest::say("Then bring me a spoon, the one key, the lost scroll, and the book Charm and Sacrifice. I will then reward you with what you seek."); 
}
if($text=~/what spoon/i){
quest::say("Its a giant sized tool I will use to stir my magical pot. The spoon will help finish the ritual of crafting.. should you endeavor to find it, look for Cazel in the oasis.");
}
if($text=~/what one key/i){
quest::say("It is a key I lost long ago when I was travelling with a companion. We were traveling in the new lands flying over some large crevices when the key dropped out of my pocket.");
quest::say("You may find this key on a Mesa in the canyons of The Overthere if you're lucky.");
}
if($text=~/what lost scroll/i){
quest::say("The lost scroll contains the magical incantation I need to help you out. It was penned ages ago by the Elves. It was lost along with its protector during one of the raids on the Outpost in Firiona. I fear it may be lost for good.");
quest::say("If memory doth serve, you can find it somewhere behind a bed in the crypt of Dalnir.");
}
if($text=~/what book of charm and sacrifice/i){
quest::say("Oh, that is a book of good reading. If you want to take the time to read it. I haven't had much free time to read it, but now that you are getting supplies for me, I can take a break.");
quest::say("For this you will need to travel to the Plane of Sky and search for the table that holds this book."); }
}
sub EVENT_ITEM {
if($item1=="10636"){
quest::say("Oh excellent, you have done what is required. Here take this part, and seek the third master, you are well on your way.");
quest::faction(342,3);
quest::exp(2000);
quest::summonitem(10611); }
}


