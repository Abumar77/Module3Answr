// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/svg.dart';
import 'package:import_sorter/args.dart';
import 'package:import_sorter/files.dart';
import 'package:import_sorter/sort.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Image.asset('assets/images/image1.jpg'), offline image shower

            // Image.network("https://picsum.photos/1200/500"), online image shower
            // Padding(
            //   padding: EdgeInsets.all(20.0),
            //   child: Text(
            //     'Default Text',
            //     style: TextStyle(
            //       fontSize: 20.0,
            //       fontFamily: 'Raleway',
            //     ),
            //   ),
            // ),
            // Padding(
            //   padding: EdgeInsets.all(20.0),
            //   child: Text(
            //     'Default Text',
            //     style: TextStyle(
            //       fontSize: 20.0,
            //     ),
            //   ),
            // ),
            // Text.rich(
            //   TextSpan(
            //       style: TextStyle(
            //         color: Colors.green,
            //       ),
            //       children: [
            //         TextSpan(
            //           text: 'Bart ',
            //         ),
            //         TextSpan(
            //           text: 'Simpson',
            //           style: TextStyle(
            //               color: Colors.red, fontWeight: FontWeight.w300),
            //         ),
            //       ]),
            // )
            // Container(
            //   padding: EdgeInsets.all(20),
            //   constraints: BoxConstraints(
            //     maxWidth: 200,
            //     maxHeight: 200,
            //   ),
            //   height: 300,
            //   decoration: BoxDecoration(
            //     color: Colors.blue,
            //     image: DecorationImage(
            //       fit: BoxFit.cover,
            //       image: NetworkImage('https://picsum.photos/1200/500'),
            //     ),
            //   ),
            // ),
            //
            // SizedBox(
            //   child: SvgPicture.network(
            //     'https://ru.wikipedia.org/wiki/%D0%A4%D0%B0%D0%B9%D0%BB:Google-flutter-logo.svg',
            //     placeholderBuilder: (BuildContext context) => Container(
            //         padding: const EdgeInsets.all(30.0),
            //         child: const CircularProgressIndicator()),
            //   ),
            // ),
            SizedBox(
              child: SvgPicture.asset('assets/images/logo_flutter.svg',
                  semanticsLabel: 'Flutter Logo'),
            ),
            CarouselSlider(
              options: CarouselOptions(height: 400.0),
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(color: Colors.amber),
                        child: Text(
                          'text $i',
                          style: TextStyle(fontSize: 16.0),
                        ));
                  },
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
