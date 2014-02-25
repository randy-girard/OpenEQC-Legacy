################################### 
#Zone: Ak`Anon                    #                                              
#Short Name: akanon               #                                                                  
#Zone ID: 55                      #                                        
###################################                                             
#NPC Name: Larkon_Theardor        #                             
#NPC ID: 55056                    #
#Quest Status: Incomplete         #                                      
################################### 
sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Greetings! Welcome to the Library of Mechanimagica. You must be a [current member of the Library] or has my [mind begun to slip]?");
}
if($text=~/Your mind has begun to slip/i){
quest::say("'What!!? That was but a joke. I try to make you feel comfortable with a little levity and you proclaim my mind has gone the way of Meldrath's. Well.. enough frivolity. You will do your part to help in the menial tasks of the Collective. Do you want the [clean tasks] or the [dirty tasks]?");
}
if($text=~/I want clean tasks/i){
quest::say("Clean.. Dirty.. It matters not. You have upset me with your rude remarks. You will go to the Steamfont Mountains. There you will find Fodin and tell him I have sent you. He will have a nice tidy task for you. A bath!! Be on your way!");
}
if($text=~/I want dirty tasks/i){
quest::say("Clean.. Dirty.. It matters not. You have upset me with your rude remarks. You will go to the Steamfont Mountains. There you will find Fodin and tell him I have sent you. He will have a nice tidy task for you. A bath!! Be on your way!");
}
if($text=~/I am a current member of the Library/i){
quest::say("Good. The last thing a member of the Eldritch Collective needs is to lose his mind. Look what happened to Meldrath. Enough chitchat. I am Larkon and it is not my job to teach you. It is my job to direct you to service. We require items and such to complete our studies. We need someone of moderate skill to [gather minotaur horns] and [collect basilisk tongues].");
}
if($text=~/I will gather minotaur horns/i){
quest::say("We magicians require the horns of minotaurs.  We crush them down and use the powder in many of our tests. Go and fetch two minotaur horns.  Do not return empty-handed. I await your return as does your reward.");
}
if($text=~/I will collect basilisk tongues/i){
quest::say("Very good of you.  Go beyond the land of the gnomes and seek out basilisks.  Return four of their tongues to me and I shall share the knowledge of the magicians of the Eldritch Collective."); }
}
sub EVENT_ITEM {
if($item1==13077){
quest::say("Fine work. You have earned the respect of the Library. Here is a small token of our appreciation. We shall have this ground down as soon as we find someone to go to Kaladim."); 
quest::exp(100); }
}
 

