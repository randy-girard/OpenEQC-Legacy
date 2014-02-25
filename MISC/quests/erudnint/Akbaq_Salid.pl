# Quest for Akbaq_Salid in Erudin Palace

sub EVENT_SAY {
 if($text =~ /hail/i) {
   quest::say("Greetings Lunal! I have recently returned to Erudin since hearing word of the titan spirits that inhabit the Stonebrunt Mountains. Should you be heading in that direction there are some [samples] that I am interested in acquiring.");
 }
 
 if($text =~ /What samples?/i) {
   quest::say("The titan spirits of the Stonebrunt Mountains appear in several various animal forms seemingly with different areas of influence in the spirit world. I am interested in conducting some experiments on the hides of the giant leopard titan and the giant sabretooth titan. Once I have acquired those hides I will seek to conduct experiments on the [others].");
 }
 
 if($text =~ /What others?/i) {
   quest::say("Once I have finished my studies of the feline titans pelts I am interested in experimenting with the hides of the strongest of the stonebrunt titans, the gigantic gorilla and the gargantuan panda! The [ancient snake] that inhabits those mountains is another matter that you may be interested in as well.");
 }

 if($text =~ /What ancient snake?/i) {
   quest::say("I believe I have uncovered a process with which to harness the mystical properties of the scales of the snake titan so that they can be fashioned into a powerful robe. If you bring me the ancient snake skin and some platinum thread I am sure there will be enough material to craft multiple robes and I shall reward you with one for your assistance.");
 }
}

sub EVENT_ITEM {
 if ($itemcount{6946} == 1 && $itemcount{6960} == 1){
   quest::say("Very good, $name, and here is your reward as promised.");
   quest::summonitem("2573");
 }

 elsif ($itemcount{6958} == 1 && $itemcount{6964} == 1){
   quest::say("Very good, $name, and here is your reward as promised.");
   quest::summonitem("2575");
 }

 elsif ($itemcount{6947} == 1 && $itemcount{12097} == 1){
   quest::say("Very good, $name, and here is your reward as promised.");
   quest::summonitem("2574");
 }

 else {
   quest::say("What am I supposed to do with these?");
   quest::summonitem($item1) if($item1);
   quest::summonitem($item2) if($item2);
   quest::summonitem($item3) if($item3);
   quest::summonitem($item4) if($item4);
 }
}