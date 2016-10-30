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


>+>+>+>,>, 	           create three dummy variables; and ask user for two inputs
<			   goto factor1 cell
[ factor1loop begin        this is factor 1 or outer loop; it runs factor1 times  
 >			   goto factor2 cell
 [ factor2loop begin       this is factor 2 or inner loop; it runs factor2 times (relative) or factor2*factor1 times (absolute) 
   ->+                     decrement factor2 cell; increment factor2temp cell 
   >                       move to 256^0 cell 
   +[[>]]>+                algorithm which updates the result as needed; increment 256^0 cell; otherwise increment 256^0 and increment 256^1 cell 
   <<<<<<<[<]              the algorithm may increment a random unused cell; because the algorithm above can run into three different cases of cells
   >>>>>>>>>[-]>[-]           256^0 and 256^1; cases being: X0; XX; or 0X; the pointer after exiting the algorithm can be in any of the three 
   <<<<<<<[<]                 different cells; these 3 lines of code (making use of the three dummy cells) make sure the random incremented  
   >>>>>                      cells are brought back to their initial value; and makes sure loop check is at the same point each time; factor2 cell
 ] factor2loop end
 >[<+>-]<                  this code brings back factor2 cell to it's factor2 value; using the factor2temp cell
 <-                        this makes sure the factor1 loop check happens at factor1 cell
] factor1loop end
>[-]                       these last two lines of code delete all the dummy cells; factor1; factor2; and factor2temp;
<<[[-]<]                   such that only the end product is left written on the cells 


