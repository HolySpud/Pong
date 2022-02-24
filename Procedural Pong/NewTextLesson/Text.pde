//Copy over to all text lines
//Refer to procedures to execture in setup(), draw(), and whenever drawing text
//
//Global Variables
PFont titleFont;
int titleX, titleY, titleWidth, titleHeight;
String title = "Wahoo!", title2 = "Yahoo!";
color purpleInk = #88007D, nightModeInk = #04B200, resetColor = #000000;
//
void textSetup() 
{
String[] fontList = PFont.list();
titleFont = createFont("Power Clear", 50);
//Population
titleX = width/5;
titleY = height/10;
titleWidth = width/2;
titleHeight = height/10;

}
void textLayout() {
rect(titleX, titleY, titleWidth, titleHeight); 
}

void preDrawText(color inkInitial, PFont font, int fontSize, int alignHorizontal, int alignVertical) {
fill(inkInitial);
textAlign(alignHorizontal, alignVertical); 
textFont(font, fontSize); 
}

void textGen(color inkInitial, PFont font, int fontSize, int alignHorizontal, int alignVertical, String text, int X, int Y, int W, int H, color inkFinal) {
preDrawText(inkInitial, font, fontSize, alignHorizontal, alignVertical);
text(text, X, Y, W, H);
textReset(inkFinal);
}
//text(title, titleX, titleY, titleWidth, titleHeight);
void textReset(color inkFinal) {
fill(inkFinal); //Ink to default
}//End textReset

float textCalculator(float size, float rectWidth, String string) 
{
  
  textSize(size);
  while (textWidth(string) > rectWidth) {
  size = size * 0.99;
  }
  return size;
}
