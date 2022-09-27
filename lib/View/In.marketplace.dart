import 'package:flutter/material.dart';

class InMarketplace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 5, right: 5),
                padding: EdgeInsets.all(2.0),
                child: Text(
                  "Canais contratados",
                  style: TextStyle(fontSize: 12.0),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
