import 'package:appempreender/Controller/Controller.dart';
import 'package:appempreender/Model/Usuario.model.dart';
import 'package:appempreender/View/CanaisPropaganda.view.dart';
import 'package:appempreender/View/FinancasView.dart';
import 'package:appempreender/View/In.Financas.dart';
import 'package:appempreender/View/In.marketplace.dart';
import 'package:appempreender/View/In.metas.view.dart';
import 'package:appempreender/View/In.produtos.dart';
import 'package:appempreender/View/In.propagandas.dart';
import 'package:appempreender/View/Inventario.view.dart';
import 'package:appempreender/View/MainDrawer.view.dart';
import 'package:appempreender/View/Marketplace.view.dart';
import 'package:appempreender/View/Metas.view.dart';
import 'package:appempreender/View/Produtos.view.dart';
import 'package:appempreender/routes/AppRoutes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Home extends StatefulWidget {
  Widget telaHome;
  Widget inventarioAtual;

  Usuario user;
  Home({this.inventarioAtual, this.telaHome, this.user});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final MainDrawer mainDrawer = MainDrawer();

  _openPopup(context) {
    Alert(
        context: context,
        title: "Usuário:",
        content: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.all(20), child: Text(widget.user.nome)),
          ],
        ),
        buttons: [
          DialogButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              "Ok",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          )
        ]).show();
  }

  void modificarEstado(int index) {
    setState(() {
      switch (index) {
        case 1:
          widget.telaHome = Controller.instance.metasview;
          widget.inventarioAtual = Inventario(
            inventarioCorrente: InMetas(),
          );
          break;
        case 2:
          widget.telaHome = Controller.instance.produtoView;
          widget.inventarioAtual = Inventario(
            inventarioCorrente: InProdutos(
              quantidade:
                  Controller.instance.produtoView.quantidadeController.text,
              nome: Controller.instance.produtoView.nomeController.text,
              categoria: Controller.instance.produtoView.categoria,
            ),
          );
          break;
        case 3:
          widget.telaHome = Controller.instance.canaisPropag;
          widget.inventarioAtual = Inventario(
            inventarioCorrente: InPropagandas(),
          );
          break;

        case 4:
          widget.telaHome = Controller.instance.financasView;
          widget.inventarioAtual = Inventario(
            inventarioCorrente: InFinancas(),
          );
          break;

        case 5:
          widget.telaHome = Controller.instance.marketplaceView;
          widget.inventarioAtual = Inventario(
            inventarioCorrente: InMarketplace(),
          );
          break;

        case 6:
          SystemChannels.platform.invokeMethod('SystemNavigator.pop');
          break;

        case 7:
          break;
        default:
      }
    });
  }

  void teste() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
              iconSize: 40,
              icon: Icon(Icons.keyboard_return_outlined),
              onPressed: () {
                Navigator.of(context).pushNamed(AppRouter.LOGIN_VIEW);
              }),
          IconButton(
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              onPressed: () {
                _openPopup(context);
              }),
        ],
      ),
      body: Row(
        children: <Widget>[widget.inventarioAtual, widget.telaHome],
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                onTap: () {
                  modificarEstado(1);
                },
                leading: Image.asset('assets/imagens/prancheta.png'),
                title: Text("Metas"),
              ),
              ListTile(
                onTap: () {
                  modificarEstado(2);
                },
                leading: Image.asset('assets/imagens/icon_produto.png'),
                title: Text("Produtos"),
              ),
              ListTile(
                onTap: () {
                  modificarEstado(3);
                },
                leading: Image.asset('assets/imagens/icon_propaganda.png'),
                title: Text("Canais de Propaganda"),
              ),
              ListTile(
                onTap: () {
                  modificarEstado(4);
                },
                leading: Image.asset('assets/imagens/financiamento.png'),
                title: Text("Finanças"),
              ),
              ListTile(
                onTap: () {
                  modificarEstado(5);
                },
                leading: Image.asset('assets/imagens/icon_marketplace.png'),
                title: Text("Marketplace"),
              ),
              ListTile(
                onTap: () {},
                leading: Image.asset('assets/imagens/icon_engrenagem.png'),
                title: Text("Opções"),
              ),
              ListTile(
                onTap: () {
                  modificarEstado(6);
                },
                leading: Image.asset('assets/imagens/icon_sair.png'),
                title: Text("Sair"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
