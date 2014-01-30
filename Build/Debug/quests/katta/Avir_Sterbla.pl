sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Greetings $name. I am Avir Sterbla. Governor of Magician Studies here at the Magus Conlegium of Katta Castellum. I am currently in the middle of researching more effective magical methods of combating the [vampyres] of the Coterie of the Eternal Night. Governor Drenic Garrison has been assisting me with the scientific side of the research. that having to do with physical materials that have detrimental effects on the vampyres while my research is more with magical elements.");
}
if($text=~/what vampyres/i){
quest::say("The vampyres are becoming a larger threat to the safety of our citizens and it is the responsibility of the Magus Conlegium to find magical ways of stifling this threat while the Validus Custodus fight them with physical means. However. I am running short on research components. I will trade for every four samples of vampyre blood or every four piles of vampyre ashes."); }
}
#END of FILE Zone:katta  ID:160191 -- Avir_Sterbla 

