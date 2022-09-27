import 'package:appempreender/Model/Categoria.dart';
import 'package:appempreender/Model/Produto.model.dart';
import 'package:appempreender/View/CanaisPropaganda.view.dart';
import 'package:appempreender/View/FinancasView.dart';
import 'package:appempreender/View/Marketplace.view.dart';
import 'package:appempreender/View/Metas.view.dart';
import 'package:appempreender/View/Produtos.view.dart';

class Controller {
  MetasView metasview = MetasView();
  ProdutoView produtoView = ProdutoView();
  CanaisPropag canaisPropag = CanaisPropag();
  MarketplaceView marketplaceView = MarketplaceView();
  FinancasView financasView = FinancasView();
  List<Produto> produto = [];

  static final Controller instance = Controller._();

  Controller._();

  criarProduto() {
    produto.add(Produto(
        nome: produtoView.nomeController.text,
        preco: double.parse(produtoView.precoController.text),
        quantidade: int.parse(produtoView.quantidadeController.text),
        categoria: Categoria(nome: produtoView.categoria)));
    print(produto.toList());
  }
}
