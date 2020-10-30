// color palette
color[] colors = {color(127, 178, 56), // 1 GRASS
                  color(247, 233, 163), // 2 SAND
                  color(199, 199, 199), // 3 WOOL
                  color(255, 0, 0), // 4 FIRE
                  color(160, 160, 255), // 5 ICE
                  color(167, 167, 167), // 6 METAL
                  color(0, 124, 0), // 7  PLANT
                  color(255, 255, 255), // 8 SNOW
                  color(164, 168, 184), // 9 CLAY
                  color(151, 109, 77), // 10 DIRT
                  color(112, 112, 112), // 11 STONE
                  color(64, 64, 255), // 12 WATER
                  color(143, 119, 72), // 13 WOOD
                  color(255, 252, 245), // 14 QUARTZ
                  color(216, 127, 51), // 15 COLOR_ORANGE
                  color(178, 76, 216), // 16 COLOR_MAGENTA
                  color(102, 153, 216), // 17 COLOR_LIGHT_BLUE
                  color(229, 229, 51), // 18 COLOR_YELLOW
                  color(127, 204, 25), // 19 COLOR_LIGHT_GREEN
                  color(242, 127, 165), // 20 COLOR_PINK
                  color(76, 76, 76), // 21 COLOR_GRAY
                  color(153, 153, 153), // 22 COLOR_LIGHT_GRAY
                  color(76, 127, 153), // 23 COLOR_CYAN
                  color(127, 63, 178), // 24 COLOR_PURPLE
                  color(51, 76, 178), // 25 COLOR_BLUE
                  color(102, 76, 51), // 26 COLOR_BROWN
                  color(102, 127, 51), // 27 COLOR_GREEN
                  color(153, 51, 51), // 28 COLOR_RED
                  color(25, 25, 25), // 29 COLOR_BLACK
                  color(250, 238, 77), // 30 GOLD
                  color(92, 219, 213), // 31 DIAMOND
                  color(74, 128, 255), // 32 LAPIS
                  color(0, 217, 58), // 33 EMERALD
                  color(129, 86, 49), // 34 PODZOL
                  color(112, 2, 0), // 35 NETHER
                  color(209, 177, 161), // 36 TERRACOTTA_WHITE
                  color(159, 82, 36), // 37 TERRACOTTA_ORANGE
                  color(149, 87, 108), // 38 TERRACOTTA_MAGENTA
                  color(112, 108, 138), // 39 TERRACOTTA_LIGHT_BLUE
                  color(186, 133, 36), // 40 TERRACOTTA_YELLOW
                  color(103, 117, 53), // 41 TERRACOTTA_LIGHT_GREEN
                  color(160, 77, 78), // 42 TERRACOTTA_PINK
                  color(57, 41, 35), // 43 TERRACOTTA_GRAY
                  color(135, 107, 98), // 44 TERRACOTTA_LIGHT_GRAY
                  color(87, 92, 92), // 45 TERRACOTTA_CYAN
                  color(122, 73, 88), // 46 TERRACOTTA_PURPLE
                  color(76, 62, 92), // 47 TERRACOTTA_BLUE
                  color(76, 50, 35), // 48 TERRACOTTA_BROWN
                  color(76, 82, 42), // 49 TERRACOTTA_GREEN
                  color(142, 60, 46), // 50 TERRACOTTA_RED
                  color(37, 22, 16), // 51 TERRACOTTA_BLACK
                  color(189, 48, 49), // 52 CRIMSON_NYLIUM
                  color(148, 63, 97), // 53 CRIMSON_STEM
                  color(92, 25, 29), // 54 CRIMSON_HYPHAE
                  color(22, 126, 134), // 55 WARPED_NYLIUM
                  color(58, 142, 140), // 56 WARPED_STEM
                  color(86, 44, 62), // 57 WARPED_HYPHAE
                  color(20, 180, 133), // 58 WARPED_WART_BLOCK
                  };

