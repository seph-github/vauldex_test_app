import 'package:flutter/material.dart';
import 'package:vauldex_test_app/emptyScreen.dart';
import 'package:vauldex_test_app/extras/ItemCard.dart';
import 'package:vauldex_test_app/extras/theme.dart';
import 'package:vauldex_test_app/extras/widgets.dart';

class IOSPage extends StatefulWidget {
  const IOSPage({Key? key, String? title}) : super(key: key);

  @override
  State<IOSPage> createState() => _IOSScreenState();
}

class _IOSScreenState extends State<IOSPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey.shade200,
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          physics: const BouncingScrollPhysics(
            parent: ScrollPhysics(),
          ),
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).padding.top + 20, bottom: 5),
              child: Text(
                'Settings',
                style: theme().textTheme.headline1,
              ),
            ),
            Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              child: ListTile(
                leading: Icon(
                  Icons.account_circle_rounded,
                  color: Colors.grey.shade400,
                  size: 60,
                ),
                title: Text(
                  'Sign in to your iPhone',
                  style: theme().textTheme.bodyText2,
                ),
                subtitle: Text(
                  'Set up iCloud, the App Store and more.',
                  style: theme().textTheme.bodyText1,
                ),
                contentPadding: const EdgeInsets.all(5),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: ((context) => const EmptyScreen(
                          title: 'iCLoud Sign in',
                        )),
                  ));
                },
              ),
            ),
            //
            spacer(),
            //
            ItemCard(
                title: 'Screen Time',
                icon: const Icon(Icons.hourglass_bottom_outlined),
                backgroundColor: Colors.indigo.shade300),
            //
            spacer(),
            ItemCard(
                title: 'General',
                icon: const Icon(Icons.settings_outlined),
                backgroundColor: Colors.grey.shade300),
            ItemCard(
                title: 'Accessibility',
                icon: const Icon(Icons.settings_accessibility_rounded),
                backgroundColor: Colors.blue.shade400),
            ItemCard(
                title: 'Privacy',
                icon: const Icon(Icons.back_hand),
                backgroundColor: Colors.purple.shade200),
            //
            spacer(),
            //
            ItemCard(
                title: 'Password',
                icon: const Icon(Icons.key),
                backgroundColor: Colors.grey.shade300),
            //
            spacer(),
            //
            const ItemCard(
                title: 'Safari',
                icon: Icon(Icons.open_in_browser_outlined),
                backgroundColor: Colors.blue),
            const ItemCard(
                title: 'News',
                icon: Icon(
                  Icons.newspaper,
                  color: Colors.red,
                ),
                backgroundColor: Colors.white),
            const ItemCard(
                title: 'Translate',
                icon: Icon(
                  Icons.translate,
                  color: Colors.white,
                ),
                backgroundColor: Colors.black87),
            ItemCard(
                title: 'Maps',
                icon: const Icon(
                  Icons.map_outlined,
                  color: Colors.amber,
                ),
                backgroundColor: Colors.green.shade100),
            const ItemCard(
                title: 'Shortcuts',
                icon: Icon(
                  Icons.shortcut_rounded,
                  color: Colors.redAccent,
                ),
                backgroundColor: Colors.white),
            const ItemCard(
                title: 'Health',
                icon: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
                backgroundColor: Colors.white),
            const ItemCard(
                title: 'Siri & Search',
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                backgroundColor: Colors.white),
            const ItemCard(
                title: 'Photos',
                icon: Icon(
                  Icons.album_outlined,
                  color: Colors.purple,
                ),
                backgroundColor: Colors.white),
          ],
        ),
      ),
    );
  }
}
