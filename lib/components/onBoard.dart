import 'package:delivery/pages/homepage.dart';
import 'package:flutter/material.dart';

class onBoard extends StatelessWidget {
  final String boardText;
  final String imgPath;
  final VoidCallback next;
  onBoard(
      {super.key,
      required this.boardText,
      required this.next,
      required this.imgPath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
        ElevatedButton(
            style: ButtonStyle(
                // backgroundColor: MaterialStateProperty<Color>

                ),
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: Text('Skip')),
        Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Image.asset(imgPath),
        ),
        SizedBox(
          height: 50,
        ),
        ElevatedButton(
          onPressed: next,
          child: const Icon(
            Icons.skip_next,
            color: Colors.black,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(9),
          child: Text(
            boardText,
            style: const TextStyle(
                fontSize: 25,
                color: Colors.black,
                textBaseline: TextBaseline.alphabetic),
          ),
        ),
      ]),
    );
  }
}
