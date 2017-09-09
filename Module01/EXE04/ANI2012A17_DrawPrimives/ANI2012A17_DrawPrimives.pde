// ANI2012A17_DrawPrimives.pde
// Générer un dessin à partir de primitives vectorielles (ligne, rectangle et ellipse).

// dimension de la fenêtre
size(512, 512);

// configurer la couleur du trait
stroke(63);

// configurer l'épaisseur du trait
strokeWeight(8);

// appels des fonctions de dessin des primitives vectorielles
rect   ( 0,       0,        width,   height   );
line   ( 0,       0,        width,   height   );
line   ( 0,       width,    height,  0        );
ellipse( 0,       0,        width/5, height/5 );
ellipse( width,   height,   width/5, height/5 );
ellipse( 0,       height,   width/5, height/5 );
ellipse( width,   0,        width/5, height/5 );
ellipse( width/2, height/2, width/5, height/5 );

// exporter le contenu de la fenêtre d'affichage dans un fichier image
saveFrame("render.png");
