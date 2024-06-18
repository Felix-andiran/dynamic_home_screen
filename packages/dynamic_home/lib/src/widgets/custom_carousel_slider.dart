import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomCarouselSlider extends StatefulWidget {
  const CustomCarouselSlider({super.key});

  @override
  CustomCarouselSliderState createState() => CustomCarouselSliderState();
}

class CustomCarouselSliderState extends State<CustomCarouselSlider> {
  int _currentIndex = 0;
  final List<List<Widget>> _pages = [
    [
      _buildFunctionalityItem(Icons.person, 'Create Users'),
      _buildFunctionalityItem(Icons.account_tree, 'Create Address Hierarchy'),
      _buildFunctionalityItem(Icons.supervisor_account, 'Create Users roles'),
      _buildFunctionalityItem(Icons.group, 'Manage Employees'),
    ],
    [
      _buildFunctionalityItem(Icons.add, 'Add Item 1'),
      _buildFunctionalityItem(Icons.add, 'Add Item 2'),
      _buildFunctionalityItem(Icons.add, 'Add Item 3'),
      _buildFunctionalityItem(Icons.add, 'Add Item 4'),
    ],
  ];

  static Widget _buildFunctionalityItem(IconData icon, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.grey.shade700,
          child: FaIcon(
            icon,
            size: 30,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 40,
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 14.0,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: _pages.length,
          itemBuilder: (BuildContext context, int pageIndex, int index) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: _pages[pageIndex].map((item) {
                return SizedBox(
                  width: MediaQuery.of(context).size.width / 4,
                  child: item,
                );
              }).toList(),
            );
          },
          options: CarouselOptions(
            height: 140.0,
            viewportFraction: 1.0,
            aspectRatio: 4 / 2,
            enlargeCenterPage: true,
            enableInfiniteScroll: false,
            initialPage: 0,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
            pageSnapping: true,
            scrollDirection: Axis.horizontal,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _pages.map((page) {
            int pageIndex = _pages.indexOf(page);
            return Container(
              width: 8.0,
              height: 8.0,
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex == pageIndex
                    ? const Color.fromRGBO(0, 0, 0, 0.9)
                    : const Color.fromRGBO(0, 0, 0, 0.4),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
