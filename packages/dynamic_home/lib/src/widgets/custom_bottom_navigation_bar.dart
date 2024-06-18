// import 'package:dynamic_home/src/themes/themes.dart';
import 'package:flutter/material.dart';

// class CustomBottomNavigationBar extends StatefulWidget {
//   const CustomBottomNavigationBar({super.key});

//   @override
//   State<CustomBottomNavigationBar> createState() =>
//       _CustomBottomNavigationBarState();
// }

// class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
//   int _selectedIndex = 0;
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       backgroundColor: Colors.white,
//       type: BottomNavigationBarType.shifting,
//       items: <BottomNavigationBarItem>[
//         _buildBottomNavigationBarItem(
//             icon: Icons.home, label: 'Home', isSelected: _selectedIndex == 0),
//         _buildBottomNavigationBarItem(
//             icon: Icons.headset_mic,
//             label: 'Support',
//             isSelected: _selectedIndex == 1),
//         _buildBottomNavigationBarItem(
//             icon: Icons.book, label: 'Learn', isSelected: _selectedIndex == 2),
//         _buildBottomNavigationBarItem(
//             icon: Icons.notifications,
//             label: 'Notifications',
//             isSelected: _selectedIndex == 3),
//       ],
//       currentIndex: _selectedIndex,
//       onTap: _onItemTapped,
//       showSelectedLabels: false,
//       showUnselectedLabels: false,
//     );
//   }
// }

// BottomNavigationBarItem _buildBottomNavigationBarItem(
//     {required IconData icon, required String label, required bool isSelected}) {
//   return BottomNavigationBarItem(
//     icon: Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(5),
//         color: isSelected ? Colors.grey[200] : Colors.transparent,
//         border: isSelected
//             ? Border.all(
//                 color: Colors.grey[300]!,
//                 width: 2.0,
//               )
//             : null,
//       ),
//       padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
//       child: Row(
//         mainAxisSize: MainAxisSize.min,
//         children: <Widget>[
//           Icon(
//             icon,
//             color: isSelected ? Colors.grey[700]! : Colors.grey,
//           ),
//           if (isSelected)
//             Padding(
//               padding: const EdgeInsets.only(left: 8.0),
//               child: Text(
//                 label,
//                 style: Styles.navigation(
//                     isSelected ? Colors.grey[700]! : Colors.grey),
//               ),
//             ),
//         ],
//       ),
//     ),
//     label: '',
//   );
// }

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    print("tapped");
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem(icon: Icons.home, label: 'Home', index: 0),
            _buildNavItem(
                icon: Icons.headset_mic, label: 'Help desk', index: 1),
            _buildNavItem(icon: Icons.book, label: 'Learning', index: 2),
            _buildNavItem(
                icon: Icons.notifications, label: 'Notification', index: 3),
            _buildNavItem(icon: Icons.menu, label: 'Menu', index: 4),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(
      {required IconData icon, required String label, required int index}) {
    bool isSelected = _selectedIndex == index;
    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            maxRadius: 32,
            backgroundColor:
                isSelected ? Colors.grey.shade300 : Colors.transparent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: Colors.black,
                ),
                const SizedBox(height: 2.0),
                Text(
                  label,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 10.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
