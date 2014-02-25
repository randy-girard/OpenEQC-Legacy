sub EVENT_SAY { 
if($text=~/i shall not allow those sarnak to overtake the danak shipyards/i){
quest::say("Stand up straight!!  That's correct marine!!  YOU shall not allow the sarnak to overtake the shipyards!!  Head out to the frontlines. marine!!  Kill the berzerkers and return their war braids to me!!  For every four. you shall earn your wages!!!  Now get to the front. marine!!  Move it!!  Move it!!"); }
}
sub EVENT_ITEM { 
if($itemcount{12982} == 4){
quest::say("Keep up the good work. marine.");
quest::say("Great job. marine!!  Word of your heroics shall be passed on to the Admiral.  If you don't have a shield. then take one.  If you do. then get back to the front lines.  This is no time for R n' R!!  Move it. marine!!  Or you'll be pushing Danak till the cockatrice crows!!");
quest::say("Keep up the good work. marine.");
quest::say("Keep up the good work. marine.");
quest::say("Keep up the good work. marine.");
quest::say("Great job. marine!!  Word of your heroics shall be passed on to the Admiral.  If you don't have a shield. then take one.  If you do. then get back to the front lines.  This is no time for R n' R!!  Move it. marine!!  Or you'll be pushing Danak till the cockatrice crows!!");
quest::say("Keep up the good work. marine.");
quest::say("Great job. marine!!  Word of your heroics shall be passed on to the Admiral.  If you don't have a shield. then take one.  If you do. then get back to the front lines.  This is no time for R n' R!!  Move it. marine!!  Or you'll be pushing Danak till the cockatrice crows!!");
quest::say("Keep up the good work. marine.");
quest::say("Keep up the good work. marine.");
quest::say("Keep up the good work. marine.");
quest::say("Great job. marine!!  Word of your heroics shall be passed on to the Admiral.  If you don't have a shield. then take one.  If you do. then get back to the front lines.  This is no time for R n' R!!  Move it. marine!!  Or you'll be pushing Danak till the cockatrice crows!!");
quest::say("Keep up the good work. marine.");
quest::say("Keep up the good work. marine.");
quest::say("Great job. marine!!  Word of your heroics shall be passed on to the Admiral.  If you don't have a shield. then take one.  If you do. then get back to the front lines.  This is no time for R n' R!!  Move it. marine!!  Or you'll be pushing Danak till the cockatrice crows!!");
quest::say("Keep up the good work. marine.");
quest::say("Keep up the good work. marine.");
quest::say("Great job. marine!!  Word of your heroics shall be passed on to the Admiral.  If you don't have a shield. then take one.  If you do. then get back to the front lines.  This is no time for R n' R!!  Move it. marine!!  Or you'll be pushing Danak till the cockatrice crows!!");
quest::summonitem("12981");
quest::givecash("0","0","2","0");
quest::faction("120","1");
}
if($itemcount{12982} == 2 && $itemcount{15230} == 1 && $itemcount{30415} == 1){
quest::say("Keep up the good work. marine.");
quest::say("Keep up the good work. marine.");
quest::say("Keep up the good work. marine.");
quest::say("Great job. marine!!  Word of your heroics shall be passed on to the Admiral.  If you don't have a shield. then take one.  If you do. then get back to the front lines.  This is no time for R n' R!!  Move it. marine!!  Or you'll be pushing Danak till the cockatrice crows!!");
quest::givecash("0","0","1","0");
quest::faction("120","1"); }
}
#END of FILE Zone:overthere  ID:93130 -- Captain_Rottgrime 

