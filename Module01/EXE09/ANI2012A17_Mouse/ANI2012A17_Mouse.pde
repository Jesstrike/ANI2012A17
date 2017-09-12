// ANI2012A17_Mouse.pde
// Exemple d'utilisation de l'interactivité à la souris.

// paramètre
float speedMax = 100;

// variables
int mousePositionX;
int mousePositionY;

float mouseVelocityX;
float mouseVelocityY;

float centerX;
float centerY;

float speed;

float offset;

boolean isMousePressedLeft;
boolean isMousePressedRight;

boolean isMouseMoving;

PFont typo;

String textInfo = "bouger & cliquer";

String textMouseClickLeft  = "clic gauche";
String textMouseClickRight = "clic droit";

String textDisplay;

// fonction d'initialisation
void setup()
{
  size(960, 640);

  frameRate(60);

  centerX = width/2;
  centerY = height/2;

  offset = centerX/2;

  isMousePressedLeft = false;
  isMousePressedRight = false;
  isMouseMoving = false;

  typo = loadFont("Monospaced-64.vlw");

  textFont(typo);
  textAlign(CENTER);

  rectMode(CORNER);
}

// fonction de mise à jour de l'affichage
void draw()
{
  // calculé la vélocité du mouvement du curseur
  mouseVelocityX = mouseX - mousePositionX;
  mouseVelocityY = mouseY - mousePositionY;

  // garder une copie de la position courante
  mousePositionX = mouseX;
  mousePositionY = mouseY;

  // calculer la vistesse du curseur en fonction de sa vélocité
  speed = sqrt(mouseVelocityX * mouseVelocityX + mouseVelocityY * mouseVelocityY);

  // ne pas dépasser une vistesse maximale
  if (speed > speedMax)
    speed = speedMax;

  // changer le couleur d'arrière-plan en fonction de la vitesse du curseur
  background(int(map(speed, 0, speedMax, 0, 255)));

  textSize(48);

  if (isMousePressedLeft)
  {
    fill(192, 192);
    rect(0, 0, centerX, height);

    fill(255);
    text(textMouseClickLeft, centerX - offset, centerY);
  }

  if (isMousePressedRight)
  {
    fill(192, 192);
    rect(centerX, 0, centerX, height);

    fill(255);
    text(textMouseClickRight, centerX + offset, centerY);
  }

  fill(255);
  textSize(16);
  text("position (" + mousePositionX + ", " + mousePositionY + ")", width/8, height/16);
  text("vélocité (" + mouseVelocityX + ", " + mouseVelocityY + ")", width - width/8, height/16);

  textSize(24);
  text(textInfo, centerX, height - (height/16));
}

// fonction appelée lorsqu'un bouton de la souris est enfoncé
void mousePressed()
{
  if (mouseButton == LEFT)
    isMousePressedLeft  = true;
  if (mouseButton == RIGHT)
    isMousePressedRight = true;
}

// fonction appelée lorsqu'un bouton de la souris est relaché
void mouseReleased()
{
  if (mouseButton == LEFT)
    isMousePressedLeft  = false;
  if (mouseButton == RIGHT)
    isMousePressedRight = false;
}