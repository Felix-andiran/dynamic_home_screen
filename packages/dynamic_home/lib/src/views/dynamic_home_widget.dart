import 'package:dynamic_home/src/widgets/widgets.dart';
import 'package:flutter/material.dart';

class DynamicHomeWidget extends StatefulWidget {
  const DynamicHomeWidget({super.key});

  @override
  State<DynamicHomeWidget> createState() => _DynamicHomeWidgetState();
}

class _DynamicHomeWidgetState extends State<DynamicHomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Hi, Ben',
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          PositionedDirectional(
            top: 0,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: const CustomCarouselSlider(),
            ),
          ),
          const PositionedDirectional(
            bottom: 0,
            child: CustomSearchBar(),
          ),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
