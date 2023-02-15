import 'package:car_sale_app/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:car_sale_app/model/%D1%81ommon_data.dart';
import 'package:car_sale_app/theme/constants.dart';
import 'package:car_sale_app/widgets/navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../model/car_intermediate.dart';
import '../provider/car_provider.dart';
import '../widgets/brand_card_short_widget.dart';
import '../widgets/build_local_image.dart';
import '../widgets/car_card_widget.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({super.key});

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const _LocationWidget(),
        elevation: 0,
        toolbarHeight: 78,
      ),
      body: ListView(
        // shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: const [
          SizedBox(height: 10),
          _SearchWidget(),
          SizedBox(height: 26),
          _TopBrandsWidget(),
          SizedBox(height: 26),
          RecomendationsWidget(),
        ],
      ),
    );
  }
}

class _LocationWidget extends StatefulWidget {
  const _LocationWidget({super.key});

  @override
  State<_LocationWidget> createState() => _LocationWidgetState();
}

class _LocationWidgetState extends State<_LocationWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        _LocationIconWidget(),
        SizedBox(width: 10),
        _LocationNameWidget(),
      ],
    );
  }
}

class _LocationIconWidget extends StatelessWidget {
  const _LocationIconWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.lightGrey,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(14)),
      padding: const EdgeInsets.all(8),
      child: const Icon(
        Icons.place_outlined,
      ),
    );
  }
}

class _LocationNameWidget extends StatelessWidget {
  const _LocationNameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Местонахождение',
          style: textTheme.labelLarge,
        ),
        const SizedBox(height: 4),
        Text(
          'Москва',
          style: textTheme.titleMedium,
        ),
      ],
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
        hintText: "Поиск автомобилей...",
        suffixIcon: Icon(
          Icons.search,
        ),
      ),
    );
  }
}

class _TopBrandsWidget extends StatelessWidget {
  const _TopBrandsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const _TopBrandsTitleWidget(),
        const SizedBox(height: 16),
        _TopBrandsRowWidget(),
      ],
    );
  }
}

class _TopBrandsTitleWidget extends StatelessWidget {
  const _TopBrandsTitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Row(
      children: [
        Expanded(
          child: Text(
            'Топ бренды',
            style: textTheme.titleLarge,
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).pushNamed(
              MainNavigationRouteName.brandListScreen,
            );
          },
          child: Text(
            'Посмотреть все',
            style: textTheme.labelLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

class _TopBrandsRowWidget extends StatelessWidget {
  _TopBrandsRowWidget({Key? key}) : super(key: key);

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

class RecomendationsWidget extends StatefulWidget {
  const RecomendationsWidget({Key? key}) : super(key: key);

  @override
  State<RecomendationsWidget> createState() => _RecomendationsWidgetState();
}

class _RecomendationsWidgetState extends State<RecomendationsWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        RecomendationsTitleWidget(),
        SizedBox(height: 16),
        // RecomendationsRowWidget(),
      ],
    );
  }
}

class RecomendationsTitleWidget extends StatelessWidget {
  const RecomendationsTitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Align(
      alignment: const Alignment(-1, 0),
      child: Text(
        'Рекомендации',
        style: textTheme.titleLarge,
      ),
    );
  }
}

class RecomendationsRowWidget extends StatelessWidget {
  const RecomendationsRowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final globalCarList = CommonData.globalCarList;
    return ListView.separated(
      itemCount: 5,
      // shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        final car = globalCarList[index];
        return IndividualCarCardWidget(
          key: UniqueKey(),
          car: car,
          isLikedDefault: false,
          isSelected: (bool value) {},
        );
      },
      separatorBuilder: (BuildContext context, int index) =>
          const SizedBox(width: 16),
    );
  }
}
