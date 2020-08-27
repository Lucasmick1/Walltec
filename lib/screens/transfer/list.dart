import 'package:Walltec/models/transfer.dart';
import 'package:Walltec/screens/transfer/form.dart';
import 'package:flutter/material.dart';

class ListTransfer extends StatefulWidget {
  final List<Transfer> _tranferencias = List();
  @override
  State<StatefulWidget> createState() {
    return ListTransferState();
  }
}

class ListTransferState extends State<ListTransfer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Tranferências'),
        backgroundColor: Color.fromRGBO(0, 66, 8, 26),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment(-1, -1),
              margin: EdgeInsets.fromLTRB(20, 10, 0, 0),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      debugPrint('pressionado');
                    },
                    icon: ClipOval(
                      child: Image.network(
                        'url-of-image',
                        fit: BoxFit.fill,
                      ),
                    ),
                    iconSize: 50,
                  )
        
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),
              onTap: () {
                debugPrint('fui clicado');
              },
              onLongPress: () {
                debugPrint('fui pressionado');
              },
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: widget._tranferencias.length,
        itemBuilder: (context, i) {
          final transferencia = widget._tranferencias[i];
          print(i);
          return ItemTranfer(transferencia);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return FormTransfer();
          })).then((transfer) => {
                if (transfer != null)
                  {
                    setState(() {
                      widget._tranferencias.add(transfer);
                    })
                  }
              });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class ItemTranfer extends StatelessWidget {
  final Transfer transfer;
  ItemTranfer(
    this.transfer,
  );

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(transfer.value.toString()),
        subtitle: Text("Conta: ${transfer.account.toString()}"),
      ),
    );
  }
}
