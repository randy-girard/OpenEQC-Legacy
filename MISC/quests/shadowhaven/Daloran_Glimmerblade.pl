sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Greetings $name. I am Lord Daloran Glimmerblade. I preside over the Fordel section of the Haven with my dear Mistala. I have not seen you around these parts. so I would imagine you are a [newcomer] to our great city.");
}
if($text=~/I am a newcomer/i){
quest::say("Excellent $name. It's nice to have you here as a guest. I am very proud of all that we have accomplished here. and I invite you to make yourself at home when you are with us. If you wish to further [prove your allegiance] to the House of Fordel I may have some tasks for you to complete.");
}
if($text=~/I wish to prove my allegiance/i){
quest::say("Ah that is excellent to hear. $name. I believe I have a task that I could entrust you with. I have numerous Gemmed sword hilts that I have yet to attach to a blade. They have all been glowing for quite some time with an [unknown force]. All of my residing magicians and enchanters have been unable to decipher the magics that surround these hilts.");
}
if($text=~/what unknown force?/i){
quest::say("I wish that I was able to discover this myself. Unfortunately not one person in my quarter possesses such identification powers. However. I do have a [friend] in Katta Castellum that specializes in discovering such magical origins.");
}
if($text=~/who is your friend?/i){
quest::say("Yaeorat is who I speak of. he is a very trusted and old friend of mine that is a very powerful and skillfull enchanter. Will you bring to him the [Gemmed sword hilt]? I feel that if anyone will be able to identify this it will be Yaeorat.");
}
if($text=~/I will bring him the gemmed sword hilt/i){
quest::say("That is great to hear. $name. Here is the hilt. Please go see Yaeorat at once and bring me news about the magic that surrounds this sword hilt good or bad.");
quest::summonitem("4762");
}
if($text=~/i want to prove my allegiance/i){
quest::say("Ah that is excellent to hear. $name. I believe I have a task that I could entrust you with. I have numerous Gemmed sword hilts that I have yet to attach to a blade. They have all been glowing for quite some time with an [unknown force]. All of my residing magicians and enchanters have been unable to decipher the magics that surround these hilts.");
}
if($text=~/i want to prove your allegiance/i){
quest::say("Ah that is excellent to hear. $name. I believe I have a task that I could entrust you with. I have numerous Gemmed sword hilts that I have yet to attach to a blade. They have all been glowing for quite some time with an [unknown force]. All of my residing magicians and enchanters have been unable to decipher the magics that surround these hilts.");
}
if($text=~/i wish to prove your allegiance/i){
quest::say("Ah that is excellent to hear. $name. I believe I have a task that I could entrust you with. I have numerous Gemmed sword hilts that I have yet to attach to a blade. They have all been glowing for quite some time with an [unknown force]. All of my residing magicians and enchanters have been unable to decipher the magics that surround these hilts."); }
}
#END of FILE Zone:shadowhaven  ID:150089 -- Daloran_Glimmerblade 

