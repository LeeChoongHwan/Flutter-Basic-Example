import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark().copyWith(

      // ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: ThirdPage(),
        ),
      ),
    );
  }
}

//세 번째 페이지
class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<String> states = ["대한민국 차트", "미국 차트", "영국 차트"];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "차트",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                height: 200,
                color: Colors.deepPurple,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 60),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white),
                      child: Text(
                        "국가 및 도시별 차트",
                        style: TextStyle(color: Colors.deepPurple),
                      ),
                    ),
                  ),
                  Text(
                    "전 세계",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Expanded(
            child: ListView.separated(
              itemCount: states.length,
              itemBuilder: (context, index) {
                final state = states[index];
                return Chart(state: state);
              },
              separatorBuilder: (context, index) {
                return Divider();
              },
            ),
          )
        ],
      ),
    );
  }
}

class Chart extends StatefulWidget {
  const Chart({super.key, required this.state});

  final String state;

  @override
  State<Chart> createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30),
        Row(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
            ),
            Text(
              widget.state,
              style: TextStyle(color: Colors.black),
            ),
            Spacer(),
            Text("모두 보기", style: TextStyle(color: Colors.blue)),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
            ),
            Column(
              children: [
                Image.network('https://i.ibb.co/xf2HpfG/dynamite.jpg',
                    width: 100, height: 100),
                Text(
                  "Dynamite",
                  style: TextStyle(color: Colors.black),
                ),
                Text(
                  "BTS",
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
            Spacer(),
            Column(
              children: [
                Image.network('https://i.ibb.co/xf2HpfG/dynamite.jpg',
                    width: 100, height: 100),
                Text(
                  "Dynamite",
                  style: TextStyle(color: Colors.black),
                ),
                Text(
                  "BTS",
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
            Spacer(),
            Column(
              children: [
                Image.network('https://i.ibb.co/xf2HpfG/dynamite.jpg',
                    width: 100, height: 100),
                Text(
                  "Dynamite",
                  style: TextStyle(color: Colors.black),
                ),
                Text(
                  "BTS",
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
            )
          ],
        ),
      ],
    );
  }
}
