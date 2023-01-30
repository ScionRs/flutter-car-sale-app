import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        elevation: 0,
        toolbarHeight: 78,
      ),
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
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
            color: const Color.fromRGBO(243, 244, 246, 1),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(14)),
      padding: const EdgeInsets.all(8),
      child: const Icon(
        Icons.place_outlined,
        color: Color.fromRGBO(15, 23, 42, 1),
      ),
    );
  }
}

class _LocationNameWidget extends StatelessWidget {
  const _LocationNameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Местонахождение',
          style: TextStyle(
            fontSize: 14,
            color: Color.fromRGBO(156, 163, 175, 1),
          ),
        ),
        SizedBox(height: 4),
        Text(
          'Москва',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(15, 23, 42, 1),
          ),
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
    return TextField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(20),
        hintText: "Поиск автомобилей...",
        hintStyle: const TextStyle(color: Color.fromRGBO(156, 163, 175, 1)),
        suffixIcon: const Icon(Icons.search),
        suffixIconColor: const Color.fromRGBO(15, 23, 42, 1),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(14),
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color.fromRGBO(48, 55, 120, 1),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(14)),
        fillColor: const Color.fromRGBO(252, 252, 253, 1),
        filled: true,
      ),
    );
  }
}

class _TopBrandsWidget extends StatefulWidget {
  const _TopBrandsWidget({Key? key}) : super(key: key);

  @override
  State<_TopBrandsWidget> createState() => _TopBrandsWidgetState();
}

class _TopBrandsWidgetState extends State<_TopBrandsWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        _TopBrandsTitleWidget(),
      ],
    );
  }
}

class _TopBrandsTitleWidget extends StatelessWidget {
  const _TopBrandsTitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(
          child: Text(
            'Топ бренды',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(15, 23, 42, 1),
            ),
          ),
        ),
        Text(
          'Посмотреть все',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(156, 163, 175, 1),
          ),
        )
      ],
    );
  }
}

class _TopBrandsRowWidget extends StatelessWidget {
  const _TopBrandsRowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemBuilder: (BuildContext context, int index) {
        return _BrandCardWidget();
      },
    );
  }
}

class _BrandCardWidget extends StatefulWidget {
  const _BrandCardWidget({super.key});

  @override
  State<_BrandCardWidget> createState() => __BrandCardWidgetState();
}

class __BrandCardWidgetState extends State<_BrandCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Color.fromRGBO(243, 244, 246, 1),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 100,
            child: Container(),
          ),
          Text("БМВ")
        ],
      ),
    );
  }
}
