import peasy.*;

PeasyCam cam;

// UP, DOWN, RIGHT, LEFT, FRONT, BACK
final int UP_ = 0;
final int DWN = 1;
final int RGT = 2;
final int LFT = 3;
final int FRT = 4;
final int BCK = 5;

color[] colors = {
  #FFFFFF, #FFFF00, 
  #FFA500, #FF0000, 
  #00FF00, #0000FF
};

int dim = 3;
Cublet[][][] cube = new Cublet[dim][dim][dim];

void setup() {
  size(600, 600, P3D); 
  cam = new PeasyCam(this, 800);
  for (int i = 0; i < dim; i++) {
    for (int j = 0; j < dim; j++) {
      for (int k = 0; k < dim; k++) {
        float len = 100;
        float offset = (dim - 1)* len * 0.5;
        float x = len * i - offset;
        float y = len * j - offset;
        float z = len * k - offset;
        cube[i][j][k] = new Cublet(x, y, z, len);
      }
    }
  }
}

void draw() {
  background(51); 
  for (int i = 0; i < dim; i++) {
    for (int j = 0; j < dim; j++) {
      for (int k = 0; k < dim; k++) {
        cube[i][j][k].show();
      }
    }
  }
}
