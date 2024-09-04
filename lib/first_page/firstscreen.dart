import 'package:flutter/material.dart';
import 'package:flutter_education_app/first_page/textanimation.dart';
import 'circle_button.dart';

class Firstscreen extends StatelessWidget {
  const Firstscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0553B1),
        centerTitle: true,
        title: Image.asset(
          "lib/assets/img/firstScreenImage/whiteFl.png",
          scale: 4,
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu, size: 28, color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, size: 28, color: Colors.black),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(15),
            height: 200,
            width: 200,
            decoration: const BoxDecoration(
                color: Color(0xFF60BCEC),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 4,
                  child: Image.asset(
                    "lib/assets/img/firstScreenImage/YoungWithout.png",
                    scale: 2,
                  ),
                ),
                Positioned(
                    top: 23,
                    left: 175,
                    child: Container(
                      height: 150,
                      width: 0.5,
                      color: Colors.black,
                    )),
                const Positioned(left: 200, top: 25, child: Textanimat())
              ],
            ),
          ),
          const SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CircleButton(
                    route: "/DartScreen",
                    imageAsset:
                        "lib/assets/img/firstScreenImage/download-removebg-preview (1).png",
                    size: 4.5,
                    text: "Dart",
                    textSize: 20),
                CircleButton(
                    route: "/FlutterScreen",
                    imageAsset:
                        "lib/assets/img/firstScreenImage/FlutterlogoColumn.png",
                    size: 10,
                    text: "Flutter",
                    textSize: 20),
                CircleButton(
                    route: "/WidgetScreen",
                    imageAsset:
                        "lib/assets/img/firstScreenImage/WidgetIcon.png",
                    size: 8,
                    text: "Widget",
                    textSize: 20),
                CircleButton(
                    route: "/PackageWeekScreen",
                    imageAsset:
                        "lib/assets/img/firstScreenImage/flutter-package-svgrepo-com (1).png",
                    size: 13,
                    text: "PoW",
                    textSize: 20),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.all(15),
            height: 200,
            width: 200,
            decoration: const BoxDecoration(
                color: Color(0xFF60BCEC),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Stack(
              children: [
                const Positioned(
                  top: 5,
                  left: 7,
                  child: Text("Exercises&Projects",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Colors.white60)),
                ),
                const Positioned(
                    left: 5,
                    top: 50,
                    child: Text(
                        "Apply concepts through\nhands-on exercises and projects\nenhancing practical skills.",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.white60))),
                Positioned(
                  right: -5,
                  child: Image.asset(
                    "lib/assets/img/firstScreenImage/construction-building-house-skyscraper_3446-653-removebg-preview.png",
                    scale: 2.5,
                  ),
                ),
                Positioned(
                  bottom: 25,
                  left: 20,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Colors.white),
                      foregroundColor: WidgetStateProperty.all(Colors.black),
                    ),
                    child: const Text("More Details"),
                  ),
                )
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                MaterialButton(
                    onPressed: () {},
                    child: Container(
                      //margin: EdgeInsets.symmetric(horizontal: 15),
                      height: 180,
                      width: 140,
                      decoration: const BoxDecoration(
                          color: Color(0xFF042B59),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Stack(
                        children: [
                          const Positioned(
                              top: 3,
                              left: 20,
                              child: Text("Recipe App",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white60))),
                          Positioned(
                            right: 5,
                            bottom: 5,
                            child: Image.asset(
                              "lib/assets/img/firstScreenImage/RecipeApp.png",
                              scale: 3.5,
                            ),
                          ),
                        ],
                      ),
                    )),
                MaterialButton(
                    onPressed: () {},
                    child: Container(
                      //margin: EdgeInsets.symmetric(horizontal: 15),
                      height: 180,
                      width: 140,
                      decoration: const BoxDecoration(
                          color: Color(0xFF042B59),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Stack(
                        children: [
                          const Positioned(
                              top: 3,
                              left: 34,
                              child: Text("Gym App",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white60))),
                          Positioned(
                            right: 8,
                            bottom: -9,
                            child: Image.asset(
                              "lib/assets/img/firstScreenImage/i640_mockup_left-1e5922d3a73b5778bd05e022a5dc7d4e-removebg-preview.png",
                              scale: 3.5,
                            ),
                          ),
                        ],
                      ),
                    )),
                MaterialButton(
                    onPressed: () {},
                    child: Container(
                      //margin: EdgeInsets.symmetric(horizontal: 15),
                      height: 180,
                      width: 140,
                      decoration: const BoxDecoration(
                          color: Color(0xFF042B59),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Stack(
                        children: [
                          const Positioned(
                              top: 3,
                              left: 20,
                              child: Text("E-Commerce",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white60))),
                          Positioned(
                            right: -2,
                            bottom: 6,
                            child: Image.asset(
                              "lib/assets/img/firstScreenImage/Oshta-Screen-01-removebg-preview.png",
                              scale: 3.5,
                            ),
                          ),
                        ],
                      ),
                    )),
                MaterialButton(
                    onPressed: () {},
                    child: Container(
                      //margin: EdgeInsets.symmetric(horizontal: 15),
                      height: 180,
                      width: 140,
                      decoration: const BoxDecoration(
                          color: Color(0xFF042B59),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Stack(
                        children: [
                          const Positioned(
                              top: 3,
                              left: 28,
                              child: Text("Music App",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white60))),
                          Positioned(
                            right: -25,
                            bottom: 5,
                            child: Image.asset(
                              "lib/assets/img/firstScreenImage/Spotify-app-img-22-removebg-preview.png",
                              scale: 2.5,
                            ),
                          ),
                        ],
                      ),
                    )),
              ],
            ),
          ),
          const SizedBox(height: 20)
        ],
      ),
    );
  }
}
