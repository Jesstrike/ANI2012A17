// ANI2012A17_Variables.pde
// Exemples de déclaration et d'initialisation de variables de différents types.

// 1. déclaration et initialisation de variables de types primitifs
boolean logic       = true;      // 8 bits
byte    smallnumber = 127;       // 8 bits
char    letter      = 'z';       // 16 bits
int     integer     = 1024;      // 32 bits
float   realnumber  = 1.618034f; // 32 bits
double  hugenumber  = 1.618034;  // 64 bits

// 2. déclaration et initialisation de variables de types complexes
String  textmessage = "abcdefghij";
PVector vector      = new PVector(1,2,3);

// 3. afficher la valeur des variables dans la console
println("value of variable 'logic'       : " + logic);
println("value of variable 'smallnumber' : " + smallnumber);
println("value of variable 'letter'      : " + letter);
println("value of variable 'integer'     : " + integer);
println("value of variable 'realnumber'  : " + realnumber);
println("value of variable 'hugenumber'  : " + hugenumber);
println("value of variable 'textmessage' : " + textmessage);
println("value of variable 'vector'      : " + vector);
