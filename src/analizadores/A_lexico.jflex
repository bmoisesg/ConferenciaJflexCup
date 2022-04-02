package analizadores;
import java_cup.runtime.*;


%%

%public 
%class Analizador_Lexico
%cupsym Simbolos
%cup
%char
%column
%full
%ignorecase
%line
%unicode


num = [0-9]+


%%

<YYINITIAL>{

    "-"           { return new Symbol(Simbolos.trest, yycolumn, yyline, yytext());    }
    "+"           { return new Symbol(Simbolos.tsum, yycolumn, yyline, yytext());     }
    "/"           { return new Symbol(Simbolos.tdiv, yycolumn, yyline, yytext());     }
    "*"           { return new Symbol(Simbolos.tmul, yycolumn, yyline, yytext());     }
    "^"           { return new Symbol(Simbolos.tpot, yycolumn, yyline, yytext());     }
    "%"           { return new Symbol(Simbolos.tmod, yycolumn, yyline, yytext());     }
    "("           { return new Symbol(Simbolos.pare1, yycolumn, yyline, yytext());    }
    ")"           { return new Symbol(Simbolos.pare2, yycolumn, yyline, yytext());    }
    "sen"         { return new Symbol(Simbolos.tsen, yycolumn, yyline, yytext());     }
    "cos"         { return new Symbol(Simbolos.tcos, yycolumn, yyline, yytext());     }
    "tan"         { return new Symbol(Simbolos.ttan, yycolumn, yyline, yytext());     }

    {num}         { return new Symbol(Simbolos.tnum, yycolumn, yyline, yytext());     }

}

[ \t\r\n\f]             { /* Espacios en blanco, se ignoran */	}

.                     	{
                            System.out.println("Error Lexico : "+yytext()+ "Linea"+yyline+" Columna "+yycolumn);
                        }
