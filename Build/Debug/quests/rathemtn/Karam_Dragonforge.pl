sub EVENT_SAY {
 if($text=~/hail/i){
  quest::say('Welcome. I have a number of platemail items, if you are interested. I am also a master [smith] of exotic materials such as dragon scales.');
  }
 elsif($text=~/smith what/i){
  quest::say('Dragon scales make terrfic armor. I can make a [white dragonscale cloak] and [red dragonscale armor]. I have not seen any other colored dragon variants around. But if you see any, be sure to let me know. I would be interested in what can be made from their scales.');
  }
 elsif($text=~/what white dragonscale cloak/i){
  quest::say('Hrmmm. A white dragonscale cloak eh? Hrmmm. Well, I will make you a deal. You can save me some footwork and I will craft your cloak. I want to propose to my [fiancee] but I have neither a [wedding ring] nor a [present] for her. So, return with a white dragon hide, a wedding ring, and a present for my fiancee, and I will fashion your cloak for you.');
  }
 elsif($text=~/what fiancee/i){
  quest::say('My fiancee...AHHHH.... The love of my life. My purpose for existing. She is a real woman. Long, golden blonde hair with a similarly colored full beard. A stout broad she is, kind and warm at heart. She knows every nook of my essence. But do not let that fool you. She is as strong as many dwarven men. Between you and me, she has even beaten me once or twice armwrestling over who gets the last ale and who has to go to the market.');
  }
 elsif($text=/what wedding ring/i){
  quest::say('Only the best will do. I will not propose to her with anything less than a platinum and diamond wedding ring.');
  }
 elsif($text=/what present/i){
  quest::say('Well, she is quite fond of jewelry. And a black sapphire platinum necklace would complement her eyes and beard so exquisitely.');
  }
 }

 sub EVENT_ITEM {
  if(plugin::check_handin(\%itemcount, 16814 => 1, 16806 => 1, 9240 => 1)){
   quest::say('My fiancee will be so excited! An exquisite ring for the wedding and a gorgeous necklace as my wedding gift to her. Well, as promised, here is your white dragonscale cloak.');
   quest::summonitem('11603');
   } else {
   quest::say('I do not need this little one');
   plugin::return_items(\%itemcount);
   }
  }

  #Submitted by: Senzo aka Fatty Beerbelly
  #Item_IDs : taken from : http://eqitems.13th-floor.org/
  #END of FILE : Zone : rathemtn : NPC_ID : 50119 : Karam Dragonforge
