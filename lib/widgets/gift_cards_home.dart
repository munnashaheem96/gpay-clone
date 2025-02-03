import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GiftCardsHome extends StatelessWidget {
  const GiftCardsHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              'Gift cards & more',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 22,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Color.fromRGBO(242, 246, 255, 1.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.card_giftcard_outlined,
                            color: Colors.blue[900],
                            size: 28,
                          ),
                          SizedBox(height: 10,),
                          Text(
                            'Gift Cards',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            'Buy gift cards from the biggest brands',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15
                            ),
                          ),
                          SizedBox(height: 8,),
                          BrandLogo()
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8,),
                Expanded(
                  child: Container(
                    height: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Color.fromRGBO(242, 246, 255, 1.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            FontAwesomeIcons.googlePlay,
                            color: Colors.blue[900],
                            size: 28,
                          ),
                          SizedBox(height: 10,),
                          Text(
                            'Google Play',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            'Buy and use recharge codes',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15
                            ),
                          ),
                          SizedBox(height: 8,),
                          PlayLogo()
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BrandLogo extends StatelessWidget {
  const BrandLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Row(
        children: [
          SizedBox(
            width: 100,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color.fromARGB(255, 255, 255, 255), // Stroke color
                      width: 2, // Stroke width
                    ),
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/brands/amz_logo.png',
                      height: 20,
                      width: 20,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 18,
                  child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      width: 2, // Stroke width
                    ),
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/brands/flip_logo.png',
                      height: 20,
                      width: 20,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                ),
                Positioned(
                  bottom: 0,
                  left: 36,
                  child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      width: 2, // Stroke width
                    ),
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/brands/myntra_logo.png',
                      height: 20,
                      width: 20,
                      fit: BoxFit.cover,
                    ),
                  ),
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

class PlayLogo extends StatelessWidget {
  const PlayLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Row(
        children: [
          SizedBox(
            width: 100,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      width: 2,
                    ),
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/brands/gplay_logo.png',
                      height: 20,
                      width: 20,
                      fit: BoxFit.cover,
                    ),
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

