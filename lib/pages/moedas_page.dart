import 'package:flutter/material.dart';
import 'package:lista_cripto/repositories/moeda_repositor.dart';
import 'package:intl/intl.dart';

import '../models/moeda.dart';

class MoedaPage extends StatefulWidget {
  const MoedaPage({Key? key}) : super(key: key);

  @override
  State<MoedaPage> createState() => _MoedaPageState();
}

class _MoedaPageState extends State<MoedaPage> {
  final tabela = MoedaRepository.tabela;
  NumberFormat real = NumberFormat.currency(locale: 'pt_BR', name: 'R\$');
  List<Moeda> selecionadas = [];

  appBarDinamica() {
    return AppBar(
      title: const Text('Pagina de criptomoedas'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarDinamica(),
      body: ListView.separated(
          itemBuilder: (BuildContext context, int moeda) {
            return ListTile(
              leading: (selecionadas.contains(tabela[moeda]))
                  ? const CircleAvatar(
                      child: Icon(Icons.check),
                    )
                  : SizedBox(
                      width: 40,
                      child: Image.asset(tabela[moeda].icone),
                    ),
              title: Text(
                tabela[moeda].nome,
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
              trailing: Text(real.format(tabela[moeda].preco)),
              selected: selecionadas.contains(tabela[moeda]),
              selectedTileColor: Colors.indigo[50],
              onLongPress: () {
                setState(() {
                  (selecionadas.contains(tabela[moeda]))
                      ? selecionadas.remove(tabela[moeda])
                      : selecionadas.add(tabela[moeda]);
                });
              },
            );
          },
          padding: const EdgeInsets.all(16),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: tabela.length),
    );
  }
}
