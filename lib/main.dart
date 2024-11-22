import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.teal,
        indicatorColor: Colors.white,
      ),
      home: const MyHomePage(title: 'Page de connexion'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              height: 400,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              child: Card.outlined(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      // Image(image:AssetImage('assets/osbt.png')),
                      Image.network(
                          "https://osbt.ma/storage/2021/09/cropped-logo-osbt-omnia_small.png"),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        onChanged: (value) {},
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.green,
                            suffixIcon: Icon(Icons.email),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            labelText: 'Entrer votre email'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        onChanged: (value) {},
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.green,
                            suffixIcon: Icon(Icons.lock),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            labelText: 'Entrer votre mot de passe'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Theme.of(context).primaryColor),
                          onPressed: () => {},
                          child: Text(
                            'Login',
                            style: TextStyle(
                                color: Theme.of(context).indicatorColor),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ))
        ],
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
