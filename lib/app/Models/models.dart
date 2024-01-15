abstract class Page {
  String get imagePath;
}

// TextPage class implementing Page interface
class TextPage implements Page {
  final String textToShow;
  final String imagePath;
  final int routeToGo;

  TextPage({
    required this.textToShow,
    required this.imagePath,
    required this.routeToGo,
  });
}

// ButtonPage class implementing Page interface
class ButtonPage implements Page {
  final String imagePath;
  final ButtonToNavigate button1;
  final ButtonToNavigate button2;

  ButtonPage({
    required this.imagePath,
    required this.button1,
    required this.button2,
  });
}

class ButtonToNavigate {
  final String buttonText;
  final int routeToGo;

  ButtonToNavigate({required this.buttonText, required this.routeToGo});
}
