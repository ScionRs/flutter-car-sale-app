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
      body: ListView(
        children: [
          const _AppBarWidget(),
          _CarouselWidget(),
          const _TabBarWidget(),
          Container(
            color: Colors.red,
            height: 50,
          )
        ],
      ),
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
    );
  }

  Widget _CarouselWidget() => CarouselSlider.builder(
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
      ));
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
        backgroundColor: const Color.fromRGBO(0, 73, 183, 1));
  }
}

class _TabBarWidget extends StatefulWidget {
  const _TabBarWidget({Key? key}) : super(key: key);

  @override
  State<_TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<_TabBarWidget>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromRGBO(215, 217, 223, 1),
        ),
      ),
      child: Column(
        children: [
          TabBar(
            labelColor: Colors.black,
            controller: tabController,
            tabs: const [
              Tab(text: "Города"),
              Tab(text: "Автомобили"),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: const [
                _CitiesPageWidget(),
                _CitiesPageWidget(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _CitiesPageWidget extends StatelessWidget {
  const _CitiesPageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text("ГОРОД"),
        Text("ГОРОД"),
        Text("ГОРОД"),
        Text("ГОРОД"),
        Text("ГОРОД"),
        Text("ГОРОД"),
        Text("ГОРОД"),
        Text("ГОРОД"),
        Text("ГОРОД"),
        Text("ГОРОД"),
        Text("ГОРОД"),
        Text("ГОРОД"),
        Text("ГОРОД"),
        Text("ГОРОД"),
        Text("ГОРОД"),
        Text("ГОРОД"),
        Text("ГОРОД"),
        Text("ГОРОД"),
      ],
    );
  }
}
