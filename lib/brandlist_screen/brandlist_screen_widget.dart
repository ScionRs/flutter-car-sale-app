
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../model/car_category.dart';
import '../model/сommon_data.dart';
import '../theme/constants.dart';
import '../widgets/brand_card_short_widget.dart';
import '../widgets/navigation.dart';

class BrandListScreenWidget extends StatefulWidget {
  const BrandListScreenWidget({Key? key}) : super(key: key);

  @override
  State<BrandListScreenWidget> createState() => _BrandListScreenWidgetState();
}

class _BrandListScreenWidgetState extends State<BrandListScreenWidget> {

  var _filterProductList = <CarCategory>[];
  final _searchController = TextEditingController();

  // Поиск продукта по name параметру
  void _searchBrand() {
    final query = _searchController.text;

    if (query.isNotEmpty) {
      _filterProductList = CommonData.carCategoryList.where((CarCategory carCategory) {
        return carCategory.name.toLowerCase().contains(query.toLowerCase());
      }).toList();
    }
    else {
      _filterProductList = CommonData.carCategoryList;
    }
    setState(() {

    });
  }


  @override
  void initState() {
    super.initState();
    _filterProductList = CommonData.carCategoryList;
    _searchController.addListener(_searchBrand);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Бренды'),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          const SizedBox(height: 10),
          _SearchWidget(textEditingController: _searchController,),
          const SizedBox(height: 26),
          const _MostSearchedBrandsWidget(),
          const SizedBox(height: 26),
          _AllBrandsWidget(carCategoryList: _filterProductList,)
        ],
      ),
    );
  }
}

class _SearchWidget extends StatefulWidget {
  final TextEditingController textEditingController;
  const _SearchWidget({Key? key, required this.textEditingController}) : super(key: key);

  @override
  State<_SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<_SearchWidget> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.textEditingController,
      decoration: const InputDecoration(
        hintText: "Поиск брендов...",
        suffixIcon: Icon(
          Icons.search,
        ),
      ),
    );
  }
}

class _MostSearchedBrandsWidget extends StatefulWidget {
  const _MostSearchedBrandsWidget({Key? key}) : super(key: key);

  @override
  State<_MostSearchedBrandsWidget> createState() =>
      _MostSearchedBrandsWidgetState();
}

class _MostSearchedBrandsWidgetState extends State<_MostSearchedBrandsWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const _MostSearchedBrandsTitleWidget(),
        const SizedBox(height: 16),
        _MostSearchedBrandsRowWidget(),
      ],
    );
  }
}

class _MostSearchedBrandsTitleWidget extends StatelessWidget {
  const _MostSearchedBrandsTitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Align(
      alignment: const Alignment(-1, 0),
      child: Text(
        'Самые просматриваемые бренды',
        style: textTheme.titleMedium,
      ),
    );
  }
}

class _MostSearchedBrandsRowWidget extends StatelessWidget {
  _MostSearchedBrandsRowWidget({Key? key}) : super(key: key);

  final carCategoryList = CommonData.carCategoryList;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 3,
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemBuilder: (BuildContext context, int index) {
        return BrandCardShortWidget(
          carCategoryList: carCategoryList,
          index: index,
        );
      },
    );
  }
}

class _AllBrandsWidget extends StatelessWidget {
  final List<CarCategory> carCategoryList;
  const _AllBrandsWidget({Key? key, required this.carCategoryList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const _AllBrandsTitleWidget(),
        const SizedBox(height: 16),
        _AllBrandsListWidget(carCategoryList: carCategoryList,),
      ],
    );
  }
}

class _AllBrandsTitleWidget extends StatelessWidget {
  const _AllBrandsTitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Align(
      alignment: const Alignment(-1, 0),
      child: Text(
        "Все бренды",
        style: textTheme.titleMedium,
      ),
    );
  }
}

class _AllBrandsListWidget extends StatelessWidget {
  List<CarCategory> carCategoryList;
  _AllBrandsListWidget({super.key, required this.carCategoryList});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) =>
          _BrandCardLongWidget(carCategoryList: carCategoryList, index: index),
      itemCount: carCategoryList.length,
      separatorBuilder: (BuildContext context, int index) =>
          const SizedBox(height: 16),
    );
  }
}

class _BrandCardLongWidget extends StatelessWidget {
  final List<CarCategory> carCategoryList;
  final int index;
  const _BrandCardLongWidget(
      {Key? key, required this.carCategoryList, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final carCategory = carCategoryList[index];
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(MainNavigationRouteName.carListScreen,
            arguments: carCategory.cars);
      },
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.lightGrey,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            _BrandLogoWidget(logo: carCategory.image),
            const SizedBox(width: 16),
            Expanded(
              child: _BrandNameWidget(
                name: carCategory.name,
                amountOfCar: carCategory.cars.length,
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios_rounded,
            ),
          ],
        ),
      ),
    );
  }
}

class _BrandLogoWidget extends StatelessWidget {
  final String logo;
  const _BrandLogoWidget({Key? key, required this.logo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      logo,
      width: 60,
    );
  }
}

class _BrandNameWidget extends StatelessWidget {
  final String name;
  final int amountOfCar;
  const _BrandNameWidget(
      {Key? key, required this.name, required this.amountOfCar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          name,
          style: textTheme.titleSmall,
        ),
        const SizedBox(height: 8),
        Text(
          'Моделей: $amountOfCar',
          style: textTheme.labelLarge,
        ),
      ],
    );
  }
}
