import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String msg; //1ta string nilam
  const HomePage({super.key, required this.msg});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _count = 0; //variable declare korlam,initially man dicchi 0,(_)private rakhlam
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.msg),
      ),
      body: Center( //maje anar jonno
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //column er children gulo center theke suru hoy vartically
          children: [
               const Text('You have pushed this many times'), //const key eta,1ta text show korbe jeta kokhono change hobe na
            Text('$_count', style: Theme.of(context).textTheme.headline5,)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCount,
        child: const Icon(Icons.add),
      ),
    );
  }
  _incrementCount(){
   setState(() {  //setState er kaj hocche bar bar build method k call kora,
                  // setState method call korar karone build method scan kore abr call korte pare nao pare
     _count++;

   });
  }
}
