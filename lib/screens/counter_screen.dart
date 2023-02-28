import 'package:flutter/material.dart';

class CounterScreeen extends StatefulWidget{
  const CounterScreeen({super.key});

  @override
  State<CounterScreeen> createState() => _CounterScreeenState();
}
//Clase privada
class _CounterScreeenState extends State<CounterScreeen> {
   int contador1 = 0;
   int contador2 = 0;
   int result =0;

  final TextStyle estiloTexto = const TextStyle(
    fontSize: 30,
    color: Color.fromARGB(255, 241, 246, 247),
    fontWeight: FontWeight.bold,
  );

  void incrementar(){
    contador1++;
    setState(() {
      
    });
  }

  void decrementar(){
    contador1 --;
    setState(() {
      
    });
  }


  void incrementar2(){
    contador2++;
    setState(() {
      
    });
  }

  void decrementar2(){
    contador2 --;
    setState(() {
      
    });
  }

  void resultado(){
    result = contador1 * contador2;
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
     
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      title: const Text('Multiplicador basico'),
      centerTitle: true,
      elevation: 10
      ,),
      backgroundColor: Color.fromARGB(255, 255, 7, 214),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [ Text('Numero 1: ',
          style: estiloTexto),
          //Boton que quita 
           FloatingActionButton(
          onPressed: () => decrementar(),//usar funciones aque no tienen nombre
          backgroundColor: Color.fromARGB(223, 25, 242, 250),
          foregroundColor: Color.fromARGB(255, 1, 1, 37),
          child: const Icon(Icons.exposure_minus_1),
          ),
          Text('$contador1', 
          
          style: estiloTexto,
          
          ),
          //Boton que pone
           FloatingActionButton(
          onPressed: () => incrementar(),//usar funciones aque no tienen nombre
          backgroundColor: Color.fromARGB(223, 25, 242, 250),
          foregroundColor: Color.fromARGB(255, 1, 1, 37),
         child: const Icon(Icons.exposure_plus_1),
          ),
          ],
          ),
Divider(),
          Row(
            children: [ Text('Numero 2: ',
          style: estiloTexto),
          //Boton que quita
            FloatingActionButton(
          onPressed: () => decrementar2(),//usar funciones aque no tienen nombre
          backgroundColor: Color.fromARGB(223, 25, 242, 250),
          foregroundColor: Color.fromARGB(255, 1, 1, 37),
          child: const Icon(Icons.exposure_minus_1),
          ),
          Text('$contador2',
          style: estiloTexto,
          ),

          //Boton que quita
             FloatingActionButton(
          onPressed: () => incrementar2(),//usar funciones aque no tienen nombre
          backgroundColor: Color.fromARGB(223, 25, 242, 250),
          foregroundColor: Color.fromARGB(255, 1, 1, 37),
          child: const Icon(Icons.exposure_plus_1),
          ),
            ],
          ),
Divider(),
          Row(
            children: [ Text('El resultado es: ',
          style: estiloTexto),
             FloatingActionButton(
          onPressed: () => resultado(),//usar funciones aque no tienen nombre
          backgroundColor: Color.fromARGB(223, 25, 242, 250),
          foregroundColor: Color.fromARGB(255, 1, 1, 37),
          child: const Icon(Icons.ads_click),
          ),
          Text('$result',
          style: estiloTexto,
          ),
            ],
          ),
        ],
      ),
         
),

/*
floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
  floatingActionButton: CustomFloatingActionButton(
    decrease: decrementar, 
    increase: incrementar, 
    reset: reiniciar,),

    */
    
  );

  //---------------------------------------------------
  
  //-------------------------------------------
}
}
/*
class CustomFloatingActionButton extends StatelessWidget {
  final Function increase;
  final Function decrease;
  final Function reset;
  

  const CustomFloatingActionButton({
    super.key, required this.increase, required this.decrease, required this.reset,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          onPressed: () => decrease(),//usar funciones aque no tienen nombre
            
          
          backgroundColor: Color.fromARGB(223, 25, 242, 250),
          foregroundColor: Color.fromARGB(255, 1, 1, 37),
          child: const Icon(Icons.exposure_minus_1),
          ),
         // const SizedBox(
//width: 30,
//),
          FloatingActionButton(
          onPressed: () => reset(),
          backgroundColor: Color.fromARGB(223, 25, 242, 250),
          foregroundColor: Color.fromARGB(255, 0, 0, 0),
          child: const Icon(Icons.restart_alt),
          ),
          FloatingActionButton(
          onPressed: () =>increase(),
          // 
          backgroundColor: Color.fromARGB(223, 25, 242, 250),
          foregroundColor: Color.fromARGB(255, 1, 1, 37),
          child: const Icon(Icons.exposure_plus_1),
          ),
      ],

      
      
    );
    
  }
}*/