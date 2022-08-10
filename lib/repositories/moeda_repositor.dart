import '../models/moeda.dart';

class MoedaRepository {
  static List<Moeda> tabela = [
    Moeda(
        icone: 'imagens/btc.png',
        nome: 'Bitcoin',
        sigla: 'BTC',
        preco: 234354.00),
    Moeda(
        icone: 'imagens/bnb.png',
        nome: 'Binance',
        sigla: 'BNB',
        preco: 13454.00),
    Moeda(icone: 'imagens/cake.png', nome: 'Cake', sigla: 'CAKE', preco: 53.00),
    Moeda(
        icone: 'imagens/cardano.png',
        nome: 'Cardano',
        sigla: 'ADA',
        preco: 344.00),
    Moeda(icone: 'imagens/dash.png', nome: 'Dash', sigla: 'DS', preco: 2.00),
    Moeda(
        icone: 'imagens/doge.jpg',
        nome: 'DogeCoin',
        sigla: 'DOGE',
        preco: 3.00),
    Moeda(
        icone: 'imagens/eth.png',
        nome: 'Etherium',
        sigla: 'ETH',
        preco: 1234.00),
    Moeda(
        icone: 'imagens/shiba.png',
        nome: 'ShibaInu',
        sigla: 'SHIB',
        preco: 24.00),
  ];
}
