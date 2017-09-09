// ANI2012A17_FrameCount.pde
// Exemple minimaliste d'un programme avec une boucle de rendu.
// Une boucle de rendu a une fonction de mise à jour de l'affichage qui est exécutée périodiquement.
// Le programme incrémente une variable à chaque itération de cette fonction et affiche sa valeur au centre de la fenêtre d'affichage.
// Notez que Processing offre une variable globale appelée 'frameCount' qui contient la même valeur.

// déclaration d'une variable pour compter le nombre de frames depuis le lancement du programme
int frameCounter;

// fonction d'initialisation
void setup()
{
  // fréquence de mise à jour de l'affichage (1 fois par seconde)
  frameRate(1);

  // initialisation de nombre de frames
  frameCounter = 0;

  // alignement du texte (horizontal et vertical)
  textAlign(CENTER, CENTER);
}

// fonction de mise à jour de l'affichagey
void draw()
{
  // effacer de la fenêtre d'affichage
  background(0);

  // incrémenter le nombre de frames
  frameCounter = frameCounter + 1;

  // afficher le nombre de frames dans la console
  println("frame count: " + frameCounter);

  // afficher le nombre de frames au centre la fenêtre d'affichage
  text(frameCounter, width/2, height/2);
}
