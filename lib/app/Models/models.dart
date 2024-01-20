abstract class Page {
  String get imagePath;
}

// EndPage class implementing Page interface
class EndPage implements Page {
  final String textToShow1;
  final String textToShow2;
  @override
  final String imagePath;

  EndPage({
    required this.textToShow1,
    required this.textToShow2,
    required this.imagePath,
  });
}

// TextPage class implementing Page interface
class TextPage implements Page {
  final String textToShow;
  @override
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
  @override
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
