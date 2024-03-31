import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

List<String> imgList = [
  'https://cdn.britannica.com/81/196781-050-CA29F2C8/Manila.jpg',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkQJyYzLl3ojex5AFyZTGBByCowTiFpID9NGKfTrZyoA&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSq-fcdnlLfNbTunUimB28aM_FsWsQJxcocmcGEe7f8tw&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8_0zHpjk8ir2CAcxqpYjFlAC6dZ1TVJhuF5ujkJHRMA&s',
  'https://www.sisinternational.com/wp-content/uploads/2023/01/market-research-davao-city-mindanao-philippines.jpg',
];

List<String> locationList = [
  'Manila',
  'Baguio',
  'Cebu',
  'Makati',
  'Davao',
];

List<String> imageUrls = [
  'https://example.com/image1.jpg',
  'https://example.com/image2.jpg',
  'https://example.com/image3.jpg',
];

List<String> promotionList = [
  'Free shipping on your next parcel!',
  '20% off on international shipments!',
  'Get a free upgrade to express delivery!',
  'Save 10% on your first shipment!',
  'Book 5 shipments and get Chance for 1 free shipping!',
];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        var cardWidth = constraints.maxWidth * 0.95;
        return SingleChildScrollView(
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondaryContainer,
                ),
              ),
              Column(
                children: [
                  SizedBox(
                      width: cardWidth,
                      child: const Padding(
                        padding: EdgeInsets.only(top: 50, bottom: 20),
                        child: Center(
                          child: Text(
                            'Welcome to ShipCentral!',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: SizedBox(
                      width: cardWidth,
                      height: 200,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8, top: 20),
                          child: Column(
                            children: <Widget>[
                              ListTile(
                                leading: const Icon(Icons.my_location,
                                    color: Colors.blue),
                                title: const Text('Pick-up Location'),
                                trailing: ElevatedButton.icon(
                                  onPressed: () async {
                                    TimeOfDay? pickedTime =
                                        await showTimePicker(
                                      context: context,
                                      initialTime: TimeOfDay.now(),
                                    );
                                  },
                                  icon: const Icon(Icons.today),
                                  label: const Text('Now'),
                                  style: ButtonStyle(
                                    shadowColor: MaterialStateProperty.all(
                                        Colors.transparent),
                                    foregroundColor:
                                        MaterialStateProperty.all(Colors.black),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Divider(
                                indent: 50,
                                endIndent: 10,
                              ),
                              const SizedBox(height: 10),
                              const ListTile(
                                leading:
                                    Icon(Icons.location_on, color: Colors.red),
                                title: Text('Destination'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  CarouselSlider(
                    options: CarouselOptions(height: 120.0),
                    items: imgList.asMap().entries.map((entry) {
                      int index = entry.key;
                      String item = entry.value;
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            margin: const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Stack(
                              fit: StackFit.expand,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius: BorderRadius.circular(15.0),
                                    image: DecorationImage(
                                      image: NetworkImage(item),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      'Deliver to \n${locationList[index]}',
                                      // Use the location name corresponding to the image
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 20.0,
                                        shadows: <Shadow>[
                                          Shadow(
                                            offset: Offset(1.0, 1.0),
                                            blurRadius: 5.0,
                                            color: Color.fromARGB(255, 0, 0, 0),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Divider(
                      thickness: 1,
                      indent: 30,
                      endIndent: 30,
                    ),
                  ),
                  SizedBox(
                      width: cardWidth,
                      child: const Padding(
                        padding: EdgeInsets.only(top: 4, bottom: 12),
                        child: Center(
                          child: Text(
                            'You Might Like',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )),
                  CarouselSlider(
                    options: CarouselOptions(height: 120.0),
                    items: imageUrls.asMap().entries.map((entry) {
                      int index = entry.key;
                      String item = entry.value;
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            margin: const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Stack(
                              fit: StackFit.expand,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius: BorderRadius.circular(15.0),
                                    image: DecorationImage(
                                      image: NetworkImage(item),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      promotionList[index],
                                      // Use the location name corresponding to the image
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 20.0,
                                        shadows: <Shadow>[
                                          Shadow(
                                            offset: Offset(1.0, 1.0),
                                            blurRadius: 5.0,
                                            color: Color.fromARGB(255, 0, 0, 0),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                  SizedBox(
                      width: cardWidth,
                      child: const Padding(
                        padding: EdgeInsets.only(top: 16, left: 8, bottom: 8),
                        child: Text(
                          'Recommendations',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )),
                  SizedBox(
                    width: cardWidth,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                'https://ae01.alicdn.com/kf/Sf8778801be5644f09f68fa12fa1138c3U.jpg_640x640Q90.jpg_.webp',
                                width: 50,
                                height: 50,
                              ),
                            ),
                            const Expanded(
                              child: ListTile(
                                title: Text(
                                  'AliExpress',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                subtitle: Text(
                                  'A directory of thousands of independent sellers '
                                  'and small businesses that can use the site to list their ....',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: cardWidth,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDBwMX65zMQsGTPf0oRT9WsNIuQt4S8acW6-NeIrRXyg&s',
                                width: 50,
                                height: 50,
                              ),
                            ),
                            const Expanded(
                              child: ListTile(
                                title: Text(
                                  'Ocean Network Express Ltd',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                subtitle: Text(
                                  'branded as ONE is a Japanese container transportation and '
                                  'shipping company jointly owned by ...',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    width: cardWidth,
                    child: Center(
                      child: ElevatedButton.icon(
                        onPressed: () {
                        },
                        icon: const Icon(Icons.refresh),
                        label: const Text('Load More'),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
