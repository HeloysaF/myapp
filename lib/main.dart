import 'package:flutter/material.dart';
import 'package:myapp/calculadora.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Layout',
      theme: ThemeData(
       colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 58, 183, 89)),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'Calculadora'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body:  Center(
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Expanded(
            flex: 1,
           child: 
           Container(
             alignment: Alignment.center,
            // color: Colors.red,
              //child: 
            // const Text(
             // 'Layout Superior'
             // ),
               ),
              ),
              Expanded(
              child: 
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                    Expanded(
                      flex:10,
                      child:Container(
                   // alignment: Alignment.center,
                   // color: Colors.amber,
                   // child:const Text('Primeira Coluna'),
                      ),
                      ),
             
              Expanded(
                flex: 20,
                child:Container(
                alignment: Alignment.center,
                //color:Colors.blue,
                decoration: BoxDecoration(
                  color:Colors.grey.shade300,
                  borderRadius:BorderRadius.circular(28),
                   boxShadow:const [
               BoxShadow(
                color: Colors.black,
                blurRadius: 18,
                offset: Offset(10,5),
               ),
              ]
                ),
             
                child:Calculadora(),
              ),),
              Expanded(
               flex:6,
                child:
               Container(
             // alignment: Alignment.center,
              //color:Colors.yellow ,
             // child:const Text('Terceira Coluna'),
               )
               
               )
              ],),),
              Expanded(
                flex: 1,
                child: Container(
             // alignment: Alignment.center,
             // color: Colors.pink,
             // child: const Text('Layout Inferior '),
              ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
