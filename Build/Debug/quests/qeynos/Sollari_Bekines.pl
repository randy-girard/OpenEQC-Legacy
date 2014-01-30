sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Hello, there! I am Sollari Bekines of the League of Antonican Bards. I am at your service to train you as best I can. There have been a number of young bards entering our concert halls lately seeking guidance. If you are a [young bard in search of training]. I might have some work for you.");
}
if($text=~/i am a young bard in search of training/i){
quest::say("You need to look no further then. I can surely provide you with the knowledge you will need to make it in this world as a songweaver. The exercises that you will need to complete will test your gathering and fighting skills. Once you have completed your training you will be outfitted with a suit of your very own armor! When you are [ready to begin] I will explain to you how the training will work.");
}
if($text=~/i am ready to begin/i){
quest::say("Here is your Wind Spirits Assembly Kit. In this kit you will collect a different items that will be combined in certain quantities to create infused armor materials. These armor materials that you create can then be taken to a forge along with the applicable armor mold to fashion together a piece of Wind Spirits Armor. When you would like to craft an armor piece you must simply tell me what piece you [want] to craft. I will then provide you with the recipe and mold necessary for creating Wind Spirits [Helms], [Bracers], [Armguards], [Boots], [Greaves], [Gauntlets] and [Breastplates].");
}
if($text=~/i want to craft helms/i){
quest::say("To create your helm material you will need to combine 2 Bricks of Crude Iron, 1 Coyote Skull, 1 Bat Fur and 1 Honey Mead in your assembly kit. Once you have created the proper material take it to a forge along with this mold to fashion your very own Wind Spirits Helm.");
quest::summonitem("22610");
}
if($text=~/i want to craft bracers/i){
quest::say("To create your bracer material you will need to combine 1 Brick of Crude Iron, 1 Gnoll Backbone, 1 Gnoll Scoutsmans Documents and 1 Throwing Spear in your assembly kit. Once you have created the proper material take it to a forge along with this mold to fashion your very own Wind Spirits Bracer.");
quest::summonitem("22611");
}
if($text=~/i want to craft armguards/i){
quest::say("To create your armguards material you will need to combine 2 Bricks of Crude Iron, 2 Ruined Wolf Pelts, 1 Diseased Wolf Pelt and 1 Arrow in your assembly kit. Once you have created the proper material take it to a forge along with this mold to fashion your very own Wind Spirits Armguards.");
quest::summonitem("22613");
}
if($text=~/i want to craft boots/i){
quest::say("To create your boot material you will need to combine 3 Bricks of Crude Iron, 1 Brown Bear Femur and 2 Blackburrow Gnoll Pelts in your assembly kit, Once you have created the proper material take it to a forge along with this mold to fashion your very own Wind Spirits Boots.");
quest::summonitem("22612");
}
if($text=~/i want to craft greaves/i){
quest::say("To create your greaves material you will need to combine 4 Bricks of Crude Iron, 1 Giant Spider Egg Sack, 1 Black Wolf Tooth, 1 Bottle and 1 Young Puma Skin in your assembly kit. Once you have created the proper material take it to a forge along with this mold to fashion your very own Wind Spirits Greaves.");
quest::summonitem("22614");
}
if($text=~/i want to craft gauntlets/i){
quest::say("To create your gauntlet material you will need to combine 3 Bricks of Crude Iron, 1 Giant Fire Beetle Carapace, 1 Lion Tooth, and 2 Spider Legs in your assembly kit. Once you have created the proper material take it to a forge along with this mold to fashion your very own Wind Spirits Gauntlets.");
quest::summonitem("22615");
}
if($text=~/i want to craft breastplates/i){
quest::say("To create your breastplate material you will need to combine 5 Bricks of Crude Iron, 1 Low Quality Bear Skin, 1 Woven Spider Silk, 1 Lock of Scarecrow Straw, 1 Matted Lion Pelt and 1 Bandit Sash in your assembly kit. Once you have created the proper material take it to a forge along with this mold to fashion your very own Wind Spirits Breastplate. When you are finished with your Breastplate and have completed your armor set please come see me for one [final exercise].");
quest::summonitem("22616");
}
if($text=~/what final exercise/i){
quest::say("I need your help with ridding the hills of some of the most vile creatures, the gnolls of course! My resident alchemist has instructed me that he needs some items from these furballs for a antidote he is working on. I need you to bring me 1 Vial of Gnoll Blood and 2 Gnoll Pelvises. Once you have returned with these items I will reward you with a weapon worthy of the finest Qeynos Songweaver. I look forward to seeing you soon."); }
}

sub EVENT_ITEM {
 #do all other handins first, then let it do disciplines
 #if($itemcount{} == 1) {
 #} else {
	if($class ne 'Bard') {
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
#END of FILE Zone:qeynos  ID:1059 -- Sollari_Bekines 
