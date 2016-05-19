#xfd  



###name
```
       xfd - display all the characters in an X font

```
###synopsis
```
       xfd [-options ...] -fn fontname

       xfd [-options ...] -fa fontname

```
###description
```
       The xfd utility creates a window containing the name of the font being displayed, a row of command buttons, several lines of text for displaying character metrics, and a grid containing one glyph per cell.  The characters are shown in increasing order from left to right, top to bottom.  The first character displayed at the top left will be character number 0 unless the -start option has been supplied in which case the character with the number given in the -start option will be used.

       The characters are displayed in a grid of boxes, each large enough to hold any single character in the font.  Each character glyph is drawn using the PolyText16 request (used by the Xlib routine XDrawString16) or the XftDrawString32 routine, depending on whether the -fn or -fa option was given.  If the -box option is given, a rectangle will be drawn around each character, showing where an ImageText16 request (used by the Xlib routine XDrawImageString16) would cause background color to be displayed.

       The origin of each glyph is normally set so that the character is drawn in the upper left hand corner of the grid cell.  However, if a glyph has a negative left bearing or an unusually large ascent, descent, or right bearing (as is the case with cursor font), some character may not appear in their own grid cells.  The -center option may be used to force all glyphs to be centered in their respective cells.

       All the characters in the font may not fit in the window at once.  To see the next page of glyphs, press the Next button at the top of the window.  To see the previous page, press Prev.  To exit xfd, press Quit.

       Individual character metrics (index, width, bearings, ascent and descent) can be displayed at the top of the window by clicking on the desired character.

       The font name displayed at the top of the window is the full name of the font, as determined by the server.  See xlsfonts and fc-list for ways to generate lists of fonts, as well as more detailed summaries of their metrics and properties.

```
###options
```
       xfd accepts all of the standard toolkit command line options along with the additional options listed below:

       -fn font
               This option specifies the core X server side font to be displayed.  This can also be set with the FontGrid font resource.  A font must be specified.

       -fa font
               This option specifies a Xft font to be displayed. This can also be set with the FontGrid face resource. A font pattern must be specified.

       -box    This option indicates that a box should be displayed outlining the area that would be filled with background color by an ImageText request.  This can also be set with the FontGrid boxChars resource.  The default is False.

       -center This option indicates that each glyph should be centered in its grid.  This can also be set with the FontGrid centerChars resource.  The default is False.

       -start number
               This option specifies the glyph index of the upper left hand corner of the grid.  This is used to view characters at arbitrary locations in the font.  This can also be set with the FontGrid startChar resource.  The default is 0.

       -bc color
               This option specifies the color to be used if ImageText boxes are drawn.  This can also be set with the FontGrid boxColor resource.

       -rows numrows
               This option specifies the number of rows in the grid.  This can also be set with the FontGrid cellRows resource.

       -columns numcols
               This option specifies the number of columns in the grid.  This can also be set with the FontGrid cellColumns resource.

```
###widgets
```
       In order to specify resources, it is useful to know the widgets which compose xfd.  In the notation below, indentation indicates hierarchical structure.  The widget class name is given first, followed by the widget instance name.  The application class name is Xfd.

       Xfd  xfd
            Paned  pane
                 Label  fontname
                 Box  box
                      Command  quit
                      Command  prev
                      Command  next
                 Label  select
                 Label  metrics
                 Label  range
                 Label  start
                 Form  form
                      FontGrid  grid

```
###fontgrid resources
```
       The FontGrid widget is an application-specific widget, and a subclass of the Simple widget in the Athena widget set.  The effects and instance names of this widget's resources are given in the OPTIONS section.  Capitalize the first letter of the resource instance name to get the corresponding class name.

```
###application specific resources
```
       The instance names of the application specific resources are given below.  Capitalize the first letter of the resource instance name to get the corresponding class name.  These resources are unlikely to be interesting unless you are localizing xfd for a different language.

       selectFormat
               Specifies a printf-style format string used to display information about the selected character.  The default is "character 0x%02x%02x (%u,%u) (%#o,%#o)".  The arguments that will come after the format string are char.byte1, char.byte2, char.byte1, char.byte2, char.byte1, char.byte2.  char.byte1 is byte 1 of the selected character.  char.byte2 is byte 2 of the selected character.

       metricsFormat
               Specifies a printf-style format string used to display character metrics.  The default is "width %d; left %d, right %d; ascent %d, descent %d (font %d, %d)".  The arguments that will come after the format string are the character metrics width, lbearing, rbearing, character ascent, character descent, font ascent, and font descent.

       rangeFormat
               Specifies a printf-style format string used to display the range of characters currently being displayed.  The default is "range: 0x%02x%02x (%u,%u) thru 0x%02x%02x (%u,%u)".  The arguments that will come after the format string are the following fields from the XFontStruct that is returned from opening the font: min_byte1, min_char_or_byte2, min_byte1, min_char_or_byte2, max_byte1, max_char_or_byte2, max_byte1, max_char_or_byte2.

       startFormat
               Specifies a printf-style format string used to display information about the character at the upper left corner of the font grid.  The default is "upper left: 0x%04x (%d,%d)".  The arguments that will come after the format string are the new character, the high byte of the new character, and the low byte of the new character.

       nocharFormat
               Specifies a printf-style format string to display when the selected character does not exist.  The default is "no such character 0x%02x%02x (%u,%u) (%#o,%#o)".  The arguments that will come after the format string are the same as for the selectFormat resource.

```
###see also
```
       X(7), xlsfonts(1), xrdb(1), xfontsel(1), fc-list(1), fonts.conf(5), X Logical Font Description Conventions

```
###bugs
```
       The program should skip over pages full of non-existent characters.

```
###author
```
       Jim Fulton, MIT X Consortium; previous program of the same name by Mark Lillibridge, MIT Project Athena.




```
