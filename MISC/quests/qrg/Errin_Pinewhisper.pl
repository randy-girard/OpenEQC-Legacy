#Errin Pinewhisper, QRG, 3041
#No turn-in lines even attempted.
#Status:  Not Complete


sub EVENT_SAY
{
if($text=~/Hail/i)
  {
  quest::say("Welcome to Surefall Glade friend. I am Errin Pinewhisper, Ranger of Karana the Storm Lord. You will find worshipers of both Karana and Tunare residing here in harmony. I train young rangers of both faiths and assist them in getting prepared for work in the often dangerous lands beyond the glade. If you are in need of a [sturdy outfit] suitable for work as a young ranger then I will gladly instruct you on the means to obtain one.");
  }
 
if($text=~/sturdy outfit/i)
  {
  quest::say("This specially prepared curing kit will allow you to craft an outfit that will protect you in the wilds of Norrath. The materials required for the outfit vary depending on the piece you desire to craft. Do you desire to craft Pine Scout [Gloves], Pine Scout [Boots], a Pine Scout [Bracer], a Pine Scout [Cap], Pine Scout [Leggings], Pine Scout [Sleeves], or a Pine Scout [Tunic]? Once you are properly outfitted there is an [issue] that you may be of assistance in resolving.");
  quest::summonitem(17125);
  }
 
if($text=~/bracer/i)
  {
  quest::say("To craft an Pine Scout Bracer you require a [silk thread], a ruined gnoll chain bracer, and a giant field rat whiskers. Once you have the necessary components combine them in your Curing Kit with this Tattered Wristband Pattern.");
  quest::summonitem(19558);
  }
 
if($text=~/cap/i)
  {
  quest::say("To craft a Pine Scout Cap you require two [silk thread], a ruined gnoll chain cap, a large whiskered bat fur, and a large field rat pelt. Once you have the necessary components combine them in your Curing Kit with this Tattered Coif Pattern.'");
  quest::summonitem(19555);
  }
 
if($text=~/tunic/i)
  {
  quest::say("To craft a Pine Scout Tunic you require four [silk thread], a ruined gnoll chain tunic, a giant whiskered bat fur, and a giant field rat pelt. Once you have the necessary components combine them in your Curing Kit with this Tattered Tunic Pattern.");
  quest::summonitem(11395);
  }
 
if($text=~/issue/i)
  {
  quest::say("A poacher was recently discovered hunting the bears in Surefall Glade and Qeynos Hills. This poacher has been identified as Yollis Jenkin and it appears that he has fled to Western Plains of Karana to escape retribution by the Jaggedpine Treefolk for his murders. Find Yollis Jenkin and tell him the Jaggedpine Treefolk sent you. He is wanted dead or alive so if he resists capture then bring me his head.");
  }
 
if($text=~/gloves/i)
  {
  quest::say("To craft Pine Scout Gloves you require two [silk thread], ruined gnoll chain gloves, two giant field rat whiskers, and a large whiskered bat fur. Once you have the necessary components combine them in your Curing Kit with this Tattered Glove Pattern.");
  quest::summonitem(19559);
  }
 
if($text=~/boots/i)
  {
  quest::say("To craft Pine Scout Boots you require two [silk thread], ruined gnoll chain boots, two giant field rat whiskers, and a large whiskered bat fur. Once you have the necessary components combine them in your Curing Kit with this Tattered Boot Pattern.");
  quest::summonitem(19561);
  }
 
if($text=~/sleeves/i)
  {
  quest::say("To craft Pine Scout Sleeves you require two [silk thread], ruined gnoll chain sleeves, two large whiskered bat furs, and a giant field rat pelt. Once you have the necessary components combine them in your Curing Kit with this Tattered Sleeves Pattern.");
  quest::summonitem(19557);
  }
 
if($text=~/leggings/i)
  {
  quest::say("To craft Pine Scout Leggings you require three [silk thread], ruined gnoll chain leggings, two large whiskered bat furs, and a giant field rat pelt. Once you have the necessary components combine them in your Curing Kit with this Tattered Pant Pattern.");
  quest::summonitem(19560);
  }
}

sub EVENT_ITEM
{
 if($itemcount{19949} == 1)
  {
   quest::summonitem(19950);
   quest::exp(100);
   quest::faction(135,3);
   quest::faction(159,3);
   quest::faction(265,3);
   quest::faction(279,-3);
  }
  elsif(($itemcount{20104} == 1) & ($itemcount{19945} == 1) & ($itemcount{13915} == 1))
  {
   quest::summonitem(20263);
   quest::exp(100);
   quest::faction(135,3);
   quest::faction(159,3);
   quest::faction(265,3);
   quest::faction(279,-3);
  }
  else 
  {
  if($class ne 'Ranger') 
   {
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
  } 
} 
