import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {

  bool isSelect  = true ;

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: (){
        setState(() {
          isSelect = !isSelect ;
        });

        print('isSelect $isSelect');
      },
      child: Container(
        color: isSelect ?  Colors.blue : Colors.redAccent,
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}
