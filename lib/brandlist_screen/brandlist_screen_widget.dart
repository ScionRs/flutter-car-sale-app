import 'package:car_sale_app/theme/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
    return GridView.builder(
      itemCount: 3,
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemBuilder: (BuildContext context, int index) {
        return const _BrandCardShortWidget();
      },
    );
  }
}

class _BrandCardShortWidget extends StatefulWidget {
  const _BrandCardShortWidget({super.key});

  @override
  State<_BrandCardShortWidget> createState() => _BrandCardShortWidgetState();
}

class _BrandCardShortWidgetState extends State<_BrandCardShortWidget> {
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Card(
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
              child: SvgPicture.asset('images/bmw.svg'),
            ),
          ),
          Flexible(
            flex: 1,
            child: Text(
              "BMW",
              style: textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );
  }
}

class _AllBrandsWidget extends StatelessWidget {
  const _AllBrandsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        _AllBrandsTitleWidget(),
        SizedBox(height: 16),
        _BrandCardLongWidget()
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
  const _BrandCardLongWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
        children: const [
          _BrandLogoWidget(),
          SizedBox(width: 16),
          Expanded(
            child: _BrandNameWidget(),
          ),
          Icon(
            Icons.arrow_forward_ios_rounded,
          ),
        ],
      ),
    );
  }
}

class _BrandLogoWidget extends StatelessWidget {
  const _BrandLogoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'images/bmw.svg',
      width: 60,
    );
  }
}

class _BrandNameWidget extends StatelessWidget {
  const _BrandNameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'BMW',
          style: textTheme.titleSmall,
        ),
        const SizedBox(height: 8),
        Text(
          'Моделей: 10',
          style: textTheme.labelLarge,
        ),
      ],
    );
  }
}
