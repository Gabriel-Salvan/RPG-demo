import 'package:rpgdemo/app/Models/models.dart';

Map<int, Page> routes = {
  1: TextPage(
      imagePath: "lib/assets/images/example.png",
      textToShow: "Você está a caminho da cafeteria do seu melhor amigo Clebinho, quando algo atrapalha seu caminho.",
      routeToGo: 2),
  2: TextPage(
      imagePath: "lib/assets/images/example.png",
      textToShow: "Após dar uma olhada, você percebe que é um burro, sentado no chão de forma deplorável.",
      routeToGo: 3),
  3: ButtonPage(
      button1: ButtonToNavigate(buttonText: "Nossaaaaa!!!, um burro. Cê tá beeem??? Tá machucado???!", routeToGo: 4),
      button2: ButtonToNavigate(buttonText: "Que nojo!!! Sebo da peeeste! Certeza que tem raiva esse bixo! Sai da minha frente carambaaaa!", routeToGo: 5,),
      imagePath: "lib/assets/images/example.png"),
  4: TextPage(
      imagePath: "lib/assets/images/example.png",
      textToShow: "Suas palavras aparentam ter animado ele um pouco. Ele então se levanta e pega uma foto. Parece ser de uma Burra com aparência meio diferenciada.",
      routeToGo: 11),
  5: TextPage(
      imagePath: "lib/assets/images/example.png",
      textToShow: "Ao ouvir tuas palavras profanas, o burro colapsa no chão, e ao seu redor é formada uma grande poça de suas lagrimas",
      routeToGo: 6),
  6: ButtonPage(
      button1: ButtonToNavigate(buttonText: "Foi mal mermão... qué ajuda??", routeToGo: 7),
      button2: ButtonToNavigate(buttonText: "Credoooooo *Você o ignora e continua andando.", routeToGo: 8,),
      imagePath: "lib/assets/images/example.png"),
  8: TextPage(
      imagePath: "lib/assets/images/example.png",
      textToShow:
          "Após ver seu comentário, ele continua chorando, mas com intensidade que você nunca havia visto antes.",
      routeToGo: 9),
  9: EndPage(
      imagePath: "lib/assets/images/example.png",
      textToShow1: "Final Depressão",
      textToShow2:
          "A água começa a subir, fazendo com que você se afogue em suas lagrimas.",),
  7: TextPage(
      imagePath: "lib/assets/images/example.png",
      textToShow:
          "Ao ver o burro sofrer mais do que ele já estava, você se enche de culpa e tenta ajudar...",
      routeToGo: 4),
  11: ButtonPage(
      button1: ButtonToNavigate(buttonText: "Text 11", routeToGo: 12),
      button2: ButtonToNavigate(buttonText: "Text 11", routeToGo: 13,),
      imagePath: "lib/assets/images/example.png"),
  12: TextPage(
      textToShow: "",
      imagePath: "",
      routeToGo: 14),
  13: TextPage(
      textToShow: "",
      imagePath: "",
      routeToGo: 15),
};
