import 'package:corte_2/my_home_page.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int pages = 0;

  List<Map<String, String>> onBoardingData1 = [
    {
      "header": "Esparcimiento",
      "text": "Brindamos todos los  servicios para consentir a tu mascota",
      "image": "lib/img/B1.png",
      "button": "Siguiente"
    },
    {
      "header": "Adopción",
      "text":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
      "image": "lib/img/B2.png",
      "button": "Siguiente"
    },
    {
      "header": "Hospitalidad",
      "text":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
      "image": "lib/img/B3.png",
      "button": "Siguiente"
    },
    {
      "header": "Veterinaria",
      "text":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
      "image": "lib/img/B4.png",
      "button": "Siguiente"
    },
    {
      "header": "Tienda",
      "text": "Compra todas las necesidades de tu mascota sin salir de casa",
      "image": "lib/img/B5.png",
      "button": "Continuar"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Expanded(
                  flex: 4,
                  child: PageView.builder(
                    // physics: ClampingScrollPhysics(),
                    itemCount: onBoardingData1.length,
                    onPageChanged: (index) => {
                      setState(() => {pages = index})
                    },
                    itemBuilder: (contex, index) {
                      return ContentBoarding(
                        message: onBoardingData1[index]["text"]!,
                        image: onBoardingData1[index]["image"]!,
                        header: onBoardingData1[index]["header"]!,
                      );
                    },
                  )),
              const SizedBox(height: 50),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(onBoardingData1.length,
                            (index) => containerMethod(index: index)),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: SizedBox(
          width: MediaQuery.of(context).size.width - 40,
          height: 50,
          child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateColor.resolveWith((states) {
                  if (pages == onBoardingData1.length - 1) {
                    return const Color(0xFF76AB56);
                  } else {
                    return const Color(0xFFFFFFFF);
                  }
                }),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(
                      color: pages != onBoardingData1.length - 1
                          ? Color(0xff757575)
                          : Color(0xFF76AB56),
                    ),
                  ),
                ),
              ),
              onPressed: () {
                if (pages == onBoardingData1.length) {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyHomePage(),
                      ));
                } else {
                  setState(() {
                    //pasar al siguiente page view
                  });
                }
              },
              onLongPress: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyHomePage(),
                    ));
              },
              child: Text(
                (() => pages == onBoardingData1.length - 1
                    ? 'Continuar'
                    : 'Siguiente')(),
                style: TextStyle(
                    color: MaterialStateColor.resolveWith((states) {
                      if (pages == onBoardingData1.length - 1) {
                        return Color(0xffffffff);
                      } else {
                        return Color(0xff757575);
                      }
                    }),
                    fontSize: 25),
              ))),
    );
  }

  AnimatedContainer containerMethod({required int index}) {
    return AnimatedContainer(
      margin: const EdgeInsets.only(right: 8),
      height: 4,
      width: pages == index ? 20 : 12,
      duration: kThemeAnimationDuration,
      decoration: BoxDecoration(
          color: pages == index ? Color(0xFFFC1460) : Colors.grey),
    );
  }
}

// ignore: must_be_immutable
class ContentBoarding extends StatelessWidget {
  String header;
  String message;
  String image;

  ContentBoarding({
    Key? key,
    required this.message,
    required this.image,
    required this.header,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 50),
        SizedBox(width: 200, height: 200, child: Image.asset(image)),
        const SizedBox(height: 45),
        Text(
          header,
          style: const TextStyle(fontSize: 50, color: Color(0xff4f1581)),
        ),
        const SizedBox(height: 25),
        Container(
          margin: const EdgeInsets.fromLTRB(25, 0, 25, 0),
          child: Text(
            message,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20,
              color: Color(0xff757575),
            ),
          ),
        ),
      ],
    );
  }
}
