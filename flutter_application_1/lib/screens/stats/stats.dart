import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/stats/chart.dart';

class StatsScreen extends StatelessWidget {
  const StatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          
          children: [
            const Text(
              'Transactions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width * 0.5,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ), 
              child: const Padding(
                padding: EdgeInsets.fromLTRB(12,20,12,12),
                child: MyChart(),
              ),
            )
          ],
        ),
      
      )
    );
  }
}