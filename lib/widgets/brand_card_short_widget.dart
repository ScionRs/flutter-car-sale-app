import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../model/car_category.dart';
import '../theme/constants.dart';
import 'navigation.dart';

class BrandCardShortWidget extends StatelessWidget {
  final List<CarCategory> carCategoryList;
  final int index;
  const BrandCardShortWidget(
      {Key? key, required this.carCategoryList, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    final carCategory = carCategoryList[index];
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(MainNavigationRouteName.carListScreen,
            arguments: carCategory.cars);
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
                child: SvgPicture.asset(carCategory.image),
              ),
            ),
            Flexible(
              flex: 1,
              child: Text(
                carCategory.name,
                style: textTheme.titleSmall,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
