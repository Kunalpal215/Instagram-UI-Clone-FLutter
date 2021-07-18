import 'dart:html';

import 'package:flutter/material.dart';
import 'mainpage.dart';

class dm extends StatefulWidget {
  const dm({Key? key}) : super(key: key);

  @override
  _dmState createState() => _dmState();
}

class _dmState extends State<dm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){},icon: Icon(Icons.arrow_back_ios,color: Colors.black,),),
        title: Container(
          margin: EdgeInsets.fromLTRB(40, 0, 0, 0),
          child: Row(
            children: [
              Icon(Icons.arrow_drop_down,color: Colors.black,),
              Text('jacob_w',style: TextStyle(color: Colors.black),)
            ],
          ),
        ),
        centerTitle: true,
        actions: [
          Container(margin: EdgeInsets.fromLTRB(0, 0, 10, 0),child: IconButton(onPressed: (){}, icon: Icon(Icons.add,color: Colors.black,size: 35,)))
        ],
      ),
      body: Column(
        children: [
          Column(
            children: [
              ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [Divider(),
                Padding(padding: EdgeInsets.all(1.0)),
                Container(margin: EdgeInsets.fromLTRB(5, 0, 5, 0),child: TextField(decoration: InputDecoration(filled: true,fillColor: Colors.grey[200],border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),prefixIcon: Icon(Icons.search),hintText: 'Search'),)),
                Padding(padding: EdgeInsets.all(3.0)),
                ListTile(
                  leading: CircleAvatar(radius: 30,backgroundImage: AssetImage('assets/image5.jpg')),
                  title: Text('George'),
                  subtitle: Text('Have a nice day !',style: TextStyle(fontWeight: FontWeight.w400),),
                  trailing: Container(height: 40,width: 72,child: Row(children: [ Container(margin: EdgeInsets.fromLTRB(0, 10, 0, 0),child: Text('-now',style: TextStyle(fontWeight: FontWeight.w400),)),IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined,size: 25,))],),),
                ),
                Divider(),
                ListTile(
                  leading: CircleAvatar(radius: 30,backgroundImage: AssetImage('assets/image7.jpg')),
                  title: Text('Havana'),
                  subtitle: Text('Have a nice day !',style: TextStyle(fontWeight: FontWeight.w400),),
                  trailing: Container(height: 40,width: 72,child: Row(children: [ Container(margin: EdgeInsets.fromLTRB(0, 10, 0, 0),child: Text('-now',style: TextStyle(fontWeight: FontWeight.w400),)),IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined,size: 25,))],),),
                ),
                Divider(),
                ListTile(
                  leading: CircleAvatar(radius: 30,backgroundImage: AssetImage('assets/new.jpg')),
                  title: Text('Clean Bandit'),
                  subtitle: Text('Have a nice day !',style: TextStyle(fontWeight: FontWeight.w400),),
                  trailing: Container(height: 40,width: 72,child: Row(children: [ Container(margin: EdgeInsets.fromLTRB(0, 10, 0, 0),child: Text('-now',style: TextStyle(fontWeight: FontWeight.w400),)),IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined,size: 25,))],),),
                ),
                Divider(),
                ListTile(
                  leading: CircleAvatar(radius: 30,backgroundImage: AssetImage('assets/image1.jpg')),
                  title: Text('Crystal'),
                  subtitle: Text('Have a nice day !',style: TextStyle(fontWeight: FontWeight.w400),),
                  trailing: Container(height: 40,width: 72,child: Row(children: [ Container(margin: EdgeInsets.fromLTRB(0, 10, 0, 0),child: Text('-now',style: TextStyle(fontWeight: FontWeight.w400),)),IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined,size: 25,))],),),
                ),
                Divider(),
                ListTile(
                  leading: CircleAvatar(radius: 30,backgroundImage: AssetImage('assets/image8.jpg')),
                  title: Text('AngelDevil'),
                  subtitle: Text('Have a nice day !',style: TextStyle(fontWeight: FontWeight.w400),),
                  trailing: Container(height: 40,width: 72,child: Row(children: [ Container(margin: EdgeInsets.fromLTRB(0, 10, 0, 0),child: Text('-now',style: TextStyle(fontWeight: FontWeight.w400),)),IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined,size: 25,))],),),
                ),
                Divider(),
                ListTile(
                  leading: CircleAvatar(radius: 30,backgroundImage: AssetImage('assets/image3.jpg')),
                  title: Text('PubG'),
                  subtitle: Text('Have a nice day !',style: TextStyle(fontWeight: FontWeight.w400),),
                  trailing: Container(height: 40,width: 72,child: Row(children: [ Container(margin: EdgeInsets.fromLTRB(0, 10, 0, 0),child: Text('-now',style: TextStyle(fontWeight: FontWeight.w400),)),IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined,size: 25,))],),),
                ),
              ],
            ),]
          ),
          Container(width: MediaQuery.of(context).size.width,height: 42,child: ElevatedButton.icon(onPressed: (){},style: ElevatedButton.styleFrom(primary: Colors.white), icon: Icon(Icons.camera_alt_rounded,color: Colors.lightBlue,), label: Text('Camera',style: TextStyle(color: Colors.lightBlue),)))
        ],
      ),
    );
  }
}
