import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(), // 홈페이지 보여주기
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 영화 데이터
    List<Map<String, dynamic>> dataList = [
      {
        "category": "탑건: 매버릭",
        "imgUrl": "https://i.ibb.co/sR32PN3/topgun.jpg",
      },
      {
        "category": "마녀2",
        "imgUrl": "https://i.ibb.co/CKMrv91/The-Witch.jpg",
      },
      {
        "category": "범죄도시2",
        "imgUrl": "https://i.ibb.co/2czdVdm/The-Outlaws.jpg",
      },
      {
        "category": "헤어질 결심",
        "imgUrl": "https://i.ibb.co/gM394CV/Decision-to-Leave.jpg",
      },
      {
        "category": "브로커",
        "imgUrl": "https://i.ibb.co/MSy1XNB/broker.jpg",
      },
      {
        "category": "문폴",
        "imgUrl": "https://i.ibb.co/4JYHHtc/Moonfall.jpg",
      },
    ];
    // 화면에 보이는 영역
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Movie Reviews",
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.person), color: Colors.black)
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "영화 제목을 검색해주세요",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black, style: BorderStyle.solid),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black, style: BorderStyle.solid),
                  ),
                  suffixIcon: Icon(Icons.search, color: Colors.black)),
            ),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: dataList.length,
            itemBuilder: (BuildContext context, int index) {
              String movieName = dataList[index]['category'];
              String imageUrl = dataList[index]['imgUrl'];
              return Card(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 300,
                      color: Colors.black.withOpacity(0.5),
                    ),
                    Text(
                      movieName,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Image.network(
                      imageUrl,
                      width: double.infinity,
                      height: 300,
                    )
                  ],
                ),
              );
            },
          ))
        ],
      ),
    );
  }
}
