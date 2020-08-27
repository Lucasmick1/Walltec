
import 'package:Walltec/components/input_text.dart';
import 'package:Walltec/models/transfer.dart';
import 'package:flutter/material.dart';

class FormTransfer extends StatefulWidget {
  final TextEditingController _controllerFiledAccount = TextEditingController();
  final TextEditingController _controllerFiledValue = TextEditingController();

  void _createTransfer(BuildContext context) {
    final account = int.tryParse(_controllerFiledAccount.text);
    final value = double.tryParse(_controllerFiledValue.text);

    if (account != null && value != null) {
      final transfer = Transfer(account, value);
      Navigator.pop(context, transfer);
    } else {
      Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text('Erro ao fazer transferencia, confira os valores'),
        ),
      );
    }
  }

  @override
  State<StatefulWidget> createState() {
    return FormTransferState();
  }
}

class FormTransferState extends State<FormTransfer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Criando transferências'),
          backgroundColor: Color.fromRGBO(0, 66, 8, 26),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              InputText(
                'Conta',
                '0000.000.000',
                widget._controllerFiledAccount,
                icon: Icon(Icons.account_balance),
                width: 200,
                margin: EdgeInsets.fromLTRB(25, 10, 200, 0),
              ),
              InputText(
                'Valor',
                '0.00',
                widget._controllerFiledValue,
                icon: Icon(Icons.monetization_on),
                margin: EdgeInsets.fromLTRB(0, 25, 200, 25),
                width: 160,
              ),
              OutlineButton(
                child: Text('Adicionar'),
                textColor: Colors.green,
                onPressed: () => widget._createTransfer(context),
                borderSide: BorderSide(
                  color: Colors.green,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              )
            ],
          ),
        ));
  }
}
