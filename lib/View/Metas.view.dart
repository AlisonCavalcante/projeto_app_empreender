import 'package:appempreender/Model/Usuario.model.dart';
import 'package:appempreender/View/CanaisPropaganda.view.dart';
import 'package:appempreender/View/In.marketplace.dart';
import 'package:appempreender/View/In.propagandas.dart';
import 'package:appempreender/View/Marketplace.view.dart';
import 'package:flutter/material.dart';

import 'Home.view.dart';
import 'In.produtos.dart';
import 'Inventario.view.dart';
import 'Produtos.view.dart';

class MetasView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Expanded(
      flex: 5,
      child: SingleChildScrollView(
        child: Container(
          width: size.width,
          height: size.height,
          color: Colors.grey[300],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.all(20),
                        width: 300,
                        height: size.height * 0.7,
                        decoration: BoxDecoration(
                            color: Colors.green[900],
                            border: Border.all(
                                color: Colors.brown[300], width: 10)),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.all(10),
                                  child: Text(
                                    "Metas",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        child: GestureDetector(
                          child: Image.asset('assets/imagens/icon_produto.png'),
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => Home(
                            //             inventarioAtual: Inventario(
                            //               inventarioCorrente: InProdutos(),
                            //             ),
                            //             telaHome: ProdutoView())));
                          },
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        child: GestureDetector(
                          child:
                              Image.asset('assets/imagens/icon_propaganda.png'),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Home(
                                        inventarioAtual: Inventario(
                                          inventarioCorrente: InPropagandas(),
                                        ),
                                        telaHome: CanaisPropag())));
                          },
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        child: GestureDetector(
                          child: Image.asset(
                              'assets/imagens/icon_marketplace.png'),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Home(
                                        inventarioAtual: Inventario(
                                          inventarioCorrente: InMarketplace(),
                                        ),
                                        telaHome: MarketplaceView())));
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
