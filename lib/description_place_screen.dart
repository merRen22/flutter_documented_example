import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget{
  String content_description;
  String content_title;
  int number_starts;

  DescriptionPlace(this.content_title,this.content_description,this.number_starts);

  @override
  Widget build(BuildContext context) {
    //left to do a function to make starts dynamic and it bette rbe a nice func >:v

    final description = Container(
      margin: EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20,
      ),
      child: Text(
        content_description,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.grey
          ),
          textAlign: TextAlign.justify,
      ),
    );

    Widget star(fillded) => Container(
      margin: EdgeInsets.only(
        top: 320,
        right: 3
      ),
      child: Icon(
        fillded == 1
        ?Icons.star
        :fillded == 0.5
        ?Icons.star_half
        :Icons.star_border,
        color: Colors.purple
      ),
    );

    final titleHeader = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 320,
            left: 20,
            right: 20,
          ),
          child: Text(content_title,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900
          ),
          textAlign: TextAlign.left,
          ),),
          Row(
            children: [star(1),star(1),star(1),star(1),star(0.5)],
          )
      ],
    );

    return Column(
      children: <Widget>[
        titleHeader,
        description
      ],
    );
  }

}