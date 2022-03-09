import 'package:corte_2/my_home_page.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int index = 0;
  List<Map<String, String>> onBoardingData = [
    {"text": "page 01", "image": "lib/img/onboarding1.png"},
    {"text": "page 02", "image": "lib/img/onboarding2.png"},
    {"text": "page 03", "image": "lib/img/onboarding3.png"},
    {"text": "page 04", "image": "lib/img/onboarding4.png"},
    {"text": "page 05", "image": "lib/img/onboarding5.png"},
  ];
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
              Expanded(
                  flex: 4,
                  child: PageView.builder(
                      itemCount: onBoardingData.length,
                      itemBuilder: (contex, index) {
                        this.index = index;
                        return ContentBoarding(
                          index: index,
                          message: onBoardingData1[index]["text"]!,
                          image: onBoardingData1[index]["image"]!,
                          header: onBoardingData1[index]["header"]!,
                          button: onBoardingData1[index]["button"]!,
                        );
                      })),
              const SizedBox(height: 50)
            ],
          ),
        )));
  }
}

// ignore: must_be_immutable
class ContentBoarding extends StatelessWidget {
  String header;
  String message;
  String image;
  String button;
  int index;

  ContentBoarding({
    Key? key,
    required this.message,
    required this.image,
    required this.header,
    required this.button,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 150),
        SizedBox(width: 200, height: 200, child: Image.asset(image)),
        const SizedBox(height: 50),
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
        const SizedBox(height: 25),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: 10,
                width: 25,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(''),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith((state) {
                      if (index.compareTo(0) == 0) {
                        return const Color(0xFFFC1460);
                      }
                      return const Color(0xC2E0E0E0);
                    }),
                  ),
                )),
            const SizedBox(width: 10),
            SizedBox(
                height: 10,
                width: 25,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(''),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith((state) {
                      if (index.compareTo(1) == 0) {
                        return const Color(0xFFFC1460);
                      }
                      return const Color(0xC2E0E0E0);
                    }),
                  ),
                )),
            const SizedBox(width: 10),
            SizedBox(
                height: 10,
                width: 25,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(''),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith((state) {
                      if (index.compareTo(2) == 0) {
                        return const Color(0xFFFC1460);
                      }
                      return const Color(0xC2E0E0E0);
                    }),
                  ),
                )),
            const SizedBox(width: 10),
            SizedBox(
                height: 10,
                width: 25,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(''),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith((state) {
                      if (index.compareTo(3) == 0) {
                        return const Color(0xFFFC1460);
                      }
                      return const Color(0xC2E0E0E0);
                    }),
                  ),
                )),
            const SizedBox(width: 10),
            SizedBox(
                height: 10,
                width: 25,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(''),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith((state) {
                      if (index.compareTo(4) == 0) {
                        return const Color(0xFFFC1460);
                      }
                      return const Color(0xC2E0E0E0);
                    }),
                  ),
                )),
          ],
        ),
        Container(
          //color:Colors.blue,
          height: MediaQuery.of(context).size.height/5,),
        Container(
          //color: Colors.red,
          
          child: SizedBox(
              width: MediaQuery.of(context).size.width-40,
              height: 50,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateColor.resolveWith((states) {
                        if (index == 4) {
                          return const Color(0xFF76AB56);
                        } else {
                          return const Color(0xFFFFFFFF);
                        }
                      }),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: const BorderSide(
                                color: Color(0xff757575),
                              )))),
                  onPressed: () {
                    if (index == 4) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MyHomePage(),
                          ));
                    } else {
                      //pasar al siguiente page view
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
                    button,
                    style: TextStyle(
                        color: MaterialStateColor.resolveWith((states) {
                          if (index == 4) {
                            return Color(0xffffffff);
                          } else {
                            return Color(0xff757575);
                          }
                        }),
                        fontSize: 25),
                  ))),
        )
      ],
    );
  }
}
