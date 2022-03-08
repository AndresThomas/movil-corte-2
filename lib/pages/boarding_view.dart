import 'package:corte_2/my_home_page.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  List<Map<String, String>> onBoardingData = [
    {"text": "page 01", "image": "lib/img/onboarding1.png"},
    {"text": "page 02", "image": "lib/img/onboarding2.png"},
    {"text": "page 03", "image": "lib/img/onboarding3.png"},
    {"text": "page 04", "image": "lib/img/onboarding4.png"},
    {"text": "page 05", "image": "lib/img/onboarding5.png"},
  ];
  List<Map<String, String>> onBoardingData1 = [
    {"header": "Header 01", "text": "page 01", "image": "lib/img/B1.png"},
    {"header": "Header 02", "text": "page 02", "image": "lib/img/B2.png"},
    {"header": "Header 03", "text": "page 03", "image": "lib/img/B3.png"},
    {"header": "Header 04", "text": "page 04", "image": "lib/img/B4.png"},
    {"header": "Header 05", "text": "page 05", "image": "lib/img/B5.png"},
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
                      itemBuilder: (contex, index) => ContentBoarding(
                            index: index,
                            message: onBoardingData1[index]["text"]!,
                            image: onBoardingData1[index]["image"]!,
                            header: onBoardingData1[index]["header"]!,
                          ))),
              Container(
                margin: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateColor.resolveWith(
                                (states) => const Color(0xFFFFFFFF)),
                            shape: MaterialStateProperty
                                .all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                        side: const BorderSide(
                                          color: Color(0xff757575),
                                        )))),
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>  const MyHomePage(),
                              ));
                        },
                        child: const Text(
                          'Siguiente',
                          style:
                              TextStyle(color: Color(0xff757575), fontSize: 25),
                        ))),
              ),
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
  int index;

  ContentBoarding({
    Key? key,
    required this.message,
    required this.image,
    required this.header,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 50),
        Image.asset(image),
        const SizedBox(height: 50),
        Text(
          header,
          style: const TextStyle(fontSize: 50, color: Color(0xff4f1581)),
        ),
        const SizedBox(height: 25),
        Text(
          message,
          style: const TextStyle(fontSize: 30, color: Color(0xff757575)),
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
          ],
        )
      ],
    );
  }
}
