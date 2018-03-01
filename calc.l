%{
    int a,b,f,i=0;
%}

%%
[+] {f=0;}
[-] {f=1;}
[*] {f=2;}
[/] {f=3;}
[0-9]+ {
            if(i=0){
                a=atoi(yytext);
                i=1;
                }
            
            else{
                b=atoi(yytext);
                if(f==0)
                    a+=b;
                else if(f==1)
                    a-=b;
                else if(f==2)
                    a*=b;
                else
                    a/=b;
                }
            }
\n {return;}

%%

int main(){
    printf("Enter expression: ");
    yylex();
    printf("Result= %d\n",a);
    return 0;
    }                       
