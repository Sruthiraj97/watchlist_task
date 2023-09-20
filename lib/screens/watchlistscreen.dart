// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:watchlist_app/constants/textconstants.dart';
import 'package:watchlist_app/screens/sortingscreen.dart';
import 'package:watchlist_app/screens/tabone.dart';
import 'package:watchlist_app/screens/tabthree.dart';
import 'package:watchlist_app/screens/tabtwo.dart';

class WatchlistScreen extends StatelessWidget {
  const WatchlistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          // backgroundColor: Colors.blue,
          appBar: customAppBar(),
          body: tabBarList(),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.miniEndFloat,
          floatingActionButton: buildFloatingActionButton(context),
        ),
      ),
    );
  }
}

PreferredSizeWidget customAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    title: Text(
      TextConstants.watchList,
      style: const TextStyle(
        color: Colors.black,
      ),
    ),
    bottom: const TabBar(
      labelColor: Colors.blue,
      // selectedLabelColor: Colors.white,
      unselectedLabelColor: Colors.black,
      tabs: [
        Tab(text: 'Tab 1'),
        Tab(text: 'Tab 2'),
        Tab(text: 'Tab 3'),
      ],
    ),
  );
}

Widget tabBarList() {
  return const TabBarView(
    children: [
      Center(
        child: TabOne(),
      ),
      Center(
        child: TabTwo(),
      ),
      Center(
        child: TabThree(),
      ),
    ],
  );
}

Widget buildFloatingActionButton(BuildContext context) {
  return FloatingActionButton(
    onPressed: () {
      showModalBottomSheet(
        context: context,
        backgroundColor: Colors.transparent,
        builder: (BuildContext context) {
          return Container(
            height: 300,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
              child: Container(
                color: Colors.white,
                child: const Center(
                  child: SortingScreen(),
                ),
              ),
            ),
          );
        },
      );
    },
    shape: RoundedRectangleBorder(
      borderRadius:
          BorderRadius.circular(20.0), // Adjust the border radius as needed
    ),
    backgroundColor: Colors.white,
    child: const Icon(
      Icons.menu_open,
      color: Colors.blue, // Set the color of the icon to blue
    ),
  );
}

// Widget sortingOption() {
//   return Container(
//     padding: const EdgeInsets.all(16.0),
//     child: ListView(
//       children: const [
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(height: 16.0),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text('Sort'),
//                 Row(
//                   children: [
//                     Text('Done'),
//                     SizedBox(width: 16.0), // Add spacing between options
//                   ],
//                 ),
//               ],
//             ),
//             SizedBox(height: 16.0),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text('Alphabetically'),
//                 Row(
//                   children: [
//                     Text('A'),
//                     SizedBox(
//                         width: 8.0), // Add spacing between "A" and the icon
//                     Icon(
//                         Icons.arrow_downward), // Replace with your desired icon
//                     SizedBox(
//                         width: 8.0), // Add spacing between the icon and "Z"
//                     Text('Z'),
//                     SizedBox(width: 16.0), // Add spacing between options
//                     Text('A'),
//                     SizedBox(
//                         width: 8.0), // Add spacing between "A" and the icon
//                     Icon(Icons.arrow_upward), // Replace with your desired icon
//                     SizedBox(
//                         width: 8.0), // Add spacing between the icon and "Z"
//                     Text('Z'),
//                   ],
//                 ),
//               ],
//             ),
//             SizedBox(height: 16.0),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text('UserID'),
//                 Row(
//                   children: [
//                     Text('0'),
//                     SizedBox(
//                         width: 8.0), // Add spacing between "A" and the icon
//                     Icon(Icons.arrow_upward), // Replace with your desired icon
//                     SizedBox(
//                         width: 8.0), // Add spacing between the icon and "Z"
//                     Text('9'),
//                     SizedBox(width: 16.0), // Add spacing between options
//                     Text('9'),
//                     SizedBox(
//                         width: 8.0), // Add spacing between "A" and the icon
//                     Icon(
//                         Icons.arrow_downward), // Replace with your desired icon
//                     SizedBox(
//                         width: 8.0), // Add spacing between the icon and "Z"
//                     Text('0'),
//                   ],
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ],
//     ),
//   );
// }
