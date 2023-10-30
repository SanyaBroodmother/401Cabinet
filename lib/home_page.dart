
import 'package:flutter/material.dart';
import 'list_item.dart';

  // массив для первого listview
  const List<String> Dorokhis = <String>["I","II","III","IV","V","VI","VII"];

  // массив для второго listview
  const List<String> Dorokhib = <String>["Первый", "Второй", "Третий", "Четвертый", "Пятый", "Шестой", "Седьмой"];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: const Color.fromARGB(255, 57, 56, 51),
        title: const Center(
          child: Text('Dorokhin')),
        backgroundColor: Colors.cyanAccent,
      ),

       
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            height: MediaQuery.of(context).size.height * 0.5,      
            child: 
            ListView.builder(
              itemCount: Dorokhib.length,              
            itemBuilder: (BuildContext context, int index,)
            
            {
              return ListItem(textItem: Dorokhib[index].toString(),);
            },            
            ),
            ),

          Container(
            padding: const EdgeInsets.all(16.0),
            height: MediaQuery.of(context).size.height * 0.5,
            child:
            ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: Dorokhis.length,
              itemBuilder: (BuildContext context, int index,)

              {
                return ListItem(textItem: Dorokhis[index].toString(),);
              },
            ),
          ),
       ],
      )
      
    );
  }
}


