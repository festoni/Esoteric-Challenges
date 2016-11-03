>
,------------------------------------------------
[[>]---[<]>-]>						      A
[

     [<]
     ++++++++++.----------
     >
     [++++++++++++++++++++++++++++++++++++++++++++++++++++.  B
     ---------------------------------------------------->]  C
     <[<]>
     [
       [
        +[[<]<]---                                           D
        >
       ]
       <[+]>
     ]
     >
]


//Additional.
//Add one more MINUS at points A, C and D (PLUS instead of MINUS at B) for 4-ary generation, or two-more for 5-ary, 
//three for 6-ary and so on. The result will always be in reverse lexicographic order (if reverse is the right word!)'


Commented Version:

>								leave first cell as 0; to use later on to move between cells and print newlines
,------------------------------------------------         	take user input for desired length n and convert it from ASCII to decimal
[[>]---[<]>-]>						      	create n new cells; initialized to 253; we will use 253=1; 254=2; 0=3
[

     [<]							move to first cell and print a newline
     ++++++++++.----------					print newline
     >								move to first digit of the current string
     [++++++++++++++++++++++++++++++++++++++++++++++++++++.  	print (output) each of the current string digits one by one
     ---------------------------------------------------->]  
     <[<]>						 	move to the first digit of current string
     [
       [							this algorithm works like a recursive function;
        +[[<]<]---                                           	     funct: 
        >								if digit is 1 or 2: increment and exit function
       ]								if digit is 3: make it a 1; move right to next digit; call function again 
       <[+]>                                                 	this fixes the cells that are made into 1 unneccessarily; during a 1 or 2 digit run
     ]
     >								loop check; check if next string needs to be printed; or exit if all were printed
]
