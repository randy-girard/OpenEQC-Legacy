sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Ah. hello there. and welcome to me shop. Iksar. Ye'll have to excuse the mess but I've been havin a bloody good time here lately. . . HAR HAR. ye get it? Anyways. thanks to you offlanders I now have a selection of some exotic meats never afore seen here on Velious.  I've been amazed at the demand for some of 'em.  I can't seem to keep shark meat in stock any more.  I wonder if eatin' raw fish is catching on?  In addition to supplyin' the freshest meat in Thurgadin I also offer tasks to would-be hunters in the wastes.");
quest::say("Ah. hello there. and welcome to me shop. Wood Elf. Ye'll have to excuse the mess but I've been havin a bloody good time here lately. . . HAR HAR. ye get it? Anyways. thanks to you offlanders I now have a selection of some exotic meats never afore seen here on Velious.  I've been amazed at the demand for some of 'em.  I can't seem to keep shark meat in stock any more.  I wonder if eatin' raw fish is catching on?  In addition to supplyin' the freshest meat in Thurgadin I also offer tasks to would-be hunters in the wastes.");
quest::say("Ah. hello there. and welcome to me shop. %#1472. Ye'll have to excuse the mess but I've been havin a bloody good time here lately. . . HAR HAR. ye get it? Anyways. thanks to you offlanders I now have a selection of some exotic meats never afore seen here on Velious.  I've been amazed at the demand for some of 'em.  I can't seem to keep shark meat in stock any more.  I wonder if eatin' raw fish is catching on?  In addition to supplyin' the freshest meat in Thurgadin I also offer tasks to would-be hunters in the wastes.");
}
if($text=~/What Tundrabear sandwich?/i){
quest::say("Dat's easy. ye just take a slab o' dat Tundra Kodiak meat and a jug o' sauce. put it in da oven. den combine the product with a loaf o' bread in a mixin' bowl an' there ye be.");
}
if($text=~/WHat Snow Bunny stew?/i){
quest::say("Simple enuff. getcherself two hunksa Bunny meat and a jug o' sauces. Stir 'em in a mixin bowl. then put spices and two flasks o' water with it and cook it in a pot. Mmmm. zesty!");
}
if($text=~/What Ulthork meat pie?/i){
quest::say("Hmm. lemme look that one up. Been a while since I made one. Here we are. two Ulthork meats. a vinegar and a spices in a mixin' bowl. Put yer meat mix. a clump o' dough. an' a pie tin in da oven an' yer good ta go.");
}
if($text=~/What snow griffin souffle?/i){
quest::say("This one's a bit tricky. ya toss four snow griffin eggs and a pack of spices in de oven. Ye must bake it just right or it's all gunna be wasted. When yer done bring it to Thoridain and if ye did it right he'll give ye his special seal. Just show Borannin that seal and yer shawl and he'll know that yer finished in the kitchen.");
}
if($text=~/what tasks/i){
quest::say("Sorry. $name. but I've got no tasks to offer ye this week.  If ye be seriously lookin fer sumthin ta do ask ole Borannin 'bout duties fer the crown.."); }
}
sub EVENT_ITEM { 
if($itemcount{1420} == 1){
quest::say("Hullo. $name. I see you've signed on for a bit of food service eh? Well. we can always use an extra pair o' hands here dat's fer sure. First things first. warsh yer grubby mitts an' cook up dinner fer good ol' Leif. Should'n be too tough fer ye. he has simple enough taste. Make him a Tundrabear sandwich an' lemme know when he's been fed. Don'tcha ferget ta give him this with his meal.");
quest::summonitem("1415");
}
if($itemcount{1416} == 1){
quest::say("Now yer cookin! Letsee here... Guard Leif. check... Trita Coldheart. check... Ahh yes. next we need an Ulthork meat pie fer Brita. She's a doll. smart too. but she can be testy when she's hungry so get movin'!");
quest::summonitem("1417");
quest::faction("336","-1");
quest::faction("330","1");
quest::faction("Not_Found","1");
quest::faction("331","-1");
}
if($itemcount{1417} == 1){
quest::say("More dirty dishes eh? Well outlander. only one more meal to serve and I'll be done with ye. Make a snow griffin souffle fer the Grand Historian himself. It's his favorite.");
quest::summonitem("1418");
quest::faction("336","-1");
quest::faction("330","1");
quest::faction("Not_Found","1");
quest::faction("331","-1");
}
if($itemcount{1419} == 1){
quest::say("Well don. outlander! We'll make a chef of you before we're through. Next you'll need to whip up some Snow Bunny stew fer Missus Coldheart. Again. give her this napkin with her meal an' lemme know when she's been served.");
quest::summonitem("1416");
quest::faction("336","-1");
quest::faction("330","1");
quest::faction("Not_Found","1");
quest::faction("331","-1");
}
if($itemcount{11882} == 1){
quest::say("Well don. outlander! We'll make a chef of you before we're through. Next you'll need to whip up some Snow Bunny stew fer Missus Coldheart. Again. give her this napkin with her meal an' lemme know when she's been served.");
quest::summonitem("1416");
quest::faction("336","-1");
quest::faction("330","1");
quest::faction("Not_Found","1");
quest::faction("331","-1");
}
if($itemcount{17906} == 1){
quest::say("Now yer cookin! Letsee here... Guard Leif. check... Trita Coldheart. check... Ahh yes. next we need an Ulthork meat pie fer Brita. She's a doll. smart too. but she can be testy when she's hungry so get movin'!");
quest::summonitem("1417");
quest::faction("336","-1");
quest::faction("330","1");
quest::faction("Not_Found","1");
quest::faction("331","-1");
}
if($itemcount{1423} == 1){
quest::say("Now yer cookin! Letsee here... Guard Leif. check... Trita Coldheart. check... Ahh yes. next we need an Ulthork meat pie fer Brita. She's a doll. smart too. but she can be testy when she's hungry so get movin'!");
quest::summonitem("1417");
quest::faction("330","1");
quest::faction("Not_Found","1");
quest::faction("336","-1");
quest::faction("331","-1");
}
if($itemcount{1424} == 1){
quest::say("More dirty dishes eh? Well outlander. only one more meal to serve and I'll be done with ye. Make a snow griffin souffle fer the Grand Historian himself. It's his favorite.");
quest::summonitem("1418");
quest::faction("330","1");
quest::faction("Not_Found","1");
quest::faction("336","-1");
quest::faction("331","-1"); }
}
#END of FILE Zone:thurgadina  ID:115159 -- Mordin_Frostcleaver 

