import 'package:flutter/material.dart';

class UpiDetails extends StatelessWidget {
  const UpiDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromRGBO(242, 246, 255, 1.0),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: Text(
                'UPI Lite: ₹10',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 11
                ),
              ),
            ),
          ),
          SizedBox(width: 10,),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromRGBO(242, 246, 255, 1.0),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: Text(
                'UPI ID: munnashaheemperinchikkal@oksbi',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 11
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}