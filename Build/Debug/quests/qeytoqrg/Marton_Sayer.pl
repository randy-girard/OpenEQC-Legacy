#remake of the the second make, Powerful dog part was screwed up but now fixed
#Script for marton_sayer in qeytoqrg. The gnoll slayer quest. 
#this is my revision of the one curently in cvs. the one there does not work. 

sub EVENT_SAY { 
   if($text=~/Hail/i){ 
      quest::say("Welcome. Please stock up on provisions. Especially if you are headed toward the lair of the vile gnolls. If so, I wish you much luck and many gnoll pelts! I also have knowledge of a [powerful dog].  I pray you do not encounter him."); 
   } 
   if($text=~/powerful dog/i){ 
      quest::say("I have encountered a gnoll who spoke the common tongue.  He dared to call himself Lord Elgnub.  He swore that some day we would cross paths and he would snatch my infant son Joseph from our home.  He would stand no chance against me and the mighty [Gnoll Slayer]."); 
   } 
   if($text=~/gnoll slayer/i){ 
      quest::say("Gnoll Slayer is the mighty longsword which was passed down unto me through generations of Sayers.  My days of battle are over. but I can still wield her with ferocity.  The only thing more precious would be my son. Joseph Sayer.  I would trade Gnoll Slayer only for him to be safe and sound at home."); 
   } 
   if($text=~/potential/i){ 
      quest::say("Yes, there was once an enchantment placed upon a gnoll's eye which was embeded in the sword that gave the sword powers to protect against desease and called forth a wolf to fight for you. But the eye was stolen, along with the only book that can restore the enchantment and eye to the sword.If you bring me the eye and the book i can make the sword reach its full potential once again."); 
   } 
} 
sub EVENT_ITEM { 
   if(plugin::check_handin(\%itemcount, 12204 =>1)){ 
      quest::summonitem(5416); 
      quest::say("Thank you very much $name, Here is the Gnoll Slayer as promised. If only it still had its true [potential]."); 
   } 
   if(plugin::check_handin(\%itemcount, 8357 =>  1,  8356 => 1, 5416 => 1)){ 
      quest::summonitem(5417); 
      quest::say("Now the gnoll slayer, once again, has its' full potential!"); 
       
   } 
} 
