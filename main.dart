import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//data types
String z = 's';
//int, double, list already know
//Map is like a dictionary in python
Map<String, String> myMap = {'String': 'Blue'};
//or for multiple values we use dynamic
Map<String, dynamic> myMap2 = {'String': 'Blue', 'int': 1};

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //formatting w/ ctrl+save
      //turning off debug banner
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.

        colorScheme: .fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark, //dark-mode
        ),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        leading: Icon(Icons.safety_check_sharp), //app icon
      ),
      // body: Center(
      //   // Center is a layout widget. It takes a single child and positions it
      //   // in the middle of the parent.
      //   //argument (lower-case): Widget(upper-case)
      //   //Ctrl+Space for what goes in widget
      //   // child: Container(
      //   //   height: double.infinity, //or size you want (double)
      //   //   width: double.infinity,
      //   //   padding: EdgeInsets.all(50.0), //inner padding for items within
      //   //   margin: EdgeInsets.all(50.0), //outer margin
      //   //   decoration: BoxDecoration(color: Colors.red,
      //   //       borderRadius: BorderRadius.circular(50.0)),
      //   //   child: Container(
      //   //       height: double.infinity,
      //   //       width: double.infinity,
      //   //       padding: EdgeInsets.all(50.0),
      //   //       margin: EdgeInsets.all(50.0),
      //   //       decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.0), color: Colors.orange),
      //   //       child: Text(
      //   //             'Hello',
      //   //             style: TextStyle(color: Colors.black)
      //   //         ),
      //   //   ),
      //   //
      //   // ), //Margins, Basic Container, BoxDecoration, etc.
      //
      //   // child: Container( //to expand the "straight-line" column
      //   //   color: Colors.blue,
      //   //   width: double.infinity,
      //   //   child: Column(
      //   //     mainAxisAlignment: MainAxisAlignment.center, //vertical alignment
      //   //     mainAxisSize: MainAxisSize.min, //takes as little space as possible
      //   //     crossAxisAlignment: CrossAxisAlignment.end, //horizontal alignment
      //   //     children: [
      //   //       Container(
      //   //         height: 100.0,
      //   //         width: 100.0,
      //   //         decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0), color: Colors.orange),
      //   //         child: Text(
      //   //             'Hello',
      //   //             style: TextStyle(color: Colors.black)
      //   //         ),
      //   //       ),
      //   //
      //   //     ],
      //   //
      //   //         ),
      //   // ) //Column & Container Relations
      //
      //   // child: Container( //to expand the "straight-line" column
      //   //   color: Colors.blue,
      //   //   height: double.infinity,
      //   //   width: double.infinity,
      //   //   child: Row(
      //   //
      //   //     //mainAxisAlignment: MainAxisAlignment.spaceEvenly, //vertical alignment
      //   //     //mainAxisSize: MainAxisSize.min, //takes as little space as possible
      //   //     crossAxisAlignment: CrossAxisAlignment.start, //horizontal alignment
      //   //     children: [
      //   //       Container(
      //   //         height: 100.0,
      //   //         width: 100.0,
      //   //         decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0), color: Colors.orange),
      //   //         child: Text(
      //   //             'Hello',
      //   //             style: TextStyle(color: Colors.black)
      //   //         ),
      //   //       ),
      //   //
      //   //       Container(
      //   //         height: 100.0,
      //   //         width: 100.0,
      //   //         decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0), color: Colors.red),
      //   //         child: Text(
      //   //             'Hello',
      //   //             style: TextStyle(color: Colors.black)
      //   //         ),
      //   //       ),
      //   //
      //   //     ],
      //   //
      //   //         ),
      //   // ) //Row Studies (almost alike to column)
      //   //
      //   // child: Container( //to expand the "straight-line" column
      //   //   color: Colors.blue,
      //   //   child: Row(
      //   //
      //   //     //mainAxisAlignment: MainAxisAlignment.spaceEvenly, //vertical alignment
      //   //     mainAxisSize: MainAxisSize.min, //takes as little space as possible
      //   //     //crossAxisAlignment: CrossAxisAlignment.start, //horizontal alignment
      //   //     children: [
      //   //       Container(
      //   //         height: 100.0,
      //   //         width: 100.0,
      //   //         decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0), color: Colors.orange),
      //   //         child: Center(child: Text(
      //   //             'Hello',
      //   //             style: TextStyle(color: Colors.black)
      //   //         )),
      //   //       ),
      //   //
      //   //       Container(
      //   //         height: 100.0,
      //   //         width: 100.0,
      //   //         decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0), color: Colors.red),
      //   //         child: Text(
      //   //             'Hello',
      //   //             style: TextStyle(color: Colors.black)
      //   //         ),
      //   //       ),
      //   //
      //   //     ],
      //   //
      //   //         ),
      //   // ) //Centering text within Containers
      //   //What the body: Center() does:
      //   //Makes every child's base height, width to center
      //   //But only if the child doesn't define its own height width
      //
      //
      // ),
      // body: Image.network(
      //     "https://picsum.photos/200/300.jpg",
      //   height: double.infinity,
      //   fit: BoxFit.cover,
      // ), using image url
      // body: Image.asset(
      //   'assets/images/ec.png',
      //   height: double.infinity,
      //   fit: BoxFit.cover,
      // ), //using image asset
    // body: Padding( //use padding widget bcz it is less expensive if you only need it for padding
    //   padding: EdgeInsets.all(50.0),
    //   child: Stack(
    //     children: [
    // //     Image.asset(
    // //   'assets/images/ec.png',
    // //   fit: BoxFit.cover,
    // //       height: 300,
    // // ),
    //     SizedBox(height: 300, child: Center(child: Text('Flutter'))),
    //         ListTile(tileColor: Colors.purple, //Tile, maybe for scrolling forums
    //             //For some reason, ListTile always appears behind every item in a stack, so that's why you don't
    //             //usually see it
    //             title: Text('aojsdkl'),
    //         trailing: Text('skigma'),
    //         onTap: (){
    //           print('clicked on ListTiel');
    //         }) //onclick
    //     ]
    //   )), //Padding & Stack (on top of each other)
    //   //Sized Box less expensive if only need height & width

      // body: Wrap( //Sometimes row cannot display all text
      //   //due to too long
      //   //So we use wrap, which allows the text to go down
      //   //If it doesn't have any place
      //   children: [
      //     Text('Hello'),
      //     Text('Mexico'),
      //     Text('This'),
      //     Text('Is'),
      //     Text('Den USA'),
      //   ]
      // ), //Wrap

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
