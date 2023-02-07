import 'package:car_sale_app/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:car_sale_app/model/%D1%81ommon_data.dart';
import 'package:car_sale_app/theme/constants.dart';
import 'package:car_sale_app/widgets/navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../model/car_intermediate.dart';
import '../widgets/build_local_image.dart';

class RedesignedMainScreenWidget extends StatefulWidget {
  const RedesignedMainScreenWidget({super.key});

  @override
  State<RedesignedMainScreenWidget> createState() =>
      _RedesignedMainScreenWidgetState();
}

class _RedesignedMainScreenWidgetState
    extends State<RedesignedMainScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const _LocationWidget(),
        elevation: 0,
        toolbarHeight: 78,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: const [
          SizedBox(height: 10),
          _SearchWidget(),
          SizedBox(height: 26),
          _TopBrandsWidget(),
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
      children: const [
        _TopBrandsTitleWidget(),
        SizedBox(height: 16),
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
  const _TopBrandsRowWidget({Key? key}) : super(key: key);

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
