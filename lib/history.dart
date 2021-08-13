
import 'package:FarmerTrendz/Desktopweb/Desk_History.dart';
import 'package:FarmerTrendz/mobileweb/Mobile_history.dart';
import 'package:flutter/material.dart';

class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context , constraints){
        if(constraints.maxWidth > 800){
          return Desk_History();
        }else{
          return Mobile_History();
        }
      },
      
    );
  }
}