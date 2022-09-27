import 'package:appempreender/View/Tabs_view.dart';
import 'package:flutter/material.dart';

class FinancasView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: DefaultTabController(
        initialIndex: 1,
        length: 4,
        child: Scaffold(
            appBar: PreferredSize(
              child: AppBar(
                backgroundColor: Colors.grey[300],
                elevation: 0.0,
                bottom: TabBar(
                    isScrollable: true,
                    labelColor: Colors.black,
                    indicatorColor: Colors.black,
                    tabs: <Widget>[
                      Tab(
                        text: "Lucro líquido",
                      ),
                      Tab(
                        text: "Despesas",
                      ),
                      Tab(
                        text: "Relatório de Vendas",
                      ),
                      Tab(
                        text: "Fluxo de Caixa",
                      ),
                    ]),
              ),
              preferredSize: Size.fromHeight(50.0),
            ),
            body: TabsView()),
      ),
    );
  }
}
