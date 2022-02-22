//Copy over to all text lines
//Refer to procedures to execture in setup(), draw(), and whenever drawing text
//
//Global Variables
PFont titleFont;
int titleX, titleY, titleWidth, titleHeight;
String title = "Wahoo!";
color purpleInk = #88007D, nightModeInk = #04B200, resetColor = #000000;
//
void textSetup() 
{
String[] fontList = PFont.list();
titleFont = createFont("Power Clear", 20);
//Population
titleX = width/5;
titleY = height/10;
titleWidth = width*3/5;
titleHeight = height/10;
}
void textLayout() {
rect(titleX, titleY, titleWidth, titleHeight); 
}

void preDrawText(color inkInitial, PFont font, int fontSize) {
fill(inkInitial); //Ink
textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
textFont(font, fontSize); //Change the number until it fits, largest font size
}
//fill(purpleInk);
//textAlign(CENTER, CENTER); 
//textFont(titleFont, titleY/1.1); 
void textGen(color inkInitial, PFont font, int fontSize, String text, int X, int Y, int W, int H, color inkFinal) {
preDrawText(inkInitial, font, fontSize);
text(text, X, Y, W, H);
textReset(inkFinal);
}
//text(title, titleX, titleY, titleWidth, titleHeight);
void textReset(color inkFinal) {
fill(inkFinal); //Ink to default
}//End textReset
