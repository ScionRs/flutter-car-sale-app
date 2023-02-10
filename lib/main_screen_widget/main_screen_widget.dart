import 'package:car_sale_app/carlist_screen_widget/carlist_screen_widget.dart';
import 'package:car_sale_app/dealerlist_screen_widget/dealerlist_screen_widget.dart';
import 'package:car_sale_app/theme/constants.dart';
import 'package:car_sale_app/widgets/app_bar_widget.dart';
import 'package:car_sale_app/widgets/city_card.dart';
import 'package:car_sale_app/widgets/navigation.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../model/City.dart';
import '../model/car_category.dart';
import '../model/сommon_data.dart';
import '../widgets/car_list_widget.dart';

List<String> listOfPictures = [
  "https://autoreview.ru/images/Article/1751/Article_175162_860_575.jpg",
  "https://autoreview.ru/images/Article/1750/Article_175096_860_575.jpg",
  "https://autoreview.ru/images/Article/1751/Article_175121_860_575.jpg"
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
        child: AppBarWidget(),
      ),
      body: ListView(
        shrinkWrap: true,
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
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
                        ? AppColors.customStyleBlue
                        : AppColors.customStyleWhite,
                    onPressed: () {
                      setState(() {
                        isBtnSelected = true;
                        print(isBtnSelected);
                      });
                    },
                    child: Text(
                      'Города',
                      style: isBtnSelected == true
                          ? AppColors.customTextStyleWhite
                          : AppColors.customTextStyleBlack,
                    )),
                OutlinedButton(
                    style: isBtnSelected == false
                        ? AppColors.customStyleBlue
                        : AppColors.customStyleWhite,
                    onPressed: () {
                      setState(() {
                        isBtnSelected = false;
                        print(isBtnSelected);
                      });
                    },
                    child: Text(
                      'Автомобили',
                      style: isBtnSelected == true
                          ? AppColors.customTextStyleBlack
                          : AppColors.customTextStyleWhite,
                    )),
              ],
            ),
          ),
          // isBtnSelected
          //     ? _BuildCityListWidget(CommonData.listOfCities)
          //     : _BuildCarListWidget(CommonData.carCategoryList)
        ],
      ),
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
    );
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
      physics: const BouncingScrollPhysics(),
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
              Navigator.of(context).pushNamed(
                  MainNavigationRouteName.carListScreen,
                  arguments: car);
            },
          ),
        );
      },
    );
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
      physics: const BouncingScrollPhysics(),
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
              Navigator.of(context).pushNamed(
                  MainNavigationRouteName.dealerListScreen,
                  arguments: city);
            },
          ),
        );
      },
    );
  }
}

/*
GridView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: CommonData.carCategoryList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemBuilder: (BuildContext context, int index) {
                final car = CommonData.carCategoryList[index];
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
                            Navigator.push(context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      CarListScreenWidget(carCategory: car),
                                ));
                            if (value) {
                            } else {}
                          });
                        }));
              }),
 */