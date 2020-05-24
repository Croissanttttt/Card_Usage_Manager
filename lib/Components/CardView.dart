import 'package:expense_manager/Model/CardModel.dart';
import 'package:flutter/material.dart';

class CardView extends StatefulWidget {

  final CardModel card;

  CardView(this.card) : super();

  @override
  _CardViewState createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: AspectRatio(
        aspectRatio: 2.5 / 1,
        child: GestureDetector(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black87,
            ),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,),
                child: Center(child: Text(widget.card.name, style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}