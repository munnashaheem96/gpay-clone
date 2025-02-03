import 'package:flutter/material.dart';
import 'package:gpay_clone/widgets/bill_services_home.dart';
import 'package:gpay_clone/widgets/bills_payment_home.dart';
import 'package:gpay_clone/widgets/businesses_home.dart';
import 'package:gpay_clone/widgets/footer_home.dart';
import 'package:gpay_clone/widgets/gift_cards_home.dart';
import 'package:gpay_clone/widgets/header_home.dart';
import 'package:gpay_clone/widgets/manage_money_home.dart';
import 'package:gpay_clone/widgets/offers_home.dart';
import 'package:gpay_clone/widgets/people_home.dart';
import 'package:gpay_clone/widgets/service_home.dart';
import 'package:gpay_clone/widgets/upi_details.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderHome(),
            SizedBox(height: 10,),
            ServiceHome(),
            SizedBox(height: 15,),
            UpiDetails(),
            SizedBox(height: 15,),
            PeopleHome(),
            SizedBox(height: 20,),
            BusinessesHome(),
            SizedBox(height: 20,),
            BillsPaymentHome(),
            SizedBox(height: 20,),
            BillServices(),
            SizedBox(height: 20,),
            OffersHome(),
            SizedBox(height: 20,),
            GiftCardsHome(),
            SizedBox(height: 20,),
            ManageMoneyHome(),
            SizedBox(height: 40,),
            FooterHome()
          ],
        ),
      ),
    );
  }
}
