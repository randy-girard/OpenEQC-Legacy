sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Oi there $name  If you are lookin for a potion or an antidote I got just what the doctor ordered. step right up! I also have many other special potions but sadly I do not have the correct [components] for them.");
}
if($text=~/what components?/i){
quest::say("Well you see I can make some very magnificent potions. unfortunately I am in need of a few [ingredients] that I lost in a lab accident a few days back.");
}
if($text=~/what ingredients?/i){
quest::say("You sure seem interested in my work there $name. So interested that I think you would be willing to go fetch the components I require for my studies for me! Am I correct? Will you [retrieve these components] for me?");
}
if($text=~/I will retrieve these components/i){
quest::say("Fantastic $name! Elefan. my apprentice. is currently studying under my wing. He had been collecting samples in Shadeweaver lately and he probably has the items that I need. If you could go and speak with him and present him with this ingredient list. hopefully he will have what I need. Please bring the components back to me as soon as possible!");
quest::summonitem("4758"); }
}
sub EVENT_ITEM { 
if($itemcount{4759} == 1){
quest::say("You did it $name! Finally I can finish these potions that I have been working on for such a long time. I will surely tell all of my friends of your willingness to help me!");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1"); }
}
#END of FILE Zone:shadowhaven  ID:150278 -- Zimloro_Jalobottle 
