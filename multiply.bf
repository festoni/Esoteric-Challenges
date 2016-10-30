//This program addresses the two presented issues in the assignment
//
//ISSUE 1: I managed to work with two factors as input from the user; I use the user input values as actual decimal numbers; One factor can
//only be between 0 to 255; and the way to do this in BF is to use it's ASCII character input; To a user; please look at the site 
//https://www.ascii-code.com/ and get the appropriate Symbol for the desired decimal factor; EG input 'A' for 65; 'a' for 
//'97'; 'ÿ' for 255 and so on; However; there are limitations to this technique; There are no corresponding symbols for decimals 0 to 32; and also 
//for a few other randoms decimals between 0 and 255; Thus; if there is no inputtable symbol for the decimal you want to use as a factor; please 
//replace the appropriate comma in the program with a hardcoded number of pluses you need 
//
//ISSUE 2: This issue is successfully resolved; the product of the two numbers is shown in base 256 (read from right to left); the result only uses 
//two cells because the maximum product of two max factors is 255*255=65025; which in base 256 is 254:1 (read from right to left) thus no more than 
//two cells are required; due to the limiting feature of BF with only 8 bits per cell size

>+>+>+>,>,
<
[ factor1loop begin
 >
 [ factor2loop begin
   ->+
   >
   +[[>]]>+
   <<<<<<<[<]
   >>>>>>>>>[-]>[-]
   <<<<<<<[<]
   >>>>>
 ] factor2loop end
 >[<+>-]<
 <-
] factor1loop end
>[-]
<<[[-]<]



//See below for a commented version of the program
