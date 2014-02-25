sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Pleased to meet you $name! I am Narron Jenork High Watchman of Ak'anon. I am one of the most skilled Watchmans in all of Ak'anon and I pride myself on training the most promising young warriors that Ak'anon has to offer. Are you a young gnome warrior?");
}
if($text=~/i am a young gnome warrior/i){
quest::say("Well we can never get enough warriors around these parts as far as I am concerned! Now if you are a new warrior then you must go through the training to become a true watchman. I have a series of tests that will require you to test both your hunting and navigational skills. These tests will not leave you with nothing to show for your work because upon completing them you will be outfitted with a full suit of Initiate Watchmans armor. Are you [ready to be tested]?");
}
if($text=~/i am ready to be tested/i){
quest::say("Well then lets get you started! First I will present you with this Watchmans Mail Assembly kit to gather assorted items from both your training grounds of the Steamfont Mountains and in our great town of Akanon. You will then combine the different recipes of components in your kit to create a material that will be used with a mold in a forge to create your Watchman armor. When you are ready to craft a specific piece all you must do is tell me what armor piece you [want to craft] and I will present you with the recipe for the material along with the mold. I have the material recipes necessary to make Initiate Watchman [Helms]. [Bracers]. [Armguards]. [Boots]. [Greaves]. [Gauntlets] and [Breastplates].");
}
if($text=~/i want to craft helms/i){
quest::say("No watchman can even think of going into battle without the proper helmet and I think this one will do the job for you $name. To create your helm material you will need to combine 2 Bricks of Crude Bronze. 1 Piece of Scrap Metal. 1 Ruined Cat Pelt and 1 Raw Bamboo in your assembly kit. Once you have created the proper material take it to a forge along with this mold to fashion your very own Initiate Watchmans Helm.");
quest::summonitem("22610");
}
if($text=~/i want to craft bracers/i){
quest::say("Always a wise idea to keep your wrists well protected because if you don¿t you might have a difficult time swinging your weapons! To create your bracer material you will need to combine 1 Brick of Crude Bronze. 1 Rusty Mace. 1 Kobold Tooth and 1 Bottle of Milk in your assembly kit. Once you have created the proper material take it to a forge along with this mold to fashion your very own Initiate Watchmans Bracer.");
quest::summonitem("22611");
}
if($text=~/i want to craft armguards/i){
quest::say("One always has to be able to really pack a punch with their attacks so preventing any injuries on your arms ahead of time is good planning! To create your armguards material you will need to combine 2 Bricks of Crude Bronze. 2 Brownie Legs . and 1 Short Beer in your assembly kit. Once you have created the proper material take it to a forge along with this mold to fashion your very own Initiate Watchmans Armguards.");
quest::summonitem("22613");
}
if($text=~/i want to craft boots/i){
quest::say("I certainly wouldn¿t advise any watchman to be on patrol without proper boots on. we aren¿t halflings you know! Therefore our obsession should be with our tactical attacks. not our foothairs. To create your boot material you will need to combine 3 Bricks of Crude Bronze. 1 Aviak Beak. 2 Wolf Meats and 1 Red Wine in your assembly kit. Once you have created the proper material take it to a forge along with this mold to fashion your very own Initiate Watchmans Boots.");
quest::summonitem("22612");
}
if($text=~/i want to craft greaves/i){
quest::say("Pants are a must young $name. As a Watchman of Ak'anon you should be known for your noble deeds and commitment to defending your home. not a gnome that runs around with no pants on. To create your greaves material you will need to combine 4 Bricks of Crude Bronze. 1 Coyote Pelt . 1 Rusted Blackbox and 1 Bottle in your assembly kit. Once you have created the proper material take it to a forge along with this mold to fashion your very own Initiate Watchmans Greaves.");
quest::summonitem("22614");
}
if($text=~/i want to craft gauntlets/i){
quest::say("Having the necessary protection on your hands and wrists will prevent any serious injuries that would make you unable to defend yourself. To create your gauntlet material you will need to combine 3 Bricks of Crude Bronze. 1 Runaway Clockwork Gearbox. 1 Young Ebon Drakewing. and 1 Minotaur Scalp in your assembly kit. Once you have created the proper material take it to a forge along with this mold to fashion your very own Initiate Watchmans Gauntlets.");
quest::summonitem("22615");
}
if($text=~/i want to craft breastplates/i){
quest::say("I am very pleased to see that you have progressed so quickly in your training $name! I do also agree that you are ready to gather the items necessary for crafting your Initiate Watchmans Breastplate. To create your breastplate material you will need to combine 5 Bricks of Crude Bronze. 1 Runaway Clockwork Motor. 1 Brownie Brain. 1 Rusty Long Sword. 1 Grikbar Kobold Scalp and the evil Diloperia`s Bracer in your assembly kit. Once you have created the proper material take it to a forge along with this mold to fashion your very own Initiate Watchmans Breastplate. When you are finished with your breastplate please come back to see me. I have a [final task] for you to complete.");
quest::summonitem("22616");
}
if($text=~/what final task/i){
quest::say("Much like most of the other guildmasters in our great city we have decided to begin presenting all new worthy recruits with weapons that symbolize their devotion to Ak'anon. I am in need of a [few items] from the mountains to make this weapon. If you will collect these items for me I will be happy to reward you with one of these fine weapons."); }
}

sub EVENT_ITEM {
 #do all other handins first, then let it do disciplines
 #if($itemcount{} == 1) {
 #} else {
	if($class ne 'Warrior') {
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
#END of FILE Zone:akanon  ID:55154 -- Narron_Jenork 
