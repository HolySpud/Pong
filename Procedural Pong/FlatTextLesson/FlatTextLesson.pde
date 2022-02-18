size(600, 600);
println("Hello, World!");
String[] fontList = PFont.list(); 
printArray(fontList);
PFont titleFont = createFont("Power Clear", 159);
float titleX, titleY, titleWidth, titleHeight, startX, startY, startWidth, startHeight;
titleX = width/5;
titleY = height/10;
titleWidth = width*3/5;
titleHeight = height/10;
startX = width/5;
startY = height/4.5;
startWidth = width*3/5;
startHeight = height/10;
rect(titleX, titleY, titleWidth, titleHeight);
String title = "Wahoo!";
String start = "Press any key to continue";
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
//Start Text
//fill(mainInk);
//textAlign(CENTER, CENTER);
//textFont(titleFont, startY/1.1);
//text(start, startX, startY, startWidth, startHeight);
