// import 'package:flutter/material.dart';
import 'package:flutter/material.dart';


void main () {
runApp(MaterialApp(
title: "contador de pessoas",
home: Home()));
}

class Home extends StatefulWidget {    
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>{
 String _winner = "marcador de truco";
//  int _people = 0;
 int _pontonos = 0;
 int _pontoeles = 0;

 void _zerar(int delta){
 setState(() {
  _pontonos += delta;  
  _pontoeles = 0;
  _pontonos = 0;
  _winner = "Marcador de truco"; 
  _pontoeles = _pontoeles;
  }
 );
  }
 
 
 void _changenos(int delta){
 setState(() {
   if (_pontoeles <= 11 ){
  _pontonos += delta;
  }  
  if (_pontonos > 11){
    _winner = "Nos gamanhamos";
    _pontonos = 12;
  }

  if (_pontoeles == 12){
    _pontonos = _pontonos + 0;
  }
 });
}

 void _changeeles(int delta){
 setState(() {
    if (_pontonos <= 11 ){
  _pontoeles += delta;
  }  
  if (_pontoeles > 11){
    _winner = "Eles ganharam";
    _pontoeles = 12;
    // _pontonos = _pontonos;
 }
  if (_pontonos == 12){
    _pontoeles = _pontoeles + 0;
  }
 });
}
  
  @override
  Widget build(BuildContext context){
    return Stack (
  children: <Widget>[
    
    Image.asset("images/back-stars.jpg",
    fit: BoxFit.cover,
    height: 1000.0,
    ),

    Column(//coluna alinhada ao centro
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
   

  
  Row(//ROW NOS/ELES
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Padding(
        padding:EdgeInsets.all(10.0),
        child:       
        Text ("Nós:$_pontonos ", 
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 35.0),
        )),

        Padding(
        padding:EdgeInsets.all(10.0),
        child:       
        Text ("Eles:$_pontoeles", 
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 35.0),
        )),

    ],

  ),

  Row(//ROW +1 
     mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Padding(
        padding:EdgeInsets.all(10.0),
        child:       
        FlatButton(//botao 
        child: Text("+1",
        style: TextStyle(color: Colors.white,fontSize: 40.0,),
        ),
        onPressed: () {
        _changenos(1); 
        },//colcar uma funçao aqui  
        ),
      ),


       Padding(
        padding:EdgeInsets.all(10.0),
        child:      
         FlatButton(
          child: Text("+1",
          style: TextStyle(color: Colors.white,fontSize: 40.0,),
          ),
        onPressed: () {
         _changeeles(1); 
        },//colcar uma funçao aqui  
        
         ),
      ),




    ],

  ),

  Row(///ROW +3 
     mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Padding(
        padding:EdgeInsets.all(10.0),
        child:       
        FlatButton(//botao 
        child: Text("+3",
        style: TextStyle(color: Colors.white,fontSize: 40.0,),
        ),
        onPressed: () {
        _changenos(3); 
        },//colcar uma funçao aqui  
        ),
      ),


       Padding(
        padding:EdgeInsets.all(10.0),
        child:      
         FlatButton(
          child: Text("+3",
          style: TextStyle(color: Colors.white,fontSize: 40.0,),
          ),
        onPressed: () {
        _changeeles(3); 
        },//colcar uma funçao aqui  
        
         ),
      ),




    ],

  ),

  Row(//ROW +6 
     mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Padding(
        padding:EdgeInsets.all(10.0),
        child:       
        FlatButton(//botao 
        child: Text("+6",
        style: TextStyle(color: Colors.white,fontSize: 40.0,),
        ),
        onPressed: () {
        _changenos(6); 
        },//colcar uma funçao aqui  
        ),
      ),


       Padding(
        padding:EdgeInsets.all(10.0),
        child:      
         FlatButton(
          child: Text("+6",
          style: TextStyle(color: Colors.white,fontSize: 40.0,),
          ),
        onPressed: () {
         _changeeles(6); 
        },//colcar uma funçao aqui  
        
         ),
      ),




    ],

  ),
 
  Row(//ROW +9 
     mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Padding(
        padding:EdgeInsets.all(10.0),
        child:       
        FlatButton(//botao 
        child: Text("+9",
        style: TextStyle(color: Colors.white,fontSize: 40.0,),
        ),
        onPressed: () {
        _changenos(9); 
        },//colcar uma funçao aqui  
        ),
      ),


       Padding(
        padding:EdgeInsets.all(10.0),
        child:      
         FlatButton(
          child: Text("+9",
          style: TextStyle(color: Colors.white,fontSize: 40.0,),
          ),
        onPressed: () {
         _changeeles(9); 
        },//colcar uma funçao aqui  
        
         ),
      ),




    ],

  ),
  
  Row(//ROW +12 
     mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Padding(
        padding:EdgeInsets.all(10.0),
        child:       
        FlatButton(//botao 
        child: Text("+12",
        style: TextStyle(color: Colors.white,fontSize: 40.0,),
        ),
        onPressed: () {
        _changenos(12); 
        },//colcar uma funçao aqui  
        ),
      ),


       Padding(
        padding:EdgeInsets.all(10.0),
        child:      
         FlatButton(
          child: Text("+12",
          style: TextStyle(color: Colors.white,fontSize: 40.0,),
          ),
        onPressed: () {
         _changeeles(12); 
        },//colcar uma funçao aqui  
        
         ),
      ),




    ],

  ),  
    


    Text ("$_winner", 
    style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold, fontSize: 30.0),
    
    ),
    
    FlatButton(
          child: Text("Zerar",
          style: TextStyle(color: Colors.white,fontSize: 40.0,),
          ),
        onPressed: () {
        _zerar(0);
        },//colcar uma funçao aqui  
        
         ),

  ],
  )
  ],

);
}
}
