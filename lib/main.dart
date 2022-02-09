import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List photo = [
    "https://images.unsplash.com/photo-1644405910352-71ba6052cbd9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
    "https://images.unsplash.com/photo-1644355522125-b1e4daee1b76?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
    "https://images.unsplash.com/photo-1628328011051-42e161f27acb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDF8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View"),
      ),
      body: SafeArea(
        child: Container(
            child: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(2),
              child: Image.network(
                photo[index].toString(),
                fit: BoxFit.cover,
              ),
            );
          },
          itemCount: photo.length,
        )),
      ),
    );
  }
}





//  GridView(
//             gridDelegate:
//                 SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
//             children: [
//               Container(
//                 margin: EdgeInsets.all(2),
//                 child: Image.network(
//                   "https://images.unsplash.com/photo-1506126613408-eca07ce68773?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max",
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.all(2),
//                 child: Image.network(
//                   "https://images.unsplash.com/photo-1506126613408-eca07ce68773?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max",
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.all(2),
//                 child: Image.network(
//                   "https://images.unsplash.com/photo-1506126613408-eca07ce68773?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max",
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.all(2),
//                 child: Image.network(
//                   "https://images.unsplash.com/photo-1506126613408-eca07ce68773?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max",
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.all(2),
//                 child: Image.network(
//                   "https://images.unsplash.com/photo-1506126613408-eca07ce68773?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max",
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.all(2),
//                 child: Image.network(
//                   "https://images.unsplash.com/photo-1506126613408-eca07ce68773?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max",
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.all(2),
//                 child: Image.network(
//                   "https://images.unsplash.com/photo-1506126613408-eca07ce68773?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max",
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.all(2),
//                 child: Image.network(
//                   "https://images.unsplash.com/photo-1506126613408-eca07ce68773?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max",
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               Container(
//                 child: Image.network(
//                   "https://images.unsplash.com/photo-1506126613408-eca07ce68773?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max",
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               Container(
//                 child: Image.network(
//                   "https://images.unsplash.com/photo-1506126613408-eca07ce68773?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max",
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               Container(
//                 child: Image.network(
//                   "https://images.unsplash.com/photo-1506126613408-eca07ce68773?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max",
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ],
//           ),