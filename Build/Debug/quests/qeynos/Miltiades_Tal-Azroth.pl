sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Greetings and salutations $name. I am Miltiades Tal`Azroth Crusader of Karana. I have spent all of my years here in Qeynos and gathered infinite knowledge from my teachers on my path to enlightenment. I have also started training new recruits to help them find their calling as a Holy Warrior of Karana. If you are a [Paladin of Karana] I might have some tasks for you to complete.");
}
if($text=~/i am a paladin of karana/i){
quest::say("That is excellent news $name. As a Knight in training of Karana I would like to offer you a series of [tests] what will test your devotion to yourself and your god.");
}
if($text=~/what tests/i){
quest::say("I have put together a series of tests that will enable our new recruits to create their own armor. You will use a Rainkeepers Assembly Kit to combine assorted items that you will collect from both the hunting areas surround Qeynos and the city itself. Combining these magical items in your kit will create a material that you will place in a forge along with molds that I will present to you to create your armor. Are you ready to start [fashioning your materials]?");
}
if($text=~/i am ready to start fashioning your materials/i){
quest::say("Excellent $name. Please take this Rainkeepers Assembly Kit. Now for your materials you will fashion you will obviously need to know what items are used for what armor materials. Simply tell me what armor piece you [want] to create and I will present you with the recipe for that specific armor material. I can present you with the molds and recipes necessary for creating Rainkeeper [Helms], [Bracers], [Armguards], [Boots], [Greaves], [Gauntlets] and [Breastplates]."); }
}

sub EVENT_ITEM {
 #do all other handins first, then let it do disciplines
 #if($itemcount{} == 1) {
 #} else {
	if($class ne 'Paladin') {
		quest::say("You are not a member of my guild. I will not train you!");
		quest::summonitem($item1) if($item1);
		quest::summonitem($item2) if($item2);
		quest::summonitem($item3) if($item3);
		quest::summonitem($item4) if($item4);
		return;
	}
	#assume it is a discipline tome...
	quest::traindisc($item1) if(quest::isdisctome($item1));
	quest::traindisc($item2) if(quest::isdisctome($item2));
	quest::traindisc($item3) if(quest::isdisctome($item3));
	quest::traindisc($item4) if(quest::isdisctome($item4));
 #}
}
#END of FILE Zone:qeynos  ID:1018 -- Miltiades_Tal`Azroth 
