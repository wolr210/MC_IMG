# MC_IMG
This project converts image files into a list of blocks, which when placed in *Minecraft*, recreate the original image. This program uses Processing and outputs a block file, showing you which blocks to place, and a command file, which allows you to paste groups of commands at a time into a command block.

## blocks.txt
This file contains an ordered list of blocks. If you're using the original version, the blocks go by row first then column. **If you're using V2, the blocks go by column first then row!** V2 also shows you the relative Y displacement of each block relative to the previous block.

## commands.txt
This file contains several commands. To use this file, copy paste each command one at a time (they're separated by newlines) into command blocks and power them, then break the redstone block. Repeat until the image is complete!

## <image file name>.mcfunction
This file is a test to see if I can convert the placing of blocks into a built-in MCFunction file for ease of placement. Currently it doesn't work, but it will in the future! :)
