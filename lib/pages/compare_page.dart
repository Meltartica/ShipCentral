import 'package:flutter/material.dart';

class ComparePage extends StatefulWidget {
  const ComparePage({super.key});

  @override
  ComparePageState createState() => ComparePageState();
}

class ComparePageState extends State<ComparePage> {
  String dropdownValue1 = 'J&T Express';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
        title: const Padding(
          padding: EdgeInsets.only(top: 15.0),
          child: Text(
            'Comparison',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
        toolbarHeight: 100,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildCompareItem(),
              buildCompareItem(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCompareItem() {
    return Expanded(
      child: Center(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Theme.of(context).primaryColor, width: 2),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: dropdownValue1,
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue1 = newValue!;
                    });
                  },
                  items: <String>['J&T Express', 'Option 2', 'Option 3']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ),
            Card(
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    // adjust the radius as needed
                    child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSA9lPE8sYzxnYYyJlp2ecQZFTKkir0JhMUXD_CDhVmdg&s'),
                  ),
                  const ListTile(
                    title: Text(
                      'Carrier Name',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'Description: XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX\n'
                          '\nShipping Rate: XXXXXXXXXX\n'
                          '\nShipping Time: XXXXXXXXXX\n'
                          '\nServices: XXXXXXXXXX\n'
                          '\nSupported Locations: XXXXXXXXXX\n'
                          '\nRating: X.XX/5\n'
                          '\nReviews: XXX\n'
                          '\nContact: XXX-XXX-XXXX\n'
                          '\nEmail: XXXX@XXX.XXX\n'
                          '\nWebsite: XXXXXXX.com',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      )
    );
  }
}
