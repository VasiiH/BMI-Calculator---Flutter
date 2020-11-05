import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget childCard;
  final Function onPress;
  ReusableCard({@required this.colour, this.childCard, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: childCard,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}

// class IconContent extends StatelessWidget {
//   final String label;
//   final IconData icon;
//
//   IconContent({@required this.label, this.icon});
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Icon(
//           icon,
//           size: 80.0,
//         ),
//         SizedBox(
//           height: 10.0,
//         ),
//         Text(
//           label,
//           style: TextStyle(fontSize: 18.0, color: Color(0xFF8d8e98)),
//         ),
//       ],
//     );
//   }
// }
