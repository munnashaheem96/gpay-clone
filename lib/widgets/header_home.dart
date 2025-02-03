import 'package:flutter/material.dart';

class HeaderHome extends StatelessWidget {
  const HeaderHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(242, 246, 255, 1.0),
      ),
      height: 300,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/images/banner.png',
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 54,
            left: 20,
            right: 20,
            child: Row(
              children: [
                Expanded( // Ensures TextField takes full width
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1), // Shadow color
                          blurRadius: 10, // Softness of shadow
                          spreadRadius: 1, // Extent of shadow
                          offset: Offset(0, 8), // Moves shadow down
                        ),
                      ],
                      borderRadius: BorderRadius.circular(50), // Match text field radius
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Pay by name or phone number",
                        hintStyle: TextStyle(color: Colors.grey[500]),
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide.none, // Remove default border
                        ),
                        filled: true,
                        fillColor: Color.fromRGBO(242, 246, 255, 1.0), // Background color
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10), // Space between search & profile
                ClipOval(
                  child: Image.asset(
                    'assets/images/profile.png',
                    height: 40,
                    width: 40,
                    fit: BoxFit.cover, // Ensures image scales properly
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 180,
            left: 20,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Scan & pay any UPI QR\nwith credit card',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      'Add RuPay card',
                      style: TextStyle(
                        color: Colors.blue[900],
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(width: 8),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue[900],
                      ),
                      child: Icon(
                        Icons.arrow_forward_sharp,
                        color: Colors.white,
                        size: 19,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
