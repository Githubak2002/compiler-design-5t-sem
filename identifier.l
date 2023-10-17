/*lex code to determine whether input is an identifier or not*/
%{ 
#include <stdio.h> 
%} 

%% 

^[_a-zA-Z][a-zA-Z0-9_]* {	printf("Valid Identifier");	} 
^[^a-zA-Z_] {	printf("Invalid Identifier");	} 
%% 

int main(){ 
	printf("enter a string to check if entered string is a IDENTIFIER or not\n");
	yylex();
 	return 0;
} 

