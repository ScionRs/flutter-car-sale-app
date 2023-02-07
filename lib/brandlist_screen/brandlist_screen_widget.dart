import 'package:car_sale_app/theme/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../model/car_intermediate.dart';
import '../model/сommon_data.dart';
import '../widgets/navigation.dart';

class BrandListScreenWidget extends StatefulWidget {
  const BrandListScreenWidget({Key? key}) : super(key: key);

  @override
  State<BrandListScreenWidget> createState() => _BrandListScreenWidgetState();
}

class _BrandListScreenWidgetState extends State<BrandListScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Бренды'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: const [
          SizedBox(height: 10),
          _SearchWidget(),
          SizedBox(height: 26),
          _MostSearchedBrandsWidget(),
          SizedBox(height: 26),
          _AllBrandsWidget()
        ],
      ),
    );
  }
}

class _SearchWidget extends StatefulWidget {
  const _SearchWidget({Key? key}) : super(key: key);

  @override
  State<_SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<_SearchWidget> {
  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
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
      children: const [
        _MostSearchedBrandsTitleWidget(),
        SizedBox(height: 16),
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
  const _MostSearchedBrandsRowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final carCategory = CommonData.carCategoryList[0];
    return GridView.builder(
      itemCount: 3,
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemBuilder: (BuildContext context, int index) {
        return _BrandCardShortWidget(
          name: carCategory.name,
          logo: carCategory.image,
          cars: carCategory.cars,
        );
      },
    );
  }
}

class _BrandCardShortWidget extends StatelessWidget {
  final String name;
  final String logo;
  final List<CarIntermediate> cars;
  const _BrandCardShortWidget(
      {Key? key, required this.name, required this.logo, required this.cars})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(MainNavigationRouteName.carListScreen, arguments: cars);
      },
      child: Card(
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: AppColors.lightGrey,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(14),
        ),
        elevation: 0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              flex: 2,
              child: SizedBox(
                width: 50,
                child: SvgPicture.asset(logo),
              ),
            ),
            Flexible(
              flex: 1,
              child: Text(
                name,
                style: textTheme.titleSmall,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _AllBrandsWidget extends StatelessWidget {
  const _AllBrandsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final carCategory = CommonData.carCategoryList[0];
    return Column(
      children: [
        const _AllBrandsTitleWidget(),
        const SizedBox(height: 16),
        _BrandCardLongWidget(
          name: carCategory.name,
          logo: carCategory.image,
          cars: carCategory.cars,
        )
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

class _BrandCardLongWidget extends StatelessWidget {
  final String name;
  final String logo;
  final List<CarIntermediate> cars;
  const _BrandCardLongWidget(
      {Key? key, required this.name, required this.logo, required this.cars})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(MainNavigationRouteName.carListScreen, arguments: cars);
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
            _BrandLogoWidget(logo: logo),
            const SizedBox(width: 16),
            Expanded(
              child: _BrandNameWidget(
                name: name,
                amountOfCar: cars.length,
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
