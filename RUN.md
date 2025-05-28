Because I don't provide binaries you'll have to do a little dance.

* Install [keyapp](https://blog.zsa.io/keymapp/).
* Install [Flutter](https://docs.flutter.dev/get-started/install).  Follow those instructions.  On Windows, you'll be prompted to:
   * Install [Git for Windows](https://gitforwindows.org/).
   * Install [Visual Studio 2022](https://learn.microsoft.com/visualstudio/install/install-visual-studio?view=vs-2022).
   * Install [Visual Studio Code](https://code.visualstudio.com/docs/setup/windows).
      * Install the [flutter extension](https://marketplace.visualstudio.com/items?itemName=Dart-Code.flutter) for VS Code.
   * Follow the [instructions ](https://docs.flutter.dev/get-started/install/windows/desktop#use-vs-code-to-install-flutter)to install Flutter.
* Download the [source code](https://github.com/StaticReturn/led_color_picker) for my color picker as a zip file.
   * Click on the green code button and a small window will pop up.
   * Click on the last item on that window "Download ZIP".
   * Unzip the contents to a directory of your choice.
* Start up Keyapp.
* Start up Visual Studio code.
   * File  ->  Open Folder...
   * Choose the folder you just downloaded and unzipped.  (led\_color\_picker-main).
   * You'll get a prompt.  "Do you trust the authors of the files in this folder?".
   * Click "Yes, I trust the authors".
   * A pop up should appear on the bottom left of your screen:  "Some packages are missing or out of date, would you like to get them now?".  Click the blue "Run 'pub get'" Button.
   * Click on the "lib" folder on the file explorer side panel.
   * Click on the file "main.dart" file.
   * Between lines 8 and 9 you should see the text:  Run | Debug | Profile.
   * Click on "Run".
   * **Profit!  You are running the color picker!**