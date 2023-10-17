%{ 
#include <stdio.h> 
#include <string.h> 
char temp[10];
int i=0, ob=0, cb=0;
extern FILE *yyin;
%}
%%
"("[()]*")"";" {
strcpy(temp, yytext);
printf("%s\n", temp);
while(temp[i]!=';') {
if(temp[i] == '(')
ob++;
if(temp[i] == ')')
cb++;
i++;
}
if(ob==cb)
printf("Well formed\n");
else
printf("Not well formed\n");
} 
%% 
void main(int argc, char *argv[]) 
{ 
FILE *fp=fopen(argv[1],"r");
yyin=fp;
yylex();
fclose(fp);
} 

