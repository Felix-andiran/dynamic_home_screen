import 'package:dynamic_home/dynamic_home.dart';
import 'package:flutter/material.dart';

class DynamicHomeWidget extends StatefulWidget {
  const DynamicHomeWidget({super.key, required this.homePageData});

  final HomePageData homePageData;

  @override
  State<DynamicHomeWidget> createState() => _DynamicHomeWidgetState();
}

class _DynamicHomeWidgetState extends State<DynamicHomeWidget> {
  late HomeWidgets _homeWidgets;
  late Home _home;

  @override
  void initState() {
    // TODO: implement initState
    _home = widget.homePageData.home!;
    _homeWidgets = widget.homePageData.homeWidgets!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Hi, Ben',
        appBarWidget: _homeWidgets.appbarWidget!,
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: const CustomCarouselSlider(),
            ),
          ),
          const Positioned(
            bottom: 0,
            child: CustomSearchBar(),
          ),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
