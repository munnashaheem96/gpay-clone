import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ManageMoneyHome extends StatelessWidget {
  const ManageMoneyHome({super.key});

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
            Text(
              'Manage your money',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 22
              ),
            ),
            const SizedBox(height: 30),
            LoanGoldItem(),
            const SizedBox(height: 30),
            ManageItem(iconManage: Icons.speed, textManage: 'Check your CIBIL score for free',),
            const SizedBox(height: 30),
            ManageItem(iconManage: Icons.history, textManage: 'See transaction history',),
            const SizedBox(height: 30),
            ManageItem(iconManage: Icons.account_balance_outlined, textManage: 'Check bank balance',),
          ],
        ),
      ),
    );
  }
}

class ManageItem extends StatelessWidget {
  final IconData iconManage;
  final String textManage;
  const ManageItem({super.key, required this.iconManage, required this.textManage});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      iconManage,
                      color: Colors.blue[900],
                      size: 25,
                    ),
                    SizedBox(width: 20,),
                    SizedBox(
                      width: 250,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            textManage,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 18,
                )
              ],
            );
  }
}

class LoanGoldItem extends StatelessWidget {
  const LoanGoldItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      FontAwesomeIcons.ring,
                      color: Colors.blue[900],
                      size: 25,
                    ),
                    SizedBox(width: 20,),
                    SizedBox(
                      width: 250,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Gold loan',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600
                            ),
                          ),
                          Text(
                            'Interest rate starting at 0.96% monthly',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Text(
                  'Apply now',
                  style: TextStyle(
                    color: Colors.blue[900],
                    fontWeight: FontWeight.w600
                  ),
                )
              ],
            );
  }
}