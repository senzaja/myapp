import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BelajarContainer extends StatelessWidget {
  const BelajarContainer ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
       color: Colors.amberAccent,
       width: double.infinity,
       height: double.infinity,
       margin:EdgeInsets.all(10),
       decoration: BoxDecoration(
        color: Colors.amberAccent,
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: NetworkImage('https://www.gamespot.com/a/uploads/screen_kubrick/1601/16018044/4061463-wakanda-forever.jpg'),
          fit: BoxFit.cover,
        )
       ),
       child: Center (
        child: Text(
          "Wakanda Forever",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
        ),
       ),
    
    );
   
  }
}
