import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Home Temp'),
        ),
        body: ListView(
          // children: _createItems(),
          children: _createItemsShort(),
        ),
      ),
    );
  }

  List<Widget> _createItems() {
    List<Widget> list = List<Widget>();

    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );

      list
        ..add(tempWidget)
        ..add(Divider());
          
      // list.add(tempWidget);
      // list.add(Divider());
    }
    return list;
  }

  List<Widget> _createItemsShort() {
    return opciones.map( (item){
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item + '!'),
            subtitle: Text('Subtitulo'),
            leading: Icon(Icons.star_border),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){ },
          ),
          Divider(),
        ],
      );
    }).toList();
  }
}