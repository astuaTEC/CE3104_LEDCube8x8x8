package codigo;

import static codigo.Tokens.*;
%%
%class Lexer
%type Tokens
L=[a-zA-Z_]+
D=[0-9]+
espacio=[ ,\t,\r,\n]+
%{
    public String lexeme;
%}
%%
type |
Timer|
Rango_Timer |
Dim_Columnas |
Dim_Filas |
Cubo |
range |
list |
True |
False |
insert |
del |
len |
Neg |
T |
F |
Blink |
Delay |
for |
in |
Step |
shapeF |
shapeC |
shapeA |
Procedure |
Seg |
Mil |
Min |
CALL |
Main {lexeme=yytext(); return Reservadas;}
{espacio} {/*Ignore*/}
"--".* {/*Ignore*/}
"=" {return Asignacion;}
"==" {return Igual;}
"+" {return Suma;}
"-" {return Resta;}
"*" {return Multiplicacion;}
"/" {return Division;}
"//" {return DivisionE;}
"%" {return Modulo;}
"<>" {return DistintoQue;}
")" {return ParentesisD;}
"(" {return PArentisisI;}
";" {return PuntoComa;}
"." {return Punto;}
"[" {return ParentesisCI;}
"]" {return ParentesisCD;}
"{" {return LlaveI;}
"}" {return LlaveD;}
"<" {return MenorQue;}
">" {return MayorQue;}
">=" {return MayorIgualQue;}
"<=" {return MenorIgualQue;}
"**" {return Exponencial;}
{L}({L}|{D})* {lexeme=yytext(); return Identificador;}
("(-"{D}+")")|{D}+ {lexeme=yytext(); return Numero;}
 . {return ERROR;}