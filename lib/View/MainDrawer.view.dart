import 'package:appempreender/Model/Usuario.model.dart';
import 'package:appempreender/View/CanaisPropaganda.view.dart';
import 'package:appempreender/View/FinancasView.dart';
import 'package:appempreender/View/Home.view.dart';
import 'package:appempreender/View/In.Financas.dart';
import 'package:appempreender/View/In.marketplace.dart';
import 'package:appempreender/View/In.metas.view.dart';
import 'package:appempreender/View/In.produtos.dart';
import 'package:appempreender/View/In.propagandas.dart';
import 'package:appempreender/View/Inventario.view.dart';
import 'package:appempreender/View/Marketplace.view.dart';
import 'package:appempreender/View/Metas.view.dart';
import 'package:appempreender/View/Produtos.view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainDrawer extends StatefulWidget {
  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  int _selected = 0;
  Usuario user;
  CanaisPropag canaisPropag = CanaisPropag();
  _MainDrawerState({this.user});

  void changeSelected(int index) {
    setState(() {
      _selected = index;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          ListTile(
            selected: _selected == 0,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Home(
                            inventarioAtual: Inventario(
                              inventarioCorrente: InMetas(),
                            ),
                            telaHome: MetasView(),
                            user: user,
                          )));
              changeSelected(0);
            },
            leading: Image.asset('assets/imagens/prancheta.png'),
            title: Text("Metas"),
          ),
          ListTile(
            selected: _selected == 1,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Home(
                          inventarioAtual: Inventario(
                            inventarioCorrente: InProdutos(),
                          ),
                          telaHome: ProdutoView())));
              changeSelected(1);
            },
            leading: Image.asset('assets/imagens/icon_produto.png'),
            title: Text("Produtos"),
          ),
          ListTile(
            selected: _selected == 2,
            leading: Image.asset('assets/imagens/icon_propaganda.png'),
            title: Text("Canais de Propaganda"),
            onTap: () {
              changeSelected(2);
              Navigator.pop(context);
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
          ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Home(
                          inventarioAtual: Inventario(
                            inventarioCorrente: InFinancas(),
                          ),
                          telaHome: FinancasView())));
            },
            leading: Image.asset('assets/imagens/financiamento.png'),
            title: Text("Finanças"),
          ),
          ListTile(
            leading: Image.asset('assets/imagens/icon_marketplace.png'),
            title: Text("Marketplace"),
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
          ListTile(
            leading: Image.asset('assets/imagens/icon_engrenagem.png'),
            title: Text("Opções"),
            onTap: () {},
          ),
          ListTile(
            leading: Image.asset('assets/imagens/icon_sair.png'),
            title: Text("Sair"),
            onTap: () {
              SystemChannels.platform.invokeMethod('SystemNavigator.pop');
            },
          ),
        ],
      ),
    );
  }
}
