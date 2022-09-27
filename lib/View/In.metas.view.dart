import 'package:flutter/material.dart';

class InMetas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5.0),
                // decoration: BoxDecoration(
                //     color: Colors.grey,
                //     border: Border.all(
                //       color: Color.fromARGB(255, 0, 0, 0),
                //       width: 2,
                //     ),
                // boxShadow: [
                //   BoxShadow(
                //       color: Colors.grey,
                //       blurRadius: 4.0,
                //       spreadRadius: 2.0)
                // ],
                //     borderRadius: BorderRadius.all(Radius.circular(5.0))),
                // margin: EdgeInsets.only(top: 15, left: 5, right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        margin: EdgeInsets.only(right: 5, top: 10),
                        height: 20,
                        width: 20,
                        child: Image.asset('assets/imagens/icon_moedas.png')),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text(
                        "100,00",
                        style: TextStyle(fontSize: 12.0),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 40,
              height: 40,
              margin: EdgeInsets.only(left: 10),
              child: GestureDetector(
                child: Image.asset('assets/imagens/icon_companhia.png'),
                onTap: () {
                  print("teste");
                },
              ),
            ),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 40,
              height: 40,
              margin: EdgeInsets.only(left: 10),
              child: GestureDetector(
                child: Image.asset('assets/imagens/icon_calendario.png'),
                onTap: () {
                  print("teste");
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
