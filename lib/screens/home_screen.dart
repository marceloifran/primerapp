import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //scaffold es una estructura de aplicacion predefinida, ya tiene widgets y propiedades predefinidas
      // propiedad le das un widget que eso tambien tiene propiedades
      appBar: AppBar(
        title: const Text('Primer app'),
        backgroundColor: Colors.green,
      ),
      body: Container(
          margin: const EdgeInsets.only(top: 20),
          // margin: const EdgeInsets.all(20),
          // padding: const EdgeInsets.all(20),
          width: double.infinity,
          height: 350,
          decoration: const BoxDecoration(color: Colors.red),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    const Row(
                      children: [
                        CircleAvatar(
                          child: Text("M"),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Marce Ifran',
                            style:
                                TextStyle(fontSize: 20, color: Colors.white)),
                      ],
                    ),
                    Container(
                        width: double.infinity,
                        height: 200,
                        child: Image.network(
                            "https://next-images.123rf.com/index/_next/image/?url=https://assets-cdn.123rf.com/index/static/assets/top-section-bg.jpeg&w=3840&q=75",
                            fit: BoxFit.cover)),
                  ],
                ),
              ),
            ],
          )),

      backgroundColor: Colors.grey[200],
      //indicando la intensidad del color
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: Icon(Icons.add),
      ),
    );
  }
}
