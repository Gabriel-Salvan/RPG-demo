import 'package:rpgdemo/app/Models/models.dart';

Map<int, Page> routes = {
  1: TextPage(
      imagePath: "lib/assets/images/example.png",
      textToShow: "Você está a caminho da cafeteria do seu melhor amigo Clebinho, quando algo atrapalha seu caminho.",
      routeToGo: 2),
  2: TextPage(
      imagePath: "lib/assets/images/example.png",
      textToShow: "text1 text1 text1 text1 text1 text1 ",
      routeToGo: 3),
  3: ButtonPage(
      button1: ButtonToNavigate(buttonText: "Button1", routeToGo: 4),
      button2: ButtonToNavigate(buttonText: "Button2", routeToGo: 5),
      imagePath: "lib/assets/images/example.png"),
  4: TextPage(
      imagePath: "lib/assets/images/example.png",
      textToShow: "text1 text1 text1 text1 text1 text1 ",
      routeToGo: 3),
  5: TextPage(
      imagePath: "lib/assets/images/example.png",
      textToShow: "text1 text1 text1 text1 text1 text1 ",
      routeToGo: 3),
};
