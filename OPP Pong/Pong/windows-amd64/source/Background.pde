class Background {
color c;

Background(color cParameter) {
c = cParameter;
}
void drawBG() {
fill(c);
rect(0, 0, width, height);
}

}
