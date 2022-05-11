import 'package:flutter/material.dart';
import 'package:vauldex_test_app/emptyScreen.dart';
import 'package:vauldex_test_app/extras/theme.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({Key? key, this.title, this.icon, this.backgroundColor})
      : super(key: key);

  final String? title;
  final Icon? icon;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(2),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: ListTile(
        title: Text(title!, style: theme().textTheme.headline4),
        leading: Container(
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: backgroundColor,
          ),
          child: icon!,
        ),
        trailing: Icon(
          Icons.keyboard_arrow_right_rounded,
          color: Colors.grey[300],
          size: 30,
        ),
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
