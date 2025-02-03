import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BillServices extends StatefulWidget {
  const BillServices({super.key});

  @override
  State<BillServices> createState() => _BillServicesState();
}

class _BillServicesState extends State<BillServices> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Try adding these',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 10),
          Wrap(
            spacing: 20,
            runSpacing: 10,
            alignment: WrapAlignment.spaceBetween,
            children: const [
              BillItems(
                billIcon: Icons.request_page_outlined,
                billText: 'Loan EMI',
              ),
              BillItems(
                billIcon: Icons.credit_card,
                billText: 'Credit Cards',
              ),
              BillItems(
                billIcon: Icons.tv,
                billText: 'DTH/Cable TV',
              ),
              BillItems(
                billIcon: FontAwesomeIcons.googlePlay,
                billText: 'Google Play',
              ),
            ],
          ),
          SizedBox(height: 20,),
          Center(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.shade400
                ),
                borderRadius: BorderRadius.circular(25)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  child: Text(
                    'View all',
                    style: TextStyle(
                      color: Colors.blue[900],
                      fontWeight: FontWeight.w600
                    ),
                  ),
                ),
            ),
          ),
        ],
      ),
    );
  }
}

class BillItems extends StatelessWidget {
  final IconData billIcon;
  final String billText;

  const BillItems({
    super.key,
    required this.billIcon,
    required this.billText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue[100],
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Icon(
                billIcon,
                color: const Color.fromARGB(255, 4, 27, 63),
                size: 28,
              ),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            billText,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
