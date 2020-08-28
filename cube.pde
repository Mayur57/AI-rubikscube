class Cublet {
  PVector pos;
  float len;

  Cublet(float x, float y, float z, float len_) {
    pos = new PVector(x, y, z);
    len = len_;
  }

  void show() {
    fill(255);
    stroke(0);
    strokeWeight(8);
    pushMatrix(); 
    translate(pos.x, pos.y, pos.z);
    beginShape(QUADS);
    float r = len / 2;

    // z-fixed
    fill(colors[BCK]);
    vertex(-r, -r, -r);
    vertex(r, -r, -r);
    vertex(r, r, -r);
    vertex(-r, r, -r);

    fill(colors[FRT]);
    vertex(-r, -r, r);
    vertex(r, -r, r);
    vertex(r, r, r);
    vertex(-r, r, r);

    // y-fixed
    fill(colors[DWN]);
    vertex(-r, -r, -r);
    vertex(r, -r, -r);
    vertex(r, -r, r);
    vertex(-r, -r, r);

    fill(colors[UP_]);
    vertex(-r, r, -r);
    vertex(r, r, -r);
    vertex(r, r, r);
    vertex(-r, r, r);


    // x-fixed
    fill(colors[LFT]);
    vertex(-r, -r, -r);
    vertex(-r, r, -r);
    vertex(-r, r, r);
    vertex(-r, -r, r);

    fill(colors[RGT]);
    vertex(r, -r, -r);
    vertex(r, r, -r);
    vertex(r, r, r);
    vertex(r, -r, r);



    endShape();


    //box(len);
    popMatrix();
  }
}
