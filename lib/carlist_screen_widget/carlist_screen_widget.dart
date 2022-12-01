import 'package:flutter/material.dart';

String carPicture = "https://mazda.tts.ru/upload/iblock/677/mazda_6_sedan2.png";

class CarListScreenWidget extends StatelessWidget {
  const CarListScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: _AppBarWidget(),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) =>
            const _CarCardwidget(),
      ),
    );
  }
}

class _AppBarWidget extends StatelessWidget {
  const _AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'CarMarket',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      centerTitle: true,
      backgroundColor: const Color.fromRGBO(0, 73, 183, 1),
    );
  }
}

class _CarCardwidget extends StatelessWidget {
  const _CarCardwidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Container(
        height: 130,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromARGB(255, 237, 238, 241),
        ),
        child: Row(
          children: [
            Image.asset(
              "images/mazda_6.png",
              fit: BoxFit.contain,
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Mazda 6",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text("Количество: 7")
                ],
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }
}
