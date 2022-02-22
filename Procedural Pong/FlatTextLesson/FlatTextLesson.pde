size(600, 600);
println("Hello, World!");
String[] fontList = PFont.list(); 
printArray(fontList);
PFont titleFont = createFont("Power Clear", 159);
float titleX, titleY, titleWidth, titleHeight;
titleX = width/5;
titleY = height/10;
titleWidth = width*3/5;
titleHeight = height/10;
rect(titleX, titleY, titleWidth, titleHeight);
String title = "Wahoo!";
color mainInk = #D05CEA; //Daytime only, not for night mode
color nightModeInk = #121212;
color resetInk = #000000;
//Text Initialization
//Title Text
fill(mainInk); //Ink
textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
textFont(titleFont, titleY/1.1); //Change the number until it fits, largest font size
text(title, titleX, titleY, titleWidth, titleHeight);
fill(resetInk); //Ink to default
