#npcname - Rollian Galothar
#class - warrior
#

sub EVENT_SAY
{
 if($text=~/Hail, $mname/i)
  {
   quest::say("Are you a young warrior here for [training]? If not, I do not have time to chat");
 }
 if($text=~/training/i)
  {
   quest::say("Very good. With my instruction you will craft a set of [armor] that if crafted well, should serve you well for some time to come.");
 }
 if($text=~/armor/i)
#the assembly kit needs to be created. Not in DB. Replace the xx with #the kit itemID once it is created
  {
   quest::say("I will give you instructions to make your first set of armor. Just keep in mind that I don't tolerate those that are lazy! Once you start something, you should always finish it! With that said, take this Northern Wolf Plate Assembly Kit. You will use it to create the various parts of your armor such as [helm], [bracers], [armplates], [boots], [legplates], [gauntlets], and [breastplate]. When you combine components in your kit, make sure they are un-stacked. Let me know what piece you wish to craft and I will give you instructions.");
   quest::summonitem(xx);
 }

#armplates
#mold needs to be created. "Northern Wolf Armplates Mold"

 if($text=~/armplates/i)
  { 
   quest::say("You are doing well so far. Continue to work hard and you will accomplish much. To craft Armplates of the Northern Wolf, collect one Small Piece of Ore, two Ruined Wolf Pelts, one Bone Chip, and one Patch of Gnoll Fur. Once you have combined these items in your Assembly Kit, take the Armplates of the Northern Wolf Material to a forge along with this mold to create your new armplates.");
   quest::summonitem(yy);
 }

#boots
#mold needs to be created. "Northern Wolf Boot Mold"

 if($text=~/boots/i)
  {
   quest::say("It is always wise to protect one's feet. To craft Boots of the Northern Wolf, you must find two Small Pieces of Ore, one Spiderling Legs, and one Polar Bear Skin. Once you have combined these items in your Assembly Kit, take the Boots of the Northern Wolf Material to a forge along with this mold to create your new boots.");
   quest::summonitem(zz);
 }

#bracer
#mold needs to be created. "Northern Wolf Bracer Mold"

 if($text=~/bracer/i)
  {
   quest::say("To craft your Bracers of the Northern Wolf, collect one small Piece of Ore, three Bone Chips, and one Polar Bear Skin. Once you have combined these items in your Assembly Kit, take the Bracers of the Northern Wolf Material to a forge along with this mold to create your new bracers.");
   quest::summonitem(xy);
 }

#gauntlets
#mold needs to be created. "Northern Wolf Gauntlet Mold"

 if($text=~/gauntlet/i)
  {
   quest::say("To craft Gauntlets of the Northern Wolf, you must collect one Small Piece of Ore, four Bone Chips, and one Ruined Wolf Pelt. Once you have combined these items in your Assembly Kit, take the Gauntlets of the Northern Wolf Material to a forge along with this mold to create your new gauntlets.");
   quest::summonitem(yz);
 }

#helm
#mold needs to be created. "Northern Wolf Helm Mold"

 if($text=~/helm/i)
  {
   quest::say("To craft your Helm of Northern Wolf, you will need two Small Pieces of Ore, one Gnoll Pup Scalp, and two Bone Chips. You should be able to find most of these items in Everfrost. The ore is most likely sold here in town. Once you have combined these items in your Assembly Kit, take the Helm of the Northern Wolf Material to a forge along with this mold to create your new helm.");
   quest::summonitem(zx);
 }

#legplates
#mold needs to be created. "Northern Wolf Legplates Mold"

 if($text=~/legplates/i)
  {
   quest::say("To craft your legplates you must find one Small Piece of Ore, two Ruined Wolf Pelts, one Bone Chip, and one Spiderling Leg. Once you have combined these items in your Assembly Kit, take the Legplates of the Northern Wolf Material to a forge along with this mold to create your new legplates.");
   quest::summonitem(xx);
 }

#breastplate
#mold needs to be created. "Northern Wolf Breastplate Mold"

 if($text=~/breastplate/i)
  {
   quest::say("Probably the most important part of your armor is the Breastplate of the Northern Wolf. It shows your true dedication to our cause. This is perhaps the most difficult part of your armor that you will create. To construct your breastplate, you will need to find three Small Pieces of Ore, two Ruined Wolf Pelts, and one Spider Venom Sac. Once you have combined these items in your Assembly Kit, take the Breastplate of the Northern Wolf Material to a forge along with this mold to create your new breastplate. Once you have completed your breastplate, I have another [task] for you should you feel ready.");
   quest::summonitem(xx);
 }

#other task
#reward needs to be created. "Sword of the Northern Wolf"

 if($text=~/task/i)
  {
   quest::say("Part of becoming an effective warrior is overcoming your fears. Travel to Blackburrow and find two Perfect Gnoll Skins and two Giant Snake Rattles. Return them to me and you shall be rewarded for your bravery.");
 }
}


#faction ID's needed to be added. Replace the Name of the faction with #its ID in the DB
#replace to "xx" in the summonitem with the item (once created) "Sword #of the Northern Wolf"
sub EVENT_ITEM
{
 if($itemcount{27421} && $itemcount{13058} == 2)
  {
   quest::say("I must say, I am impressed. You have passed your training and should now have a full set of armor to begin your adventures. Take this weapon as a symbol of your dedication and hard work. You have earned it. Your training with me has ended. Farewell.");
   quest::summonitem(xx);
   quest::faction(Wolf of the North, 5);
   quest::faction(Shaman of Justice, 5);
   quest::faction(Merchants of Halas, 5);
   quest::faction(Steel Warriors, 5);
   quest::exp(200);
 }
}
