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

## with a file

![TUI](https://github.com/nkh/tcol/blob/main/media/tcol_0.png)

## file no color


## pick color

![TUI](https://github.com/nkh/tcol/blob/main/media/tcol_1.png)

### fzf


## change color

![TUI](https://github.com/nkh/tcol/blob/main/media/tcol_2.png)

### using predefined colors

ansi_user-colors

## preview

You can go back to normal mode, that will show the unmodified colors, and back to modify mode.

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

