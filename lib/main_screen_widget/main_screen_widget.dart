
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

List<String> listOfPictures = [
  "https://cdn.papajohns.ru//images/banners/396ece6c32db5efbc4a7ca2f0b5bd285.jpg",
  "https://cdn.papajohns.ru//images/banners/31573ad2cc3b1f64ef793b1773320d2f.png",
];

class MainScreenWidget extends StatelessWidget {
  const MainScreenWidget({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
        const _LogoWidget(),
          _CarouselWidget(),
        ],
      ),
    );
  }

  Widget _CarouselWidget() =>
      CarouselSlider.builder(
        options: CarouselOptions(
          viewportFraction: 1,
          height: 350,
          autoPlay: true,
        ),
        itemCount: listOfPictures.length,
        itemBuilder: (context, index, realIndex) {
          final urlImage = listOfPictures[index];
          return buildImage(urlImage, index);
        },
      );

  Widget buildImage(String urlImage, int index) => Container(
      margin: const EdgeInsets.symmetric(horizontal: 0),
      color: Colors.white,
      child: Image.network(
        urlImage,
        fit: BoxFit.cover,
      )
  );

}
class _LogoWidget extends StatelessWidget {
  const _LogoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      alignment: Alignment.center,
      color: const Color.fromRGBO(0, 73, 183, 1),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Car',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text('Market',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

