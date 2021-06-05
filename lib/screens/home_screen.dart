import 'package:flutter/material.dart';

// widgets
import 'package:desing/widgets/background.dart';
import 'package:desing/widgets/custom_bottom_navigation.dart';
import 'package:desing/widgets/card_table.dart';
import 'package:desing/widgets/page_title.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background
          Background(),
          _HomeBody(),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Titulos
          PageTitle(),
          // Card Table
          CardTable()
        ],
      ),
    );
  }
}
