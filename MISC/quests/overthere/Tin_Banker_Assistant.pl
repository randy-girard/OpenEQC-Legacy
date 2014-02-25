# Tin Banker Assistant
# receives A Metal Key for Necro Skull Cap 5
# obtain Dusty Tome (14382)

sub EVENT_SAY {
  if ($text=~/hail/i) {
    quest::say("Insert Metal Key *whirrrr*.");  
  }
}

sub EVENT_ITEM {
  if ($itemcount{12849}==1) { 
    quest::say("*Whirrrr*"); 
    quest::summonitem(14382);
  }
}