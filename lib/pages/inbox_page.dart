import 'package:flutter/material.dart';

class InboxPage extends StatelessWidget {
  const InboxPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
        title: const Padding(
          padding: EdgeInsets.only(top: 15.0),
          child: Text(
            'Inbox',
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
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16, top: 8, bottom: 8),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 25.0,
                            backgroundColor: Theme.of(context).colorScheme.secondary,
                            child: const Text(
                              'A',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24.0,
                              ),
                            ),
                          ),
                          const Expanded(
                            child: ListTile(
                              title: Text(
                                'Alex (J&T Rider)',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                'I\'m here already',
                              ),
                              trailing: Icon(Icons.arrow_forward_ios),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.95,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16, top: 8, bottom: 8),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 25.0,
                            backgroundColor: Theme.of(context).colorScheme.secondary,
                            child: const Text(
                              'M',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24.0,
                              ),
                            ),
                          ),
                          const Expanded(
                            child: ListTile(
                              title: Text(
                                'Michael (YTO Rider)',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                'Where are you?',
                              ),
                              trailing: Icon(Icons.arrow_forward_ios),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.95,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16, top: 8, bottom: 8),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 25.0,
                            backgroundColor: Theme.of(context).colorScheme.secondary,
                            child: const Text(
                              'C',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24.0,
                              ),
                            ),
                          ),
                          const Expanded(
                            child: ListTile(
                              title: Text(
                                'Carmel (Customer Service)',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                'This process will take around 1-3 mins. Please wait and stay in ...',
                              ),
                              trailing: Icon(Icons.arrow_forward_ios),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.95,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16, top: 8, bottom: 8),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 25.0,
                            backgroundColor: Theme.of(context).colorScheme.secondary,
                            child: const Text(
                              'U',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24.0,
                              ),
                            ),
                          ),
                          const Expanded(
                            child: ListTile(
                              title: Text(
                                'Name (Job/Position)',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                'XXXXXXXXXXXXXXXXXXXXXXX',
                              ),
                              trailing: Icon(Icons.arrow_forward_ios),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.95,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16, top: 8, bottom: 8),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 25.0,
                            backgroundColor: Theme.of(context).colorScheme.secondary,
                            child: const Text(
                              'U',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24.0,
                              ),
                            ),
                          ),
                          const Expanded(
                            child: ListTile(
                              title: Text(
                                'Name (Job/Position)',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                'XXXXXXXXXXXXXXXXXXXXXXX',
                              ),
                              trailing: Icon(Icons.arrow_forward_ios),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.95,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16, top: 8, bottom: 8),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 25.0,
                            backgroundColor: Theme.of(context).colorScheme.secondary,
                            child: const Text(
                              'U',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24.0,
                              ),
                            ),
                          ),
                          const Expanded(
                            child: ListTile(
                              title: Text(
                                'Name (Job/Position)',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                'XXXXXXXXXXXXXXXXXXXXXXX',
                              ),
                              trailing: Icon(Icons.arrow_forward_ios),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.95,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16, top: 8, bottom: 8),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 25.0,
                            backgroundColor: Theme.of(context).colorScheme.secondary,
                            child: const Text(
                              'U',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24.0,
                              ),
                            ),
                          ),
                          const Expanded(
                            child: ListTile(
                              title: Text(
                                'Name (Job/Position)',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                'XXXXXXXXXXXXXXXXXXXXXXX',
                              ),
                              trailing: Icon(Icons.arrow_forward_ios),
                            ),
                          ),
                        ],
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