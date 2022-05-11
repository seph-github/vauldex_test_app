import 'package:flutter/material.dart';
import 'package:vauldex_test_app/emptyScreen.dart';

class AndroidCardItem extends StatelessWidget {
  const AndroidCardItem({
    Key? key,
    this.title,
    this.subTitle,
    this.icon,
  }) : super(key: key);

  final String? title;
  final String? subTitle;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 2),
      width: double.infinity,
      // color: Colors.grey.shade300,
      child: ListTile(
        leading: icon,
        title: Text(title!),
        subtitle: Text(subTitle!),
        minLeadingWidth: 0,
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: ((context) => EmptyScreen(
                    title: title,
                  )),
            ),
          );
        },
      ),
    );
  }
}
