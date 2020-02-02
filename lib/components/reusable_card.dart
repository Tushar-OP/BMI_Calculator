import 'package:flutter/material.dart';

enum Gender {
  male,
  female,
}

class ReusableCard extends StatelessWidget {
  final Color colr;
  final Widget cardChild;
  final Gender selectedGender;
  final Function onPress;

  ReusableCard(
      {@required this.colr, this.cardChild, this.selectedGender, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colr,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
