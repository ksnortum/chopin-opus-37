# chopin-opus-37
LilyPond source files for Chopin's Twelve Etudes, Opus 37.

## Requirements
LilyPond version 2.24.0 or higher.  It is assumed that `lilypond` is in the PATH of your system.

## Producing PDFs or other outputs
You can find the latest release of the PDF and MIDI files [here](https://github.com/ksnortum/chopin-opus-37/releases/latest), otherwise `cd` into your installation directory and type:

        lilypond twelve-etudes-opus37-book.ly

This should produce a PDF and two MIDI files.

The PDF produced will have point-and-click info in it, which you may not want (it makes the file size much bigger).  To avoid this use the `-dno-point-and-click` command line option, or uncomment `\pointAndClickOff` in the file `two-nocturnes-op37-book.ly`.  Command line options are explained in detail [here](https://lilypond.org/doc/v2.24/Documentation/usage/command_002dline-usage).

## Licensing
This work is licensed under CC BY-SA 4.0. To view a copy of this license, visit [http://creativecommons.org/licenses/by-sa/4.0/](http://creativecommons.org/licenses/by-sa/4.0/).

## Questions, problems, etc.
If you have a question about these source files or how to produce a PDF, you can contact me at: **knute (at) snortum (dot) net**

