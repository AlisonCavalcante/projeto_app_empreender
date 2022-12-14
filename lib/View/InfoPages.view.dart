import 'package:appempreender/Model/Usuario.model.dart';
import 'package:appempreender/View/Home.view.dart';
import 'package:appempreender/View/In.metas.view.dart';
import 'package:appempreender/View/Inventario.view.dart';
import 'package:appempreender/View/Metas.view.dart';
import 'package:appempreender/View/Metas.view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InfoPages extends StatefulWidget {
  Usuario user;

  InfoPages(this.user);

  @override
  _InfoPagesState createState() => _InfoPagesState();
}

class _InfoPagesState extends State<InfoPages> {
  int idPage = 0;

  void changePage(int nume) {
    setState(() {
      idPage = nume;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);

    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: PageView(
              onPageChanged: (num) {
                changePage(num);
              },
              children: [
                Container(
                  color: Colors.grey[350],
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: size.width * 0.30,
                                  height: 200,
                                  child: GestureDetector(
                                    child: Image.asset(
                                        'assets/imagens/icon_produto.png'),
                                    onTap: () {},
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  color: Colors.amber,
                                  width: size.width * 0.50,
                                  height: size.height * 0.70,
                                  margin: EdgeInsets.only(top: 15),
                                  child: Card(
                                    color: Colors.white54,
                                    elevation: 50.0,
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.all(40),
                                              child: Text("Produto",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                                child: Container(
                                              margin: EdgeInsets.all(10),
                                              child: Text(
                                                " Voc?? aprender?? a ser empreendedor administrando a sa??de financeira da sua empresa. Como fonte de receita ter?? que vender produtos. Os produtos podem ter v??rias caracter??sticas que ser??o livres para serem definidas por voc??. Cada caracter??stica implica em um desempenho diferente de vendas. Esse desempenho influenciar?? se as metas do jogo ser??o atingidas. Provando assim se voc?? se tornou ou n??o um bom empreendedor.",
                                                style: TextStyle(fontSize: 12),
                                              ),
                                            ))
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.all(5),
                                          child: FlatButton(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20.0)),
                                              color: Colors.grey[400],
                                              onPressed: () {
                                                print(widget.user.nome);
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            Home(
                                                              inventarioAtual:
                                                                  Inventario(
                                                                inventarioCorrente:
                                                                    InMetas(),
                                                              ),
                                                              telaHome:
                                                                  MetasView(),
                                                              user: widget.user,
                                                            )));
                                              },
                                              child: Text(
                                                "Pular",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15),
                                              )),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.grey[350],
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: size.width * 0.30,
                                  height: 150,
                                  child: GestureDetector(
                                    child: Image.asset(
                                        'assets/imagens/icon_info_propaganda.png'),
                                    onTap: () {},
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  color: Colors.amber,
                                  width: size.width * 0.50,
                                  height: size.height * 0.70,
                                  margin: EdgeInsets.only(top: 15),
                                  child: Card(
                                    color: Colors.white54,
                                    elevation: 50.0,
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.all(40),
                                              child: Text(
                                                  "Canais de Propaganda",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                                child: Container(
                                              margin: EdgeInsets.all(10),
                                              child: Text(
                                                " Para que seus produtos alcancem os clientes, ser?? necess??rio utilizar um canal para que seja feita a propaganda dos produtos. Cada canal ter?? resultados diferentes em cada tipo de produto criado.",
                                                style: TextStyle(fontSize: 12),
                                              ),
                                            ))
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.all(5),
                                          child: FlatButton(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20.0)),
                                              color: Colors.grey[400],
                                              onPressed: () {
                                                print(widget.user.nome);
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            Home(
                                                              inventarioAtual:
                                                                  Inventario(
                                                                inventarioCorrente:
                                                                    InMetas(),
                                                              ),
                                                              telaHome:
                                                                  MetasView(),
                                                              user: widget.user,
                                                            )));
                                              },
                                              child: Text(
                                                "Pular",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15),
                                              )),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.grey[350],
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: size.width * 0.30,
                                  height: 200,
                                  child: GestureDetector(
                                    child: Image.asset(
                                        'assets/imagens/icon_empreendedor.png'),
                                    onTap: () {},
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  color: Colors.amber,
                                  width: size.width * 0.50,
                                  height: size.height * 0.70,
                                  margin: EdgeInsets.only(top: 15),
                                  child: Card(
                                    color: Colors.white54,
                                    elevation: 50.0,
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.all(40),
                                              child: Text("Marketplace",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                                child: Container(
                                              margin: EdgeInsets.all(10),
                                              child: Text(
                                                " Com o intuito de potencializar as vendas, voc?? poder?? utilizar an??ncios em Marketplaces diferentes. No qual, ter?? resultados diferentes em produtos diferentes.",
                                                style: TextStyle(fontSize: 12),
                                              ),
                                            ))
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.all(10),
                                          child: FlatButton(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20.0)),
                                              color: Colors.grey[400],
                                              onPressed: () {
                                                print(widget.user.nome);
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            Home(
                                                              inventarioAtual:
                                                                  Inventario(
                                                                inventarioCorrente:
                                                                    InMetas(),
                                                              ),
                                                              telaHome:
                                                                  MetasView(),
                                                              user: widget.user,
                                                            )));
                                              },
                                              child: Text(
                                                "Pular",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15),
                                              )),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.grey[350],
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: size.width * 0.30,
                                  height: 150,
                                  child: GestureDetector(
                                    child: Image.asset(
                                        'assets/imagens/icon_info_financas.png'),
                                    onTap: () {},
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  color: Colors.amber,
                                  width: size.width * 0.50,
                                  height: size.height * 0.70,
                                  margin: EdgeInsets.only(top: 15),
                                  child: Card(
                                    color: Colors.white54,
                                    elevation: 50.0,
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.all(40),
                                              child: Text("Finan??as",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                                child: Container(
                                              margin: EdgeInsets.all(10),
                                              child: Text(
                                                "Voc?? aprender?? a ser empreendedor administrando a sa??de financeira da sua empresa. Como fonte de receita ter?? que vender produtos. Os produtos podem ter v??rias caracter??sticas que ser??o livres para serem definidas por voc??. Cada caracter??stica implica em um desempenho diferente de vendas. Esse desempenho influenciar?? se as metas do jogo ser??o atingidas. Provando assim se voc?? se tornou ou n??o um bom empreendedor.",
                                                style: TextStyle(fontSize: 12),
                                              ),
                                            ))
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.all(10),
                                          child: FlatButton(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20.0)),
                                              color: Colors.grey[400],
                                              onPressed: () {
                                                print(widget.user.nome);
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            Home(
                                                              inventarioAtual:
                                                                  Inventario(
                                                                inventarioCorrente:
                                                                    InMetas(),
                                                              ),
                                                              telaHome:
                                                                  MetasView(),
                                                              user: widget.user,
                                                            )));
                                              },
                                              child: Text(
                                                "Iniciar",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15),
                                              )),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.grey[700],
            height: size.height * 0.10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 10,
                  height: 10,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: idPage == 0 ? Colors.red : Colors.grey),
                ),
                Container(
                  width: 10,
                  height: 10,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: idPage == 1 ? Colors.red : Colors.grey),
                ),
                Container(
                  width: 10,
                  height: 10,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: idPage == 2 ? Colors.red : Colors.grey),
                ),
                Container(
                  width: 10,
                  height: 10,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: idPage == 3 ? Colors.red : Colors.grey),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
