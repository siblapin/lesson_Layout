import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var data = [];
    var i = 0;
    for (; i < 100; i++) {
      data.add(const CardData());
    }
    return MaterialApp(home: Scaffold(body: SafeArea(child: LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        double _width = constraints.constrainWidth();
        return _width < 500
            ? Container(
                height: 100,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: data.length,
                    itemBuilder: ((BuildContext context, int index) =>
                        data[index])),
              )
            : GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: _width > 500 ? 1 : 2,
                  childAspectRatio: _width > 500 ? 7 : 1,
                ),
                itemBuilder: ((BuildContext context, int index) => data[index]),
                itemCount: data.length,
              );
      },
    ))));
  }
}

class CardData extends StatelessWidget {
  const CardData({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue[100],
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text('Name'),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.add_card)
          ],
        ),
      ),
    );
  }
}
