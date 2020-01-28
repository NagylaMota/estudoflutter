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
 int _people = 0;
 String   _infotext = "vaziu";
 
 void _chagepeople(int delta){
 setState(() {
  _people += delta;  
  if (_people < 0){
    _infotext = "vaziu";
    _people = 0;
  }
  if (_people > 9){
    _infotext = "cheio";
    _people = 10;
  }
  if ((_people < 9) && (_people > 0)){
    _infotext = "ha vagas";
  }
 });
}
  
  @override
  Widget build(BuildContext context){
    return Stack (
  children: <Widget>[
    
    Image.asset("images/plano-de-fundo.jpg",
    fit: BoxFit.cover,
    height: 1000.0,
    ),

    Column(//coluna alinhada ao centro
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
   
    Text ("pessoas:$_people ", 
    style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold,),
    ),
  
  Row(//linha para colocar os 2 botoes
     mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Padding(
        padding:EdgeInsets.all(10.0),
        child:       
        FlatButton(//botao 
        child: Text("+1",
        style: TextStyle(color: Colors.purple,fontSize: 40.0,),
        ),
        onPressed: () {
        _chagepeople(1); 
        },//colcar uma funçao aqui  
        ),
      ),

       Padding(
        padding:EdgeInsets.all(10.0),
        child:      
         FlatButton(
          child: Text("-1",
          style: TextStyle(color: Colors.purple,fontSize: 40.0,),
          ),
        onPressed: () {
         _chagepeople(-1); 
        },//colcar uma funçao aqui  
         ),
      ),



    ],

  ),

    Text ("$_infotext", 
    style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold, fontSize: 30.0),
    
    ),


  ],
  )
  ],

);
}
}
