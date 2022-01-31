import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  TextEditingController _textEditingController = TextEditingController();
  String _novoValor = "";

  void _atualizaText(){
    setState(() {
      _novoValor = _textEditingController.text;
    });
  }

  String _titleAppBar = "PEDIDO DE COMPRA";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titleAppBar),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              children: [
                const Text('My TextFieldController'),
                TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(labelText: 'My field text'),
                  controller: _textEditingController ,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 20),
                  child: ElevatedButton.icon(
                      onPressed: _atualizaText,
                      icon: const Icon(Icons.update),
                      label: const Text('Atualizar')),
                ),
                Text('Resultado é: '+ _novoValor),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
