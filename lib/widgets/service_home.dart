import 'package:flutter/material.dart';

class ServiceHome extends StatelessWidget {
  const ServiceHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 35, right: 35),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: ServiceItems(
                iconItem: Icons.qr_code_scanner_outlined,
                textItem: 'Scan any\nQR code',
              )),
              Expanded(child: ServiceItems(
                iconItem: Icons.import_contacts_outlined,
                textItem: 'Pay\ncontacts',
              )),
              Expanded(child: ServiceItems(
                iconItem: Icons.phonelink_ring_outlined,
                textItem: 'Pay phone\nnumber',
              )),
              Expanded(child: ServiceItems(
                iconItem: Icons.account_balance_outlined,
                textItem: 'Bank\nTransfer',
              )),
            ],
          ),
          SizedBox(height: 18),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: ServiceItems(
                iconItem: Icons.alternate_email_outlined,
                textItem: 'Pay UPI ID\nor number',
              )),
              Expanded(child: ServiceItems(
                iconItem: Icons.person_add_alt,
                textItem: 'Self\ntransfer',
              )),
              Expanded(child: ServiceItems(
                iconItem: Icons.receipt_long_outlined,
                textItem: 'Pay\nbills',
              )),
              Expanded(child: ServiceItems(
                iconItem: Icons.smartphone_outlined,
                textItem: 'Mobile\nrecharge',
              )),
            ],
          ),
        ],
      ),
    );
  }
}

class ServiceItems extends StatelessWidget {
  final IconData iconItem;
  final String textItem;

  const ServiceItems({
    super.key,
    required this.iconItem,
    required this.textItem,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center, 
      children: [
        Icon(
          iconItem,
          color: Colors.blue[900],
          size: 35,
        ),
        SizedBox(height: 5),
        Text(
          textItem,
          textAlign: TextAlign.center, 
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
