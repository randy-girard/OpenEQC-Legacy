sub EVENT_SAY { 
if($text=~/who is Shakey?/i){
quest::say("Shakey is our protector and friend.  He is just getting old.  Losing his [stuffing].  His [head] is getting very cracked and dry as well.");
}
if($text=~/what stuffing/i){
quest::say("The hay he requires is difficult to obtain.  It must have been harvested from the Plains of Karana. then cursed by a high priest of the Faceless. [Cazic-Thule].  Finally. you must cast the hay and a flask of blessed Oil of Life into an armorer's forge.  Only then will the hay be ready.  We Stormreapers will reward you greatly if you could accomplish this task.  Remember. you must give the scarecrow stuffing to Shakey only after it has been properly prepared.");
}
if($text=~/Hail/i){
quest::say("Greetings and salutations. $name!  My name is Reebo Leafsway. loyal Druid of [Karana].  I am in charge of helping young druids who wish to get started down the [trail to Karana's wisdom].  I also do my share of tending the [crops].");
}
if($text=~/who is Karana/i){
quest::say("Karana is known as the Rainkeeper.  It is through His will that our [crops] and our children grow big and healthy.  He watches over us and protects us. calling down the fury of a tempest on those who wish harm upon His followers.");
}
if($text=~/what crops/i){
quest::say("The crops we grow here are mostly carrots. lettuce and squash.  We also are the only place on all of Norrath where the soil can support the mystical Jumjum Stalk.");
}
if($text=~/what trail of Karana/i){
quest::say("Karana is known as the Rainkeeper.  It is through His will that our [crops] and our children grow big and healthy.  He watches over us and protects us. calling down the fury of a tempest on those who wish harm upon His followers.");
}
if($text=~/what head/i){
quest::say("The head of a scarecrow is difficult to replace.  We do not know what is needed and all of our attempts have failed.  Perhaps you could [research] this for us and bring back a new head for our old friend Shakey?");
}
if($text=~/what research/i){
quest::say("We have heard of a great forbidden tome penned by an evil necromancer that holds the secrets of instilling life into scarecrows.  We have recovered pages from that book.  That is how we know about Shakey's hay.  But the pages detailing the creation of a scarecrow's head are missing.  We believe that the Erudites possess at least some of the pages and might know where the rest of them may be found.  Start your search in their city of Erudin.");
}
if($text=~/what karana/i){
quest::say("Karana is known as the Rainkeeper.  It is through His will that our [crops] and our children grow big and healthy.  He watches over us and protects us. calling down the fury of a tempest on those who wish harm upon His followers.");
}
if($text=~/what trail to karana/i){
quest::say("Karana is known as the Rainkeeper.  It is through His will that our [crops] and our children grow big and healthy.  He watches over us and protects us. calling down the fury of a tempest on those who wish harm upon His followers.");
}
if($text=~/i want to get started down the trail to karana/i){
quest::say("Good.  First you should learn that Karana's work is just that..  work.  Karana provides us with the tools but it is by the sweat of our brows that we prosper.  Common sense and hard work are two things that are highly prized by our people.  Time for you to sweat. young one.  Take this crate of carrots over to Blinza Toepopal in the Fool's Gold.  They need our finest carrots for Mayor Gubbin's stew.  When you return I will teach you a lesson of the Rainkeeper.");
quest::summonitem("13971"); }
}
sub EVENT_ITEM { 
if($itemcount{15263} == 1){
quest::say("These carrots are rotten.  They were rotten when I gave them to you.  Why would you waste time and energy on such a fool's errand?  Because I asked you to?  Many. even those you trust. will ask you to do things which you should not.  Use the common sense that Karana has blessed you with to know which tasks can benefit our people and which could harm them.  Learn this lesson well.  You will need it if you plan to adventure beyond the vale.  Now take these fresh carrots to Blinza and apologize for your error.  You may keep the donation she gives you as payment.");
quest::summonitem("13958");
}
if($itemcount{13974} == 4){
quest::say("Oh good!  I see you have taught that nasty Nillipuss a thing or two!  Good.  But it seems to me that he has stolen more jumjum than this.  Perhaps he needs another lesson?");
quest::say("Oh good!  I see you have taught that nasty Nillipuss a thing or two!  Good.  But it seems to me that he has stolen more jumjum than this.  Perhaps he needs another lesson?");
quest::say("Oh good!  I see you have taught that nasty Nillipuss a thing or two!  Good.  But it seems to me that he has stolen more jumjum than this.  Perhaps he needs another lesson?");
quest::say("Excellent!!  You must have taught ol' Nillipuss a great deal!  But he never seems to learn..  Oh well.  The Stormreapers and all of Rivervale owe you a debt of gratitude.  Please accept this token of our appreciation.");
quest::givecash("0","4","6","0");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1");
quest::faction("Not_Found","-1"); }
}
#END of FILE Zone:rivervale  ID:19056 -- Reebo_Leafsway 

