import 'package:fireship_quiz_demo/shared/shared.dart';
import 'package:flutter/material.dart';

class TopicsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('topics'),
        backgroundColor: Colors.purple,
      ),
      body: Container(),
      bottomNavigationBar: AppBottomNav(),
    );
  }
}