// blocks that produce those corresponding colors (Most convienient to gather)
String[] colorNames = {"Grass Block",
                       "Sand",
                       "Cobweb",
                       "Redstone Block",
                       "Ice",
                       "Block of Iron",
                       "Flower",
                       "Wool",
                       "Clay",
                       "Dirt",
                       "Stone",
                       "Water Bucket",
                       "Oak Planks",
                       "Diorite",
                       "Orange Wool",
                       "Magenta Wool",
                       "Light Blue Wool",
                       "Yellow Wool",
                       "Lime Wool",
                       "Pink Wool",
                       "Gray Wool",
                       "Light Gray Wool",
                       "Cyan Wool",
                       "Purple Wool",
                       "Blue Wool",
                       "Spruce Log (Side)",
                       "Green Wool",
                       "Red Wool",
                       "Black Wool",
                       "Block of Gold",
                       "Block of Diamond",
                       "Lapis Lazuli Block",
                       "Block of Emerald",
                       "Spruce Planks",
                       "Netherrack",
                       "White Terracotta",
                       "Orange Terracotta",
                       "Magenta Terracotta",
                       "Light Blue Terracotta",
                       "Yellow Terracotta",
                       "Lime Terracotta",
                       "Pink Terracotta",
                       "Gray Terracotta",
                       "Light Gray Terracotta",
                       "Cyan Terracotta",
                       "Purple Terracotta",
                       "Blue Terracotta",
                       "Brown Terracotta",
                       "Green Terracotta",
                       "Red Terracotta",
                       "Black Terracotta",
                       "Crimson Nylium",
                       "Crimson Planks",
                       "Crimson Hyphae",
                       "Warped Nylium",
                       "Warped Planks",
                       "Warped Hyphae",
                       "Warped Wart Block",
                       };

// list of ingame block names corresponding to above list
String[] commandColorNames = {"grass_block",
                              "sand",
                              "cobweb",
                              "redstone_block",
                              "ice",
                              "iron_block",
                              "poppy",
                              "white_wool",
                              "clay",
                              "dirt",
                              "stone",
                              "water_bucket",
                              "oak_planks",
                              "diorite",
                              "orange_wool",
                              "magenta_wool",
                              "light_blue_wool",
                              "yellow_wool",
                              "lime_wool",
                              "pink_wool",
                              "gray_wool",
                              "light_gray_wool",
                              "cyan_wool",
                              "purple_wool",
                              "blue_wool",
                              "brown_wool",
                              "green_wool",
                              "red_wool",
                              "black_wool",
                              "gold_block",
                              "diamond_block",
                              "lapis_block",
                              "emerald_block",
                              "spruce_planks",
                              "netherrack",
                              "white_terracotta",
                              "orange_terracotta",
                              "magenta_terracotta",
                              "light_blue_terracotta",
                              "yellow_terracotta",
                              "lime_terracotta",
                              "pink_terracotta",
                              "gray_terracotta",
                              "light_gray_terracotta",
                              "cyan_terracotta",
                              "purple_terracotta",
                              "blue_terracotta",
                              "brown_terracotta",
                              "green_terracotta",
                              "red_terracotta",
                              "black_terracotta",
                              "crimson_nylium",
                              "crimson_planks",
                              "crimson_hyphae",
                              "warped_nylium",
                              "warped_planks",
                              "warped_hyphae",
                              "warped_wart_block",
                       };

// list and amount of materials used
int[] materialsUsed = new int[colors.length];

PImage originalImg; // image to MC-ify
String image = "joker shark.jpg"; // name of image
float scale = 5; // scale to display image (DOES NOT AFFECT ACTUAL IMAGE, ONLY WHAT IS SHOWN WHEN PROGRAM IS DONE)
boolean use3d = false; // if true, blocks will be on different y layers; otherwise, all the blocks will be on one layer

float redBias = 0.3; // influence of red value in closest color subprogram (default value 0.3)
float greenBias = 0.59; // influence of green value in closest color subprogram (default value 0.59)
float blueBias = 0.11; // influence of blue value in closest color subprogram (default value 0.11)
double temp = 0; // for calculating closest color
int yOffset; // y-offset for each block
int[] yOffsets; //y-offsets for the current row of blocks
int[] yOffsetsPrev; // y-offsets for the previus row of blocks

PrintWriter output; // writes blocks and materials to file
PrintWriter commandOutput; // writes the commands that can be used to autoplace the image
PrintWriter functionOutput; // creates a .mcfunction file which you can put into your world folder

// counters for block/material file
int counter = -1;
int rowCounter = 1;

// current relative X and Z offset for command file
int[] relativeXYZ = {-1, -2, 0};

