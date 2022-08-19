import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Map<String, List<String>>> pictureList = [
    {
      'Мои фото': [
        'https://picsum.photos/1200/501',
        'https://picsum.photos/1200/502',
        'https://picsum.photos/1200/503',
        'https://picsum.photos/1200/504',
        'https://picsum.photos/1200/505',
        'https://picsum.photos/1200/506',
        'https://picsum.photos/1200/507',
        'https://picsum.photos/1200/508',
        'https://picsum.photos/1200/509',
        'https://picsum.photos/1200/510',
      ]
    },
    {
      'Галерея': [
        'https://picsum.photos/1200/511',
        'https://picsum.photos/1200/512',
        'https://picsum.photos/1200/513',
        'https://picsum.photos/1200/514',
        'https://picsum.photos/1200/515',
        'https://picsum.photos/1200/516',
        'https://picsum.photos/1200/517',
        'https://picsum.photos/1200/518',
        'https://picsum.photos/1200/519',
        'https://picsum.photos/1200/520',
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: pictureList.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Skillbox homework 4'),
            centerTitle: true,
            bottom: TabBar(
              tabs: pictureList
                  .map((e) => Tab(
                        text: e.keys.first,
                      ))
                  .toList(),
              indicator: BoxDecoration(color: Colors.lightBlue),
            ),
          ),
          body: TabBarView(
            children: pictureList.map((e) {
              return ListView.builder(
                  key: PageStorageKey(e),
                  itemCount: e.values.first.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Image.network(e.values.first[index]),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    );
                  });
            }).toList(),
          ),
        ));
  }
}
