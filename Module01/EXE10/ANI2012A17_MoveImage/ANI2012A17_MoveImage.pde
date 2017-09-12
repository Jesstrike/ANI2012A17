// ANI2012A17_MoveImage.pde
// Animation de la position d'une image en fonction des touches du clavier

// paramètre
int speed = 2;

// variables
int positionX;
int positionY;

boolean isKeyPressedUp    = false;
boolean isKeyPressedDown  = false;
boolean isKeyPressedLeft  = false;
boolean isKeyPressedRight = false;

PImage img;

// fonction d'initialisation
void setup()
{
  size(512, 512);
  frameRate(60);

  positionX = width/2;
  positionY = height/2;

  // charger une image (à partir du répertoire /data)
  img = loadImage("gertie.jpg");

  // coordonnées (0, 0) au centre de l'image
  imageMode(CENTER);
}

// fonction de mise à jour de l'affichage
void draw()
{
  background(63);

  if (isKeyPressedUp)
    positionY -= speed;
  if (isKeyPressedDown)
    positionY += speed;
  if (isKeyPressedLeft)
    positionX -= speed;
  if (isKeyPressedRight)
    positionX += speed;

  // rendre l'image à la position courante
  image(img, positionX, positionY, img.width/3, img.height/3);
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
    isKeyPressedUp    = state;
  if (keyCode == DOWN)
    isKeyPressedDown  = state;
  if (keyCode == LEFT)
    isKeyPressedLeft  = state;
  if (keyCode == RIGHT)
    isKeyPressedRight = state;
}