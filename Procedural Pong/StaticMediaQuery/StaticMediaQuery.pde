int widthRatio = displayWidth;
int heightRatio = displayHeight;
size(500, 500);
widthRatio = width;
heightRatio = height;
println("Display Width:", widthRatio, "\t\tDisplay height:", heightRatio);
//if (widthRatio > heightRatio) println("\nThis is landscape");
//if (widthRatio < heightRatio) println("\nThis is portrait, please rotate");


//if (widthRatio == heightRatio) {
//  println("\nThis is a square, dude");
//} else if (widthRatio < heightRatio) {
//println("\nThis is portrait, please rotate");
//} else {
//println("\nThis is landscape");
//}
String orientation = (widthRatio >= heightRatio) ? "Game On Dude": "Bruh, rotate your phone"; 
println(orientation);
