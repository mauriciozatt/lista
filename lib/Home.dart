import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {



  List vLista = [
    {'Nome': 'mauricio', 'Telefone': '87878787', 'Avatar': 'https://cdn.pixabay.com/photo/2017/01/31/21/23/avatar-2027366__340.png'},
    {'Nome': 'Sofia', 'Telefone': '77777777', 'Avatar': 'https://cdn.pixabay.com/photo/2014/04/02/14/10/female-306407__340.png'},
    {'Nome': 'Palona', 'Telefone': '99999999', 'Avatar': 'https://cdn.pixabay.com/photo/2014/04/02/14/10/female-306407__340.png'},
    {'Nome': 'John', 'Telefone': '88888888', 'Avatar': 'https://cdn.pixabay.com/photo/2017/01/31/21/23/avatar-2027366__340.png'},
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Title(
            color: Colors.deepOrange,
            child: Text("Lista de contatos")
        ),
      ),

      body: Container(
        child: ListView.builder(
            itemCount: vLista.length,/// Quantidade de elementos que a nossa LISTVIEW vai ter
            itemBuilder: (context,i){ ///Recebe dois parâmetro o context do meu widget e um indice..

              return ListTile(
                title: Text(vLista[i]["Nome"].toString()),
                subtitle: Text(vLista[i]["Telefone"].toString()),
                leading: CircleAvatar(backgroundImage: NetworkImage(vLista[i]["Avatar"].toString()),),
                trailing: IconButton(onPressed: (){}, icon: Icon(Icons.edit)),





              );

      },
      ),


      ),


    );
  }
}
