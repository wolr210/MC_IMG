PImage originalImg; // image to MC-ify
String image = "Phantom Thieves.png"; // name of image
float scale = 1; // scale to display image (DOES NOT AFFECT ACTUAL IMAGE, ONLY WHAT IS SHOWN WHEN PROGRAM IS DONE)

int[] materialsUsed = new int[58]; // amount of each material used
float[] colorBias = new float[] {0.3, 0.59, 0.11}; // influence of red, green, and blue values in closest color subprogram (default values 0.3, 0.59, 0.11)
float[] colorShift = new float[] {0.71, 0.86, 1.0}; // different shades of each color
int[] relativeXYZ = new int[] {0, 0, 0}; // current position to place blocks
int yOffset; // y-offset for each block

PrintWriter output; // writes blocks and materials to file
PrintWriter commandOutput; // writes the commands that can be used to autoplace the image
PrintWriter functionOutput; // creates a .mcfunction file which you can put into your world folder

int overFlowCounter = 0; // ensures that each command adheres to 32.5k character limit (currently ~400 subcommands per command, might be able to increase?)

public MC_Color findClosestColor(color col) {
  
  MC_Color closest = null;
  double min = 10000;
  for(MC_Color c : MC_Color.values()) {
    for(int i = 0; i < colorShift.length; i++) {
      double temp = Math.pow((red(col) - c.getRed() * colorShift[i]) * colorBias[0],2) + Math.pow((green(col) - c.getGreen() * colorShift[i]) * colorBias[1],2) + Math.pow((blue(col) - c.getBlue() * colorShift[i]) * colorBias[2],2);
      if(temp < min) {
        yOffset = i - 1;
        min = temp;
        closest = c;
      }
    }
  }
  return closest;
  
}

// loads image, displays dimensions, prepares Processing drawing window
void settings() {

  PImage img = loadImage(image);
  size((int)(img.width * scale), (int)(img.height * scale));
  println("Width: " + (img.width * scale));
  println("Height: " + (img.height * scale));
  
}

void setup() {

  originalImg = loadImage(image);
  originalImg.loadPixels();

  output = createWriter("blocks.txt");
  
  commandOutput = createWriter("commands.txt");
  commandOutput.print("/summon falling_block ~ ~1 ~ {Time:1,BlockState:{Name:redstone_block},Passengers:[{id:falling_block,Passengers:[{id:falling_block,Time:1,BlockState:{Name:activator_rail},Passengers:[");
  
  functionOutput = createWriter(image.toLowerCase().replaceAll("\\s","_").replaceAll("[^a-zA-Z0-9_.]", "") + ".mcfunction");

  relativeXYZ[1] = originalImg.height;
  for(int i = 0; i < originalImg.width; i++) {
    output.print("Column " + (i + 1) + ": ");
    for(int j = 0; j < originalImg.height; j++) {
      overFlowCounter++;
      MC_Color closestColor = findClosestColor(originalImg.pixels[i + j * originalImg.width]);
      materialsUsed[closestColor.ordinal()]++;
      relativeXYZ[1] += yOffset;
      relativeXYZ[2]++;
      if(overFlowCounter >= 400) {
        commandOutput.print("{id:command_block_minecart,Command:'kill @e[distance=..1]'}]}]}]}\n\n/summon falling_block ~ ~1 ~ {Time:1,BlockState:{Name:redstone_block},Passengers:[{id:falling_block,Passengers:[{id:falling_block,Time:1,BlockState:{Name:activator_rail},Passengers:[");
        overFlowCounter = 0;   
      }
      output.print(closestColor.getBlock() + (yOffset == -1 ? " (down 1); " : yOffset == 0 ? " (same level); " : " (up 1); "));
      commandOutput.print("{id:command_block_minecart,Command:'setblock ~" + (relativeXYZ[0] + 1) + " ~" + relativeXYZ[1] + " ~" + (relativeXYZ[2] - 1) + " " + closestColor.getBlockName() + "'},");
      functionOutput.println("setblock ~" + (relativeXYZ[0] + 1) + " ~" + relativeXYZ[1] + " ~" + (relativeXYZ[2] - 1) + " " + closestColor.getBlockName());
      originalImg.pixels[i + j * originalImg.width] = color(closestColor.getRed() * colorShift[yOffset + 1], closestColor.getGreen() * colorShift[yOffset + 1], closestColor.getBlue() * colorShift[yOffset + 1]);
    }
    relativeXYZ[0]++;
    relativeXYZ[1] = originalImg.height;
    relativeXYZ[2] = 0;
    output.println("\n");
  }
  updatePixels();
  
  output.println("\nMaterials Used:");
  for(int k = 0; k < materialsUsed.length; k++) {
    if(materialsUsed[k] > 0) {
      output.println("\t" + materialsUsed[k] + "x " + MC_Color.values()[k].getBlock());
    }
  }
  output.flush();
  output.close();
  
  commandOutput.print("{id:command_block_minecart,Command:'kill @e[distance=..1]'}]}]}]}");
  commandOutput.flush();
  commandOutput.close();
  
  functionOutput.flush();
  functionOutput.close();
  
}

void draw() {

  image(originalImg, 0, 0, originalImg.width * scale, originalImg.height * scale); // displays scaled image
  
}