int overFlowCounter = 0; // ensures that each command adheres to 32.5k character limit (currently ~400 subcommands per command, might be able to increase?)

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
  output.print("Row 1: ");
  
  commandOutput = createWriter("commands.txt");
  commandOutput.print("/summon falling_block ~ ~1 ~ {Time:1,BlockState:{Name:redstone_block},Passengers:[{id:falling_block,Passengers:[{id:falling_block,Time:1,BlockState:{Name:activator_rail},Passengers:[");
  
  functionOutput = createWriter(image + ".mcfunction");

  float closestColor = 0;
  yOffsets = new int[originalImg.width];
  yOffsetsPrev = new int[originalImg.width];

  // loops through all pixels in image
  for (int i = 0; i < originalImg.width * originalImg.height; i++) {

    float rr = red(originalImg.pixels[i]);
    float gg = green(originalImg.pixels[i]);
    float bb = blue(originalImg.pixels[i]);

    double min = 1000000;

    // finds closest color to current pixel color
    for (int c = 0; c < colors.length; c++) {
      
      temp = Math.pow(((rr - (red(colors[c]) * 1))*redBias), 2) + Math.pow(((gg - (green(colors[c]) * 1))*greenBias), 2) + Math.pow(((bb - (blue(colors[c]) * 1))*blueBias), 2); // 255/255

      if (temp < min) {
        yOffset = 1;
        min = temp; 
        closestColor = c;
      }
      
      temp = Math.pow(((rr - (red(colors[c]) * 0.86))*redBias), 2) + Math.pow(((gg - (green(colors[c]) * 0.86))*greenBias), 2) + Math.pow(((bb - (blue(colors[c]) * 0.86))*blueBias), 2); // 180/255

      if (temp < min) {
        yOffset = 0;
        min = temp; 
        closestColor = c;
      }
      
      temp = Math.pow(((rr - (red(colors[c]) * 0.71))*redBias), 2) + Math.pow(((gg - (green(colors[c]) * 0.71))*greenBias), 2) + Math.pow(((bb - (blue(colors[c]) * 0.71))*blueBias), 2); // 255/255

      if (temp < min) { 
        yOffset = -1;
        min = temp; 
        closestColor = c;
      }
      
    }
    
    //println(yOffsetsPrev[i % originalImg.height] + yOffset);
    if(i % originalImg.height == 7) println();
      
    //relativeXYZ[1] = yOffsetsPrev[i % originalImg.height] + yOffset;
    //yOffsets[i % originalImg.height] = yOffset;
    color newColor;
    
    if(use3d) {
      newColor = color(red(colors[(int)closestColor]) * (yOffset == 1 ? 1 : yOffset == 0? 0.86 : 0.71), green(colors[(int)closestColor]) * (yOffset == 1 ? 1 : yOffset == 0? 0.86 : 0.71), blue(colors[(int)closestColor]) * (yOffset == 1 ? 1 : yOffset == 0? 0.86 : 0.71));
    } else {
      newColor = colors[(int)closestColor];
    }
    
    originalImg.pixels[i] = newColor; // sets pixel color to closest color
    materialsUsed[(int)closestColor]++; // adds 1 to block of closest color
    
    overFlowCounter++;
    // if there are more than 400 commands, end the current command and start a new one
    if(overFlowCounter >= 400) {
        
      commandOutput.print("{id:command_block_minecart,Command:'kill @e[distance=..1]'}]}]}]}");
      commandOutput.println();
      commandOutput.println();
      commandOutput.print("/summon falling_block ~ ~1 ~ {Time:1,BlockState:{Name:redstone_block},Passengers:[{id:falling_block,Passengers:[{id:falling_block,Time:1,BlockState:{Name:activator_rail},Passengers:[");
      overFlowCounter = 0;
        
    }

    // checks if a new row is necessary in the output file and adjusts related counters
    if (counter == originalImg.width - 1) {

      counter = 0;
      output.println();
      output.println();
      rowCounter++;
      output.print("Row " + rowCounter + ": ");
      
      relativeXYZ[0] = 0;
      relativeXYZ[2]++;
      
      for(int l = 0; l < yOffsets.length; l++) {
        
        yOffsetsPrev[l] = yOffsets[l];
        
      }
      
      //yOffsets = new int[originalImg.width];
      
    } else {

      counter++;
      relativeXYZ[0]++;
      
    }

    output.print((counter + 1) + ": " + colorNames[(int)closestColor] + ", "); // displays block
    commandOutput.print("{id:command_block_minecart,Command:'setblock ~" + (relativeXYZ[0] + 1) + " ~" + (use3d ? (relativeXYZ[1] - 2) : -2) + " ~" + relativeXYZ[2] + " " + commandColorNames[(int)closestColor] + "'},");
    functionOutput.print("setblock ~" + (relativeXYZ[0] + 1) + " ~-2 ~" + relativeXYZ[2] + " " + commandColorNames[(int)closestColor] + "\n");
    
  }

  updatePixels();
  
  output.println();
  output.println();
  output.println("Materials Used: ");

  // prints out material list
  for (int m = 0; m < materialsUsed.length; m++) {

    if (materialsUsed[m] > 0) {

      output.println("\t" + materialsUsed[m] + "x " + colorNames[m]);
      
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
