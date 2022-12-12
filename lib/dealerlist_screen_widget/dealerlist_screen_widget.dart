import 'package:car_sale_app/model/Dealer.dart';
import 'package:car_sale_app/model/City.dart';
import 'package:car_sale_app/widgets/app_bar_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class DealerListScreenWidget extends StatelessWidget {
  final City city;
  const DealerListScreenWidget({Key? key, required this.city})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: AppBarWidget(),
      ),
      body: ListView.separated(
        itemCount: city.autoShowList.length,
        padding: const EdgeInsets.all(16),
        itemBuilder: (BuildContext context, int index) => GestureDetector(
          onTap: () {},
          child: _DealerCardWidget(dealer: city.autoShowList[index]),
        ),
        separatorBuilder: (BuildContext context, int index) =>
            const SizedBox(height: 16),
      ),
    );
  }
}

class _DealerCardWidget extends StatelessWidget {
  final Dealer dealer;
  const _DealerCardWidget({required this.dealer});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(255, 238, 239, 240),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 100,
            child: SvgPicture.network(
                "https://www.tts.ru/bitrix/templates/redisign/media/img/logo-TTS30.svg"),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  dealer.name,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  dealer.address,
                ),
              ],
            ),
          ),
          const Icon(
            Icons.arrow_forward_ios_rounded,
            size: 30,
          ),
        ],
      ),
    );
  }
}
