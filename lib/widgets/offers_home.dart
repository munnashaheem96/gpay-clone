import 'package:flutter/material.dart';

class OffersHome extends StatelessWidget {
  const OffersHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Offers & rewards',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 22
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                RewardsCategoryItems(imageReward: 'assets/images/rewards.png', textReward: 'Rewards',),
                RewardsCategoryItems(imageReward: 'assets/images/offers.png', textReward: 'Offers',),
                RewardsCategoryItems(imageReward: 'assets/images/referral.png', textReward: 'Referrals',),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class RewardsCategoryItems extends StatelessWidget {
  final String imageReward;
  final String textReward;
  const RewardsCategoryItems({super.key, required this.imageReward, required this.textReward});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90,
      child: Column(
        children: [
          ClipOval(
            child: Image.asset(
              imageReward,
              height: 65,
              width: 65,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 8,),
          Text(
            textReward,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 15
            ),
          )
        ],
      ),
    );
  }
}