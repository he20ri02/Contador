import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold( // Scaffol 
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Contador'),
      ),
      body: Center( //Body puede tener solo un child
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // sirve para centrar a cualquiera de los dos lados
          children: [
            const Text('Numero de clicks'),
            Text('$contador')
          ],
        ),//un column puede recibir un children(varios componentes)
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _crearBotones(),

    );
  }
  
  Widget _crearBotones() {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          FloatingActionButton(
            onPressed: _botonCero(),
            child: const Icon(Icons.exposure_zero),
            ),
            const SizedBox(width: 10),
          FloatingActionButton(
            onPressed: _botonMenos(),
            child: const Icon(Icons.remove),
            ),
            const SizedBox(width: 10), 
          FloatingActionButton(
            onPressed: _botonReset(),
            child: const Icon(Icons.refresh),
            ),

        ],
      ),
    );
  }
  
  _botonCero() {
    setState(()  => contador++);
  }
   _botonMenos() {
    setState(()  => contador--);
  }

   _botonReset() {
    setState(()  => contador=0);
  }
}