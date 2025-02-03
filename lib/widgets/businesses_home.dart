import 'package:flutter/material.dart';

class BusinessesHome extends StatefulWidget {
  const BusinessesHome({super.key});

  @override
  State<BusinessesHome> createState() => _BusinessesHomeState();
}

class _BusinessesHomeState extends State<BusinessesHome> {
bool _showMore = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Businesses',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Explore',
                      style: TextStyle(
                        color: Colors.blue[900],
                        fontWeight: FontWeight.w600,
                        fontSize: 15
                      ),
                    ),
                    SizedBox(width: 5,),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 15,
                      color: Colors.blue[900],
                    )
                  ],
                )
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const BusinessItems(
                  profileImage: 'assets/images/profile.png',
                  nameBusiness: 'Dummy Business Name',
                ),
                const BusinessItems(
                  profileImage: 'assets/images/profile.png',
                  nameBusiness: 'Dummy Business Name',
                ),
                const BusinessItems(
                  profileImage: 'assets/images/profile.png',
                  nameBusiness: 'Dummy Business Name',
                ),
                ArrowButton(
                  isExpanded: _showMore,
                  onPressed: () {
                    setState(() {
                      _showMore = !_showMore;
                    });
                  },
                ),
              ],
            ),
            if (_showMore) ...const [
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BusinessItems(
                    profileImage: 'assets/images/profile.png',
                    nameBusiness: 'Dummy Business Name',
                  ),
                  BusinessItems(
                    profileImage: 'assets/images/profile.png',
                    nameBusiness: 'Dummy Business Name',
                  ),
                  BusinessItems(
                    profileImage: 'assets/images/profile.png',
                    nameBusiness: 'Dummy Business Name',
                  ),
                  BusinessItems(
                    profileImage: 'assets/images/profile.png',
                    nameBusiness: 'Dummy Business Name',
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BusinessItems(
                    profileImage: 'assets/images/profile.png',
                    nameBusiness: 'Dummy Business Name',
                  ),
                  BusinessItems(
                    profileImage: 'assets/images/profile.png',
                    nameBusiness: 'Dummy Business Name',
                  ),
                  BusinessItems(
                    profileImage: 'assets/images/profile.png',
                    nameBusiness: 'Dummy Business Name',
                  ),
                  BusinessItems(
                    profileImage: 'assets/images/profile.png',
                    nameBusiness: 'Dummy Business Name',
                  ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class BusinessItems extends StatelessWidget {
  final String profileImage;
  final String nameBusiness;

  const BusinessItems({
    super.key,
    required this.profileImage,
    required this.nameBusiness,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipOval(
          child: Image.asset(
            profileImage,
            height: 70,
            width: 70,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 8),
        SizedBox(
          width: 80,
          child: Text(
            nameBusiness,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}

class ArrowButton extends StatelessWidget {
  final bool isExpanded;
  final VoidCallback onPressed;

  const ArrowButton({
    Key? key,
    required this.isExpanded,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Color.fromRGBO(119, 119, 119, 1), width: 0.4),
            ),
            height: 70,
            width: 70,
            child: Icon(
              isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
              size: 30,
              color: Colors.blue[900],
            ),
          ),
          SizedBox(height: 8),
          Text(
            'More',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}
