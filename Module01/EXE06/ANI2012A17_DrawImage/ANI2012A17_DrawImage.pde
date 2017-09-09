// ANI2012A17_DrawImage.pde
// Exemple d'importation et d'affichage d'une image cadrée sur la fenêtre.
// Le fichier image doit se trouver dans une répertoire appelé 'data' situé au même endroit que le fichier source (le principal fichier .pde)
// Les données de l'image seront importées dans une instance de PImage, une classe de Processing pour la gestion d'images.
// Une classe est une spécification des propriétés (variables) et des méthodes (fonctions) qui opèrent sur un type de donnée.
// Une classe permet donc de créer des instances indépendantes d'objets d'un certain type (on y reviendra en détail dans le module 3).

// déclaration d'une variable de type PImage pour référencer l'image
PImage img;

// fonction d'initialisation
void setup()
{
  // fenêtre d'affichage avec les mêmes dimensions que l'image
  size(512, 770);

  // importer l'image à partir du répertoire /data
  img = loadImage("gertie.jpg");
}

// fonction de mise à jour de l'affichage
void draw()
{
  // dessiner l'image à l'origine du système de coordonnées
  image(img, 0, 0);
}
