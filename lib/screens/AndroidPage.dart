import 'package:flutter/material.dart';
import 'package:vauldex_test_app/extras/AndroidCardItem.dart';
import 'package:vauldex_test_app/extras/theme.dart';
import 'package:vauldex_test_app/extras/widgets.dart';

class AndroidPage extends StatelessWidget {
  const AndroidPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey.shade200,
        child: ListView(
          // padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: <Widget>[
                  // Container(
                  //   padding: EdgeInsets.only(
                  //       top: MediaQuery.of(context).padding.top),
                  // ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const <Widget>[
                      Icon(
                        Icons.account_circle_outlined,
                        color: Colors.blue,
                        size: 60,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Settings',
                        style: theme().textTheme.headline2,
                      ),
                    ],
                  ),
                  //
                  spacer(),
                  //
                  TextField(
                    onTap: () {
                      FocusScope.of(context).unfocus();
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const SearchScreen()));
                    },
                    decoration: InputDecoration(
                      hintText: 'Search settings',
                      filled: true,
                      fillColor: Colors.white,
                      border: InputBorder.none,
                      prefixIcon: const Icon(Icons.search, size: 35),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(45),
                        borderSide:
                            const BorderSide(color: Colors.white, width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(45),
                        borderSide:
                            const BorderSide(color: Colors.white, width: 1),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //
            spacer(),
            //
            const AndroidCardItem(
              title: 'Network & Internet',
              subTitle: 'Wifi, Mobile & Hotspot',
              icon: Icon(Icons.wifi, size: 35),
            ),
            const AndroidCardItem(
              title: 'Connected Device',
              subTitle: 'Bluetooth & pairing',
              icon: Icon(Icons.connected_tv_outlined, size: 35),
            ),
            const AndroidCardItem(
              title: 'Apps',
              subTitle: 'Assistant, recent app, default app',
              icon: Icon(Icons.apps, size: 35),
            ),
            const AndroidCardItem(
              title: 'Notification',
              subTitle: 'Notification history, converstations',
              icon: Icon(Icons.notifications, size: 35),
            ),
            const AndroidCardItem(
              title: 'Battery',
              subTitle: '100%',
              icon: Icon(Icons.battery_full, size: 35),
            ),
            const AndroidCardItem(
              title: 'Storage',
              subTitle: '750% used, 2gb free',
              icon: Icon(Icons.storage, size: 35),
            ),
            const AndroidCardItem(
              title: 'Sound & Vibration',
              subTitle: 'Volumes, silent, vibration',
              icon: Icon(Icons.volume_up, size: 35),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        primary: true,
        iconTheme: const IconThemeData(color: Colors.black),
        centerTitle: true,
        title: Text('Search Settings', style: theme().textTheme.headline3),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
    );
  }
}
