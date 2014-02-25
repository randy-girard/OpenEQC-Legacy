sub EVENT_SAY{
if($text=~/Hail/i){
quest::say("Welcome, $name.  I am apprentice Kendrick.  Do you wish to test your abilities?");
}
if($text=~/what abilities/i){
quest::say("Great, let us waste no more time!  Do you wish to begin your test of thievery, silence , or trickery?");
}
if($text=~/what test of thievery/i){
quest::say("Thievery is absolute.  Travel beyond and bring forth an ivory tessera, a gem of invigoration, and an inlaid choker to complete the test of thievery and earn the wispy choker of vigor!");
}
if($text=~/what test of silence/i){
quest::say("Silence makes us deadly.  Proceed upward and bring to me a spiroc sky totem, a pearlescent globe, and a black griffon feather.  Griffon wing spauldors shall be yours if you complete this.");
}
if($text=~/what test of trickery/i){
quest::say("Trickery, ahh, how Fizzlethorpe blesses us!  Adventure and return a mottled spiroc feather, a cracked leather belt, and a sphinxian circlet to complete the test of trickery and earn Renard's Belt of Quickness."); }
}
#END of FILE Zone:airplane  ID:Not_Found -- Kendrick 

