import 'package:expense_manager/Components/CardList.dart';
import 'package:expense_manager/Pages/AddCardPage.dart';
import 'package:expense_manager/Providers/CardProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';

void main() => runApp(
    ChangeNotifierProvider<CardProvider>(
        builder: (context) => CardProvider(),
        child: new MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(),
          home: HomePage(),
          title: '카드 가계부',
        )
    )
);

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(238, 241, 242, 1),
      appBar: AppBar(
        brightness: Brightness.light,
        title: Text("카드 가계부", style: TextStyle(color: Colors.black),),
        backgroundColor: Color.fromRGBO(238, 241, 242, 1),
        elevation: 0,
        leading: null,
        actions: <Widget>[

        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Container(
                  child: Consumer<CardProvider>(
                    builder: (context, cards, child) => CardList(cards: cards.allCards,),
                  )
                ),
              ),
              Container(
                height: 60,
                width: 300,
                child: FlatButton(
                  color: Colors.black26,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Icon(
                        Icons.add_circle,
                        size: 40,
                        color: Colors.white,
                      ),
                      Text('카드 추가',style: TextStyle(fontSize: 30,color: Colors.white),),
                      SizedBox(width: 40,),
                    ],
                  ), onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AddCardPage()));
                },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
