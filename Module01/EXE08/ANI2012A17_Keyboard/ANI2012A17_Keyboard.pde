// ANI2012A17_Keyboard.pde
// Exemple d'utilisation de l'interactivité au clavier.

// paramètre
float offset = 180;

// variables
boolean isKeyPressedSpace = false;
boolean isKeyPressedEnter = false;

boolean isKeyPressedUp    = false;
boolean isKeyPressedDown  = false;
boolean isKeyPressedLeft  = false;
boolean isKeyPressedRight = false;

boolean isKeyPressedW = false;
boolean isKeyPressedS = false;
boolean isKeyPressedA = false;
boolean isKeyPressedD = false;

float centerX;
float centerY;

PFont typo;

String textInfo = "appuyer sur des touches du clavier\n(flèches, WSAD, espace)";

String textKeySpace = "ESPACE";

String textKeyUp    = "HAUT";
String textKeyDown  = "BAS";
String textKeyLeft  = "GAUCHE";
String textKeyRight = "DROITE";

String textDisplay;

char textKeyW = 'W';
char textKeyS = 'S';
char textKeyA = 'A';
char textKeyD = 'D';

// fonction d'initialisation
void setup()
{
  size(960, 540);

  frameRate(60);

  centerX = width/2;
  centerY = height/2;

  typo = loadFont("Monospaced-64.vlw");

  textFont(typo);
  textAlign(CENTER, CENTER);
}

// fonction de mise à jour de l'affichage
void draw()
{
  background(63);

  textSize(48);

  if (isKeyPressedSpace)
    text(textKeySpace, width/2, height/2);
  if (isKeyPressedUp)
    text(textKeyUp, centerX, centerY - offset);
  if (isKeyPressedDown)
    text(textKeyDown, centerX, centerY + offset);
  if (isKeyPressedLeft)
    text(textKeyLeft, centerX - offset, centerY);
  if (isKeyPressedRight)
    text(textKeyRight, centerX + offset, centerY);
  if (isKeyPressedW)
    text(textKeyW, centerX/2, centerY - offset);
  if (isKeyPressedS)
    text(textKeyS, centerX/2, centerY);
  if (isKeyPressedA)
    text(textKeyA, centerX/2 - offset, centerY);
  if (isKeyPressedD)
    text(textKeyD, centerX/2 + offset, centerY);

  textSize(24);
  text(textInfo, centerX, height - (height/16));
}

// fonction appelée lorsqu'un bouton du clavier est enfoncé
void keyPressed()
{
  updateKeyboard(true);
}

// fonction appelée lorsqu'un bouton du clavier est relaché
void keyReleased()
{
  updateKeyboard(false);
}

// fonction de mise à jour l'état des touches du clavier
void updateKeyboard(boolean state)
{
  if (keyCode == UP)
    isKeyPressedUp     = state;
  if (keyCode == DOWN)
    isKeyPressedDown   = state;
  if (keyCode == LEFT)
    isKeyPressedLeft   = state;
  if (keyCode == RIGHT)
    isKeyPressedRight  = state;
  if (key == ' ')
    isKeyPressedSpace  = state;
  if (key == 'w' || key == 'W')
    isKeyPressedW      = state;
  if (key == 's' || key == 'S')
    isKeyPressedS      = state;
  if (key == 'a' || key == 'A')
    isKeyPressedA      = state;
  if (key == 'd' || key == 'D')
    isKeyPressedD      = state;
}
