import 'package:flutter/material.dart';
import 'package:nomoz_vaqtlari/controller/my_controller.dart';

import 'package:nomoz_vaqtlari/pages/home_scrren/widgets/custom_expansion.dart';


import 'widgets/custom_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final MyController myController;

  @override
  void initState() {
    super.initState();
    myController = MyController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
          future: myController.getNomozData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomBar(
                      cityName: myController.nomozModelDush?.region ?? ""),
                  const SizedBox.square(
                    dimension: 310,
                    child: Image(
                      image: AssetImage("assets/images/kaba.png"),
                    ),
                  ),
                  CustomExpansion(
                    nomozModelDush: myController.nomozModelDush,
                    nomozModelSesh: myController.nomozModelSesh,
                    nomozModelChor: myController.nomozModelChor,
                    nomozModelPay: myController.nomozModelPay,
                    nomozModelJum: myController.nomozModelJum,
                    nomozModelShan: myController.nomozModelShan,
                    nomozModelYak: myController.nomozModelYak,
                  ),
                ],
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
