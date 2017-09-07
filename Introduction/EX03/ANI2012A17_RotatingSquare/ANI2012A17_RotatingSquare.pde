// ANI2012A17_RotatingSquare.pde
// Animation d'un carré qui tourne autour du centre de la fenêtre d'affichage avec un effet de flou en option.

// section de déclaration et d'initialisation de variables

// 'int' est pour une variable numérique de type nombre entier (ex: 0, 1, 2, 3)
// 'float' est pour une variable numérique de type nombre réel (ex: 0.0, 0.1, 0.2)

// variable initialisée avec une valeur (le nombre 127)
int squareSize = 127;

// variable non-initialisée (elles seront initialisée plus bas dans la fonction setup)
float centerX;
float centerY;

// angle de rotation courant
float angleCurrent;

// valeur à ajouter à l'angle de rotation courant à chaque mise à jour de l'animation
float angleOffset = 0.01;

// option pour ajouter un effet de flou ('true' pour actif et 'false' pour inactif)
boolean blur = false;

// fonction d'initialisation du programme
void setup()
{
  // cadence de rafraichissement de l'animation
  frameRate(60);

  // dimension de la fenêtre d'affichage (largeur et hauteur en pixels)
  size(256, 256);

  // option pour ne pas dessiner de ligne de contour
  noStroke();

  // calculer la position en X du centre de la fenêtre ('width' est la largeur en pixels)
  centerX = width / 2;

  // calculer la position en Y du centre de la fenêtre ('height' est la hauteur en pixels)
  centerY = height / 2;

  // angle initial
  angleCurrent = 0;
}

// fonction d'affichage du programme
void draw()
{
  // valider si une condition est vrai ou fausse
  if (blur)
  {
    // section de code exécutée seulement si la condition est vraie

    // couleur de remplissage (paramètres : couleur en ton de gris et niveau de transparence, entre 0 et 255)
    fill(0, 7); // noir transparent

    // dessiner les rectangles à partir du coin supérieur gauche
    rectMode(CORNER);

    // dessiner un rectangle semi-transparent qui couvre toute la fenêtre
    rect(0, 0, width, height);
  }
  else
  {
    // section de code exécutée seulement si la condition est fausse

    // effacer le contenu de la fenêtre et le remplacer par la couleur noire
    background(0);
  }

  // ramener le système de coordonnées au centre de la fenêtre d'affichage par translation
  translate(centerX, centerY);

  // augmenter la valeur de l'angle courant
  angleCurrent = angleCurrent + angleOffset;

  // rotation du système de coordonnées en fonction de l'angle courant
  rotate(angleCurrent);

  // couleur de remplissage
  fill(255, 255); // blanc opaque

  // dessiner les rectangles à partir de leur centre
  rectMode(CENTER);

  // dessiner un carré au centre du système de coordonnées (le carré est un rectangle de largeur et hauteur équivalentes)
  rect(0, 0, squareSize, squareSize);
}

// fonction exécutée quand une touche du clavier est relachée
void keyReleased()
{
  // inverser la valeur de la variable (si vrai alors faux, si faux alors vrai)
  blur = !blur;
}