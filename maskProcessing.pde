PGraphics imagen;
PGraphics mascara;

void setup() {
  size(400, 400);

  imagen = createGraphics(400, 400);

  mascara = createGraphics(400, 400);

  mascara.beginDraw();
  mascara.circle(200, 200, 150);
  mascara.endDraw();

  dibujar();

  enmascarar();
}

void draw() {
  background(0);
  image(imagen, 0, 0);
}

void dibujar() {
  imagen.beginDraw();

  for (int i = 1; i < 5; i++) {
    imagen.rect(i * 40, 0, 20, 300);
  }

  imagen.endDraw();
}
void mouseClicked() {
  enmascarar();
}
void enmascarar() {

  mascara = createGraphics(400, 400);

  mascara.beginDraw();
  mascara.circle(mouseX, mouseY, 150);
  mascara.endDraw();

  imagen.mask(mascara);
}
