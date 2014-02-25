################################### 
#Zone: Gorge of King Xorbb        #                                              
#Short Name: beholder             #                                                                  
#Zone ID: 16                      #                                        
###################################                                             
#NPC Name: Diggs_Duggun           #                             
#NPC ID: 16013                    #
#Quest Status: Complete           #                                      
###################################
sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("ail, dere! Ain'tcha a sight fer me sore eyes! I knows dat we're strangers an' all, but might I ask a [boon] of ye?");
}
if($text=~/what boon/i){
quest::say("Well. me pickaxe is blunted awfully bad and me ale supplies are dangerously low. If'n ye would be kind enough t' get me a new pick and a couple o' bottles o' dwarven ale. I would be f'rever in yer debt."); }
}
sub EVENT_ITEM {
if($item1=="5018" && $item2=="13036" && $item3=="13036"){
quest::emote("drinks one of the ales and burps loudly");
quest::say("By Brell's Beard! Yer a lifesaver, ya are! 'ere, take dis bone I've found 'ere in dis maze. Looks human ta me and I'm thinkin that a proper burial is in order. Freeport's the closest place dat has one o Marr's temples. I'm thinkin dis was one o' his Holy Knights by da look o' da tattered tunic I found it wrapped in. I'm thinkin Valeron might be havin an interest in it.");
quest::summonitem(6701); }
}


