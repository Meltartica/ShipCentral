import 'package:flutter/material.dart';
import 'package:shipcentral/pages/detail_page.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
        title: const Padding(
          padding: EdgeInsets.only(top: 15.0),
          child: Text(
            'Orders',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
        toolbarHeight: 100,
      ),
      body: SingleChildScrollView (
        child: Center(
            child: Column (
              children: [
                const SizedBox(height: 8),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.95,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailPage()));
                    },
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16, top: 8, bottom: 8),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundColor: Theme.of(context).colorScheme.secondary,
                              child: const Text(
                                'P',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24.0,
                                ),
                              ),
                            ),
                            const Expanded(
                              child: ListTile(
                                title: Text(
                                  'Parcel #1',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                subtitle: Text(
                                  'Order Date: XX/XX/XXXX'
                                      '\nCourier: XXXX'
                                      '\nCurrent Status: XXXX'
                                      '\nETA: XX/XX/XXXX'
                                      '\nTracking Number: XXXXXXX',
                                ),
                                trailing: Icon(Icons.arrow_forward_ios),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.95,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailPage()));
                    },
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16, top: 8, bottom: 8),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundColor: Theme.of(context).colorScheme.secondary,
                              child: const Text(
                                'P',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24.0,
                                ),
                              ),
                            ),
                            const Expanded(
                              child: ListTile(
                                title: Text(
                                  'Parcel #2',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                subtitle: Text(
                                  'Order Date: XX/XX/XXXX'
                                      '\nCourier: XXXX'
                                      '\nCurrent Status: XXXX'
                                      '\nETA: XX/XX/XXXX'
                                      '\nTracking Number: XXXXXXX',
                                ),
                                trailing: Icon(Icons.arrow_forward_ios),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.95,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailPage()));
                    },
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16, top: 8, bottom: 8),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundColor: Theme.of(context).colorScheme.secondary,
                              child: const Text(
                                'P',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24.0,
                                ),
                              ),
                            ),
                            const Expanded(
                              child: ListTile(
                                title: Text(
                                  'Parcel #3',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                subtitle: Text(
                                  'Order Date: XX/XX/XXXX'
                                      '\nCourier: XXXX'
                                      '\nCurrent Status: XXXX'
                                      '\nETA: XX/XX/XXXX'
                                      '\nTracking Number: XXXXXXX',
                                ),
                                trailing: Icon(Icons.arrow_forward_ios),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.95,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailPage()));
                    },
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16, top: 8, bottom: 8),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundColor: Theme.of(context).colorScheme.secondary,
                              child: const Text(
                                'P',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24.0,
                                ),
                              ),
                            ),
                            const Expanded(
                              child: ListTile(
                                title: Text(
                                  'Parcel #4',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                subtitle: Text(
                                  'Order Date: XX/XX/XXXX'
                                      '\nCourier: XXXX'
                                      '\nCurrent Status: XXXX'
                                      '\nETA: XX/XX/XXXX'
                                      '\nTracking Number: XXXXXXX',
                                ),
                                trailing: Icon(Icons.arrow_forward_ios),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
        ),
      )
    );
  }
}