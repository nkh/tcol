# NAME

	tcol - interactive color picker for the terminal

![TUI](https://github.com/nkh/tcol/blob/main/media/tcol_1.png)

# SYNOPSIS
    tcol [--oc --no-color-output]
    tcol file

# DESCRIPTION

*tcol* allows you to pick a color in the ANSI 256 colors range. You can load a file containing colors and dynamically modify the colors; upon exit the modified colors are displayed in the terminal.

# LAYOUT

*tcol* will display a pane with an optional colored file display and a color picker.

## Color picker

The picker consists of:

- current colors swatch, changed when you move the color cursor
- 4 colors registries which you can set if you want to modify colors
- the main color swatch
    - default system colors
    - grey scales
    - solarized colors
    - rest of available colors
- greyed out line with color code

# MODES

*tcol* had three modes of operation:

| binding       | modes                              |
| -------       | ---------------------------------- |
| n             | normal mode                        |
| p             | pick mode                          |
| mm            | modification mode                  |

## Normal mode

Move the cursor in the color swatch, the current color and color code are updated.

When you quite *tcol* the selected color code is displayed, you can also copy the code to the clipboard.

### ForeGround / Backgroud

- press 'b' to selct a background color
- press 'f' to selct a foreground color

## Pick mode

If you pass a file to *tcol*, the file will be displayed in the left pane.

![TUI](https://github.com/nkh/tcol/blob/main/media/tcol_0.png)

## pick color

You can select a color from the left pane and put in one of the color registries.

- press 'p' to get in the pick mode
- use the movement keys to place the cursor on the color you want to change
	- the current color swatch will reflect the color you're on
- put the color in one of the modification registries with 'm[1-5]

![TUI](https://github.com/nkh/tcol/blob/main/media/tcol_1.png)

### fzf

You can also chose the color to put in the color registries with the help of fzf
- press 'mf' to set current registry, 'mF' to set all registries
- select colors with 'tab'
- press 'enter'

You can also batch load user defined modification colors. *tcol* runs command **ansi_user_colors** which should return predefine colors.

- press 'mu' to load a color in the current registry
- press 'mU' to load a color in all the registries

Note that **ansi_user_colors** is a command so you can chose a color to return in an interactive picker like FZF.

The same can be done with command **ansi_user_colors_by_name** with the following bindings
- press 'mn' to load a color in the current registry
- press 'mN' to load a color in all the registries

![TUI](https://github.com/nkh/tcol/blob/main/media/tcol_fzf.png)

## Modification mode

You can change the colors in the color registry, the left pane will reflect the changes. Note that your text is not changed only the preview.

- press 'mm'
- use the movement keys to select a new color
    - the color registry displays the original color and the new color

Use "'[1-5]" (quote + figure) to select a different registry to modify

![TUI](https://github.com/nkh/tcol/blob/main/media/tcol_2.png)

## Flip preview between modified and unmodified colors

You can go back to normal mode with 'n' and back to modify mode with 'mm'.

# OUTPUT

![TUI](https://github.com/nkh/tcol/blob/main/media/tcol_out.png)

## Bindings

| binding       | movements                          |
| -------       | ---------------------------------- |
| j             | scroll down                        |
| DOWN          | scroll down                        |
| UP            | scroll up                          |
| k             | scroll up                          |
| RIGHT         | move right                         |
| l             | move right                         |
| LEFT          | move left                          |
| h             | move left                          |
| J             | scroll pane 0 down                 |
| K             | scroll pane 0 up                   |

| binding       | tcol                               |
| -------       | ---------------------------------- |
| yy            | copy to clipboard                  |
| yq            | copy to clipboard  and quit        |
| Q             | quit without displaying color data |
| q             | quit                               |
| QUESTION_MARK | show bindings                      |
| h             | display help                       |

| binding       | colors                             |
| -------       | ---------------------------------- |
| b             | pick background                    |
| f             | pick foreground                    |
| cb            | use black color                    |
| cw            | use white color                    |
| cr            | reverse                            |
| r1            | restore #1                         |
| r2            | restore #2                         |
| r3            | restore #3                         |
| r4            | restore #4                         |

| binding       | modes                              |
| -------       | ---------------------------------- |
| n             | normal mode                        |
| p             | pick mode                          |
| mm            | modification mode                  |
| a             | alternate normal/modification      |

| binding       | modification mode                  |
| -------       | ---------------------------------- |
| '1            | select #1                          |
| '2            | select #2                          |
| '3            | select #3                          |
| '4            | select #4                          |
| m1            | save #1                            |
| m2            | save #2                            |
| m3            | save #3                            |
| m4            | save #4                            |
| m5            | save #5                            |
| mc            | set change color                   |
| mf            | set modification color             |
| mF            | set all modification colors        |
| mu            | chose from user colors             |
| mU            | chose all from user colors         |
| mn            | chose from named colors            |

# DEPENDENCIES

- Bash
- Perl
- AWK
- Paneless https://github.com/nkh/paneless

# INSTALL

Clone the repository and add it to your PATH; or link/copy the files to somewhere in your PATH.

## Generate Documentation

***utils/gen_man_page*** can be used to generate a man page, it needs pandoc.

The documentation is this README, you will get:
- a man page
- *tcol -h* will display the man page
- command 'h' will display the man page

# AUTHOR

	Khemir Nadim ibn Hamouda
	https://github.com/nkh
	CPAN ID: NKH
    
# LICENCE

	© Nadim Khemir 2023, Artistic licence 2.0

