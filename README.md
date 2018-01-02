# GB2MIDI
Tools for converting Garageband (Mac OS X) files to MIDI files

Instructions:
In order to export MIDI from Garageband, you first need to create a loop from the MIDI segment (join segments for a whole track) via drag&drop into the loop area (up to 45 measures long, otherwise you the menu edit->add to loop library). You can find the resulting loop file in the folder /User/Library/Audio/Apple Loops/User Loops/SingleFiles/ with the .aif suffix.
(Please note that this folder is only created after you created your first loops and can be tricky to navigate to in the Finder.)

You can either use a Hex-Editor to cut out the part between “MTrk” and “CHS” and save as a .mid file or download and use the [GB2MIDI "app"](GB2MIDI.zip) (written in AppleScript) for Mac OS X in this repository. Either drag & drop onto the icon, or run the script and select files. The resulting files will be saved with the same name but a .mid suffix. The original AppleScript tool was published on my website http://www.larskobbe.de/midi-export-in-apples-garageband

I have also created a (experimental) [JavaScript-based version of the GB2MIDI app](https://larkob.github.io/GB2MIDI/index.html) which works directly in your browser.

This software is freeware and must be considered beta status. Use on your own risk, even though I believe it is perfectly safe to use.
