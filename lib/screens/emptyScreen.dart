import 'package:flutter/material.dart';
import 'package:vauldex_test_app/extras/theme.dart';

class EmptyScreen extends StatelessWidget {
  const EmptyScreen({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        primary: true,
        iconTheme: const IconThemeData(color: Colors.black),
        centerTitle: true,
        title: Text(title!, style: theme().textTheme.headline3),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(),
    );
  }
}
