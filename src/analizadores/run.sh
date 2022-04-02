clear && 
echo ">> Analsis lexico ***************************************************************" &&
java -jar jflex-full-1.7.0.jar A_lexico.jflex && 
echo -e "\n\n>> Analsis sintactico ***********************************************************" &&
java -jar java-cup-11b.jar -parser Analizador_sintactico -symbols Simbolos A_sintactico.cup