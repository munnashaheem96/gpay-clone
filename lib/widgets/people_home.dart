import 'package:flutter/material.dart';

class PeopleHome extends StatefulWidget {
  const PeopleHome({super.key});

  @override
  _PeopleHomeState createState() => _PeopleHomeState();
}

class _PeopleHomeState extends State<PeopleHome> {
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
            Text(
              'People',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PeopleItems(profileImage: 'assets/images/gp_user5.jpeg', nameSender: 'Alice Johnson'),
                PeopleItems(profileImage: 'assets/images/gp_user6.jpeg', nameSender: 'Bob Williams'),
                PeopleItems(profileImage: 'assets/images/gp_user7.jpeg', nameSender: 'Charlie Smith'),
                PeopleItems(profileImage: 'assets/images/gp_user8.jpeg', nameSender: 'David Brown'),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PeopleItems(profileImage: 'assets/images/gp_user.jpg', nameSender: 'Emma Davis'),
                PeopleItems(profileImage: 'assets/images/gp_user1.jpg', nameSender: 'Frank Miller'),
                PeopleItems(profileImage: 'assets/images/gp_user3.jpeg', nameSender: 'Grace Wilson'),
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
            if (_showMore) ...[
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PeopleItems(profileImage: 'assets/images/profile.png', nameSender: 'Henry Moore'),
                  PeopleItems(profileImage: 'assets/images/profile.png', nameSender: 'Ivy Taylor'),
                  PeopleItems(profileImage: 'assets/images/profile.png', nameSender: 'Jack Anderson'),
                  PeopleItems(profileImage: 'assets/images/profile.png', nameSender: 'Karen Thomas'),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PeopleItems(profileImage: 'assets/images/profile.png', nameSender: 'Liam Harris'),
                  PeopleItems(profileImage: 'assets/images/profile.png', nameSender: 'Mia Martin'),
                  PeopleItems(profileImage: 'assets/images/profile.png', nameSender: 'Noah White'),
                  PeopleItems(profileImage: 'assets/images/profile.png', nameSender: 'Olivia Lewis'),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class PeopleItems extends StatelessWidget {
  final String profileImage;
  final String nameSender;

  const PeopleItems({
    super.key,
    required this.profileImage,
    required this.nameSender,
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
            nameSender,
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
              border: Border.all(color: Colors.black54, width: 1),
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