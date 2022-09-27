import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Subspace',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(133, 63, 62, 62),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(133, 35, 35, 35),
        title: Text('Explore'),
        actions: [
          Icon(Icons.home),
          Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
          Icon(Icons.shopping_cart_rounded),
          Padding(padding: EdgeInsets.all(5)),
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Row(
              children: [
                Expanded(
                  child: ListTile(
                    leading: Icon(
                      Icons.home_filled,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Play and earn coins',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    trailing: Icon(
                      Icons.forward,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 4, vertical: 8),
            child: Container(
              margin: EdgeInsets.only(bottom: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: ImageSlideshow(
                  indicatorColor: Colors.blue,
                  onPageChanged: (value) {
                    debugPrint('Page changed: $value');
                  },
                  autoPlayInterval: 3000,
                  isLoop: true,
                  children: [
                    Image.asset(
                      'assets/images/space.jpg',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/images/space.jpg',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/images/space.jpg',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/images/space.jpg',
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              children: [
                Expanded(
                    child: Container(
                  height: 50,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'All Subscriptions',
                    style: TextStyle(
                        color: Colors.white54,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                )),
                Expanded(
                    child: Container(
                        child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'See More',
                    style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      backgroundColor: Colors.white54,
                    ),
                  ),
                )))
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5.0),
            height: 200.0,
            child: ListView(
              // This next line does the trick.
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(2),
                  width: 160.0,
                  color: Color.fromARGB(255, 244, 100, 196),
                  child: Center(
                    child: Text(
                      'subspace',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  width: 160.0,
                  color: Color.fromARGB(255, 91, 152, 227),
                  child: Center(
                    child: Text(
                      'subspace',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  width: 160.0,
                  color: Color.fromARGB(255, 244, 100, 196),
                  child: Center(
                    child: Text(
                      'subspace',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  width: 160.0,
                  color: Color.fromARGB(255, 91, 152, 227),
                  child: Center(
                    child: Text(
                      'subspace',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  width: 160.0,
                  color: Color.fromARGB(255, 244, 100, 196),
                  child: Center(
                    child: Text(
                      'subspace',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            child: Row(
              children: [
                Expanded(
                    child: Container(
                  height: 50,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'Public Groups',
                    style: TextStyle(
                        color: Colors.white54,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                )),
                Expanded(
                    child: Container(
                        child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'See More',
                    style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      backgroundColor: Colors.white54,
                    ),
                  ),
                )))
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Center(
                  child: ListTile(
                    isThreeLine: true,
                    leading: FlutterLogo(
                      size: 50,
                    ),
                    title: Text(
                      'Spotify Family Plan',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Column(
                      children: <Widget>[
                        Text(
                          'by satya dev',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '1/6 freinds sharing',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromARGB(255, 187, 176, 210),
                          ),
                        ),
                      ],
                    ),
                    trailing: Container(
                      height: 35,
                      width: 110,
                      color: Colors.purpleAccent,
                      child: Center(
                          child: Text('Join',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ))),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.white54,
            height: 30,
          ),
          Container(
            child: Column(
              children: [
                Center(
                  child: ListTile(
                    isThreeLine: true,
                    leading: FlutterLogo(
                      size: 50,
                    ),
                    title: Text(
                      'Spotify Family Plan',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Column(
                      children: <Widget>[
                        Text(
                          'by satya dev',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '1/6 freinds sharing',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromARGB(255, 187, 176, 210),
                          ),
                        ),
                      ],
                    ),
                    trailing: Container(
                      height: 35,
                      width: 110,
                      color: Colors.purpleAccent,
                      child: Center(
                          child: Text('Join',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ))),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.white54,
            height: 30,
          ),
          Container(
            child: Column(
              children: [
                Center(
                  child: ListTile(
                    isThreeLine: true,
                    leading: FlutterLogo(
                      size: 50,
                    ),
                    title: Text(
                      'Spotify Family Plan',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Column(
                      children: <Widget>[
                        Text(
                          'by satya dev',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '1/6 freinds sharing',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromARGB(255, 187, 176, 210),
                          ),
                        ),
                      ],
                    ),
                    trailing: Container(
                      height: 35,
                      width: 110,
                      color: Colors.purpleAccent,
                      child: Center(
                          child: Text('Join',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ))),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.white54,
            height: 30,
          ),
          Container(
            child: Column(
              children: [
                Center(
                  child: ListTile(
                    isThreeLine: true,
                    leading: FlutterLogo(
                      size: 50,
                    ),
                    title: Text(
                      'Spotify Family Plan',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Column(
                      children: <Widget>[
                        Text(
                          'by satya dev',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '1/6 freinds sharing',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromARGB(255, 187, 176, 210),
                          ),
                        ),
                      ],
                    ),
                    trailing: Container(
                      height: 35,
                      width: 110,
                      color: Colors.purpleAccent,
                      child: Center(
                          child: Text('Join',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ))),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.white54,
            height: 30,
          ),
          Container(
            child: Column(
              children: [
                Center(
                  child: ListTile(
                    isThreeLine: true,
                    leading: FlutterLogo(
                      size: 50,
                    ),
                    title: Text(
                      'Spotify Family Plan',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Column(
                      children: <Widget>[
                        Text(
                          'by satya dev',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '1/6 freinds sharing',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromARGB(255, 187, 176, 210),
                          ),
                        ),
                      ],
                    ),
                    trailing: Container(
                      height: 35,
                      width: 110,
                      color: Colors.purpleAccent,
                      child: Center(
                          child: Text('Join',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ))),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.white54,
            height: 30,
          ),
          Container(
            child: Column(
              children: [
                Center(
                  child: ListTile(
                    isThreeLine: true,
                    leading: FlutterLogo(
                      size: 50,
                    ),
                    title: Text(
                      'Spotify Family Plan',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Column(
                      children: <Widget>[
                        Text(
                          'by satya dev',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '1/6 freinds sharing',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromARGB(255, 187, 176, 210),
                          ),
                        ),
                      ],
                    ),
                    trailing: Container(
                      height: 35,
                      width: 110,
                      color: Colors.purpleAccent,
                      child: Center(
                          child: Text('Join',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ))),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.white54,
            height: 30,
          ),
          Container(
            child: Column(
              children: [
                Center(
                  child: ListTile(
                    isThreeLine: true,
                    leading: FlutterLogo(
                      size: 50,
                    ),
                    title: Text(
                      'Spotify Family Plan',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Column(
                      children: <Widget>[
                        Text(
                          'by satya dev',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '1/6 freinds sharing',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromARGB(255, 187, 176, 210),
                          ),
                        ),
                      ],
                    ),
                    trailing: Container(
                      height: 35,
                      width: 110,
                      color: Colors.purpleAccent,
                      child: Center(
                          child: Text('Join',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ))),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.white54,
            height: 30,
          ),
        ],
      )),
    );
  }
}
