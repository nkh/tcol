# NAME

	tcol - interactive color picker for the terminal

![TUI](https://github.com/nkh/tcol/blob/main/media/tcol_1.png)

# SYNOPSIS
    tcol
    tcol file

# DESCRIPTION

*tcol* allows you to pick a color in the ANSI 256 colors range. You can load a file containing colors and dynamically modify the colors; upon exit the modified colors are displayed in the terminal.

# LAYOUT

*tcol* will display a pane with an optional colored file display and a color picker.

## Color picker

The picker consists of:

- current colors swash, changed when you move the color cursor
- 4 colors registries which you can set if you want to modify colors
- the main color swash
    - default system colors
    - grey scales
    - solarized colors
    - rest of available colors
- greyed out line with color code

![TUI](https://github.com/nkh/tcol/blob/main/media/tcol_swash.png)

# MODES

*tcol* had three modes of operation:

| mode   | operation                       |
| ------ | ------------------------------- |
| normal | chose a color                   |
| pick   | get a color from a colored text |
| change | modify a color                  |


## Normal mode

Move the cursor in the color swash, the color code is updated.

When you quite *tcol* the selected color code is displayed, you can also copy the code to the clipboard.

### ForeGround / Backgroud

- press 'b' to selct a background color
- press 'f' to selct a foreground color

## Pick mode

If you passa file to *tcol*, the file will be displayed in the left pane.

![TUI](https://github.com/nkh/tcol/blob/main/media/tcol_0.png)

## pick color

You can select a color from the left pane and put in one of the color registries.

- pre 'p' to get in the pick mode
- use the movement keys to place the cursor on the color you want to change
	- the current color swash will reflect the color you're on
- put the color in one of the registries with 's[1-4]

![TUI](https://github.com/nkh/tcol/blob/main/media/tcol_1.png)

### fzf

You can also chose the color to put in the color registries with the help of fzf
- press 'cf'
- select colors with 'tab'
- press 'enter'

Up to four colors can be chosen

You can also batch load modification colors. *tcol* runs command **ansi_user_colors** which should return predefine colors.

- press 'mc' to load the modification colors

Note that **ansi_user_colors** is a command so you chose a color to return in an interactive picker like FZF.

![TUI](https://github.com/nkh/tcol/blob/main/media/tcol_fzf.png)

## Change mode

You can change the colors in the color registry, the left pane will reflect the changes. Note that your text is not changed only the preview.

- press 'mm' to start change mode
- select a registry with 'm[1-4]
- use the movement keys to select a new color
    - the color registry displays the original color and the new color

![TUI](https://github.com/nkh/tcol/blob/main/media/tcol_2.png)

### Using predefined colors

ansi_user-colors

## Preview

You can go back to normal mode, that will show the unmodified colors, and back to modify mode.

# OUTPUT

![TUI](https://github.com/nkh/tcol/blob/main/media/tcol_out.png)

## Bindings

| binding       | function                           |
| -------       | ---------------------------------- |
| j             | scroll down                        |
| DOWN          | scroll down                        |
| UP            | scroll up                          |
| k             | scroll up                          |
| RIGHT         | move right                         |
| l             | move right                         |
| LEFT          | move left                          |
| h             | move left                          |
| Q             | quit without displaying color data |
| q             | quit                               |
| b             | pick background                    |
| f             | pick foreground                    |
| R             | reverse                            |
| s1            | save #1                            |
| s2            | save #2                            |
| s3            | save #3                            |
| s4            | save #4                            |
| r1            | restore #1                         |
| r2            | restore #2                         |
| r3            | restore #3                         |
| r4            | restore #4                         |
| n             | normal mode                        |
| p             | pick mode                          |
| mm            | interactive change mode            |
| m1            | interactive change color1          |
| m2            | interactive change color2          |
| m3            | interactive change color3          |
| m4            | interactive change color4          |
| mc            | change color via fzf               |
| cf            | select color via fzf               |
| cb            | use black color                    |
| cu            | chose from user colors             |
| cw            | use white color                    |
| yy            | copy to clipboard                  |
| QUESTION_MARK | show command bindings              |
| h             | display help                       |

# DEPENDENCIES

- Bash
- Perl
- AWK
- Paneless https://github.com/nkh/paneless

# INSTALL

Clone the repository and add it to your PATH; or link/copy the files to somewhere in your PATH.

# AUTHORS

	Khemir Nadim ibn Hamouda
	https://github.com/nkh
	CPAN ID: NKH
    
# LICENCE

	© Nadim Khemir 2023, Artistic licence 2.0

