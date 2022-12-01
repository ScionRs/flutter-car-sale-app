import 'package:car_sale_app/app_values/AppValue.dart';
import 'package:car_sale_app/widgets/city_card.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../model/City.dart';
import '../model/car_category.dart';
import '../model/сommon_data.dart';
import '../widgets/car_list_widget.dart';

List<String> listOfPictures = [
  "https://cdn.papajohns.ru//images/banners/396ece6c32db5efbc4a7ca2f0b5bd285.jpg",
  "https://cdn.papajohns.ru//images/banners/31573ad2cc3b1f64ef793b1773320d2f.png",
];

Color borderColor = Colors.white;
bool isSelected = false;

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({Key? key}) : super(key: key);
  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  bool isBtnSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: _AppBarWidget(),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          const _SliderWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                OutlinedButton(
                    style: isBtnSelected == true
                        ? AppValue.customStyleBlue
                        : AppValue.customStyleWhite,
                    onPressed: () {
                      setState(() {
                        isBtnSelected = true;
                        print(isBtnSelected);
                      });
                    },
                    child: Text(
                      'Города',
                      style: isBtnSelected == true
                          ? AppValue.customTextStyleWhite
                          : AppValue.customTextStyleBlack,
                    )),
                OutlinedButton(
                    style: isBtnSelected == false
                        ? AppValue.customStyleBlue
                        : AppValue.customStyleWhite,
                    onPressed: () {
                      setState(() {
                        isBtnSelected = false;
                        print(isBtnSelected);
                      });
                    },
                    child: Text(
                      'Автомобили',
                      style: isBtnSelected == true
                          ? AppValue.customTextStyleBlack
                          : AppValue.customTextStyleWhite,
                    )),
              ],
            ),
          ),
          isBtnSelected
              ? _BuildCityListWidget(CommonData.listOfCities)
              : _BuildCarListWidget(CommonData.carCategoryList),
        ],
      ),
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
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
        backgroundColor: const Color.fromRGBO(0, 73, 183, 1));
  }
}

class _SliderWidget extends StatelessWidget {
  const _SliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        viewportFraction: 1,
        height: 350,
        autoPlay: true,
      ),
      itemCount: listOfPictures.length,
      itemBuilder: (context, index, realIndex) {
        final urlImage = listOfPictures[index];
        return Container(
            margin: const EdgeInsets.symmetric(horizontal: 0),
            color: Colors.white,
            child: Image.network(
              urlImage,
              fit: BoxFit.cover,
            ));
      },
    );
  }
}

class _BuildCarListWidget extends StatefulWidget {
  final List<CarCategory> carCategory;
  const _BuildCarListWidget(
    this.carCategory, {
    Key? key,
  }) : super(key: key);

  @override
  State<_BuildCarListWidget> createState() => _BuildCarListWidgetState();
}

class _BuildCarListWidgetState extends State<_BuildCarListWidget> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: widget.carCategory.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemBuilder: (BuildContext context, int index) {
          final car = widget.carCategory[index];
          return GestureDetector(
              onTap: () {
                setState(() {
                  isSelected = !isSelected;
                });
              },
              child: CarCardWidget(
                  carCategory: car,
                  isSelected: (bool value) {
                    setState(() {
                      if (value) {
                      } else {}
                    });
                  }));
        });
  }
}

class _BuildCityListWidget extends StatefulWidget {
  final List<City> cities;
  const _BuildCityListWidget(
    this.cities, {
    Key? key,
  }) : super(key: key);

  @override
  State<_BuildCityListWidget> createState() => _BuildCityListWidgetState();
}

class _BuildCityListWidgetState extends State<_BuildCityListWidget> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: widget.cities.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisExtent: 100.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          final city = widget.cities[index];
          return GestureDetector(
              onTap: () {
                setState(() {
                  isSelected = !isSelected;
                });
              },
              child: CityCardWidget(
                  city: city,
                  isSelected: (bool value) {
                    setState(() {
                      if (value) {
                      } else {}
                    });
                  }));
        });
  }
}
