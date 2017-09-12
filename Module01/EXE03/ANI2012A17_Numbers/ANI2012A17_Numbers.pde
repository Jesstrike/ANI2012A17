// ANI2012A17_Numbers.pde
// Exemples de déclarations et d'opérations sur des variables numériques.

// 1. déclaration et initialisation de variables numériques entières (int)
int a = 1;
int b = 2;
int c = 3;

println("a = " + a);
println("b = " + b);
println("c = " + c);

// 2. déclaration et initialisation de variables numériques réelles (float)
float d = 1.0f;
float e = 2.5f;

println("d = " + d);
println("e = " + e);

// 3. déclaration de variables numériques non-initialisées
int   iResult;
float fResult;

// 4. opérateur d'addition entre deux variables numériques entières
// (int) + (int) = (int)
iResult = a + b;
println("a + b = " + iResult);

// 5. opérateur d'addition entre deux variables numériques réelles
// (float) + (float) = (float)
fResult = d + e;
println("d + e = " + fResult);

// 6. opérateur d'addition entre une variable numérique entière et une réelle
// (int) + (float) = (float)
fResult = a + d;
println("a + d = " + fResult);

// 7. opérateur de soustraction entre deux variables numériques entières
// (int) - (int) = (int)
iResult = b - a;
println("b - a = " + iResult);

// 8. opérateur de multiplication entre deux variables numériques entières
// (int) * (int) = (int)
iResult = a * b;
println("a * b = " + iResult);

// 9. opérateur de multiplication entre une variable numérique entière et une réelle
// (int) * (float) = (float)
fResult = a * e;
println("a * e = " + fResult);

// 10. opérateur de division entre deux variables numériques entières (retourne la partie entière)
// (int) / (int) = (int)
iResult = b / a;
println("b / a = " + iResult);

// 11. opérateur de modulo entre deux variables numériques entières (retourne le reste de la division)
// (int) % (int) = (int)
iResult = b % a;
println("b % a = " + iResult);

// 12. opérateur de division entre une variable numérique réelle et une entière
// (float) / (int) = (float)
fResult = d / a;
println("d / a = " + fResult);

// 13. opérateur de modulo entre une variable numérique entière et une réelle
// (int) % (float) = (float)
fResult = b % d;
println("b % d = " + fResult);

// 14. préséance des termes entre parenthèse ouvrante '(' et fermante ')'
fResult = (a + b) * c;
println("(a + b) * c = " + fResult);

// 15. préséance des termes entre parenthèse ouvrante '(' et fermante ')'
fResult = a + (b * d);
println("a + (b * d) = " + fResult);

// 16. constante numérique (en majuscule par convention)
float PHI = 1.618034;
println("PHI = "+ PHI);

// 17. constantes numériques prédéfinies (valeur et demi-valeur de PI, la constante trigonométrique)
double valueOfPi1 = PI;
double valueOfPi2 = HALF_PI;
println("PI = "+ valueOfPi1 + " HALF_PI = "+ valueOfPi2);
