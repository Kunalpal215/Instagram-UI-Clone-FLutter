import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'DM.dart';

class Mainpage extends StatefulWidget {

  @override
  _MainpageState createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  int _currentIndex=0;
  final List pages=[
    Center(child:Text('search')),
    Center(child:Text('like')),
    Center(child:Text('profile')),
    Center(child:Text('home')),
  ];
  @override
  Widget build(BuildContext context) {
    //every page must be a scaffold
    return Scaffold(
      appBar: getAppBar(),
      body: getAppBody(),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedIconTheme: IconThemeData(color: Colors.black),
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.black,
                size: 35,
              ),
              activeIcon: Icon(Icons.home,size: 35),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined, color: Colors.black,size: 35),label: '',activeIcon: Icon(Icons.search,size: 38),),
          BottomNavigationBarItem(
              icon: Icon(Icons.add, color: Colors.black,size: 35), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined, color: Colors.black,size: 35),
              label: '',activeIcon: Icon(Icons.favorite,size: 35,)),
          BottomNavigationBarItem(
            icon: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/image4.jpg')
                )
              ),
            ),
            activeIcon: Container(
              height: 38,
              width: 38,
    decoration: BoxDecoration(
      color: Colors.black,
    shape: BoxShape.circle,
    // image: DecorationImage(
    // image: AssetImage('assets/image4.jpg')
    // ),
            ),
              child: Container(
                height: 36,
                width: 36,
                margin: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/image4.jpg')
                  )
                ),
              ),
            ),
            label:''
          )
        ],
        onTap: (index){
          setState(() {
            _currentIndex=index;
          });
        },
      ),
    );
  }
  AppBar getAppBar(){
    if(_currentIndex==0){
      return AppBar(
        backgroundColor: Colors.white,
        elevation: 0.9,
        shadowColor: Colors.black,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.camera_alt_outlined,
              size: 32.96,
              color: Colors.black,
            )),
        title: Padding(
          padding:
          EdgeInsets.fromLTRB(40, 0, 4.12, 0),
          child: Image.asset(
            'assets/insta.png',
            height: 45,
          ),
        ),
        actions: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.532),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.live_tv,
                    size: 30.9,
                    color: Colors.black,
                  ))),
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>dm()));
              },
              icon: Icon(
                Icons.send_rounded,
                size: 30.9,
                color: Colors.black,
              ))
        ],
      );
    }
    else if(_currentIndex==1){
      return AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leadingWidth: 0.0,
        toolbarHeight: 95,
    //   title: Container(
    //     height: 45,
    //     width: MediaQuery.of(context).size.width-40,
    //     child: TextField(
    //     decoration: InputDecoration(
    //       filled: true,
    //       fillColor: Colors.grey[200],
    //       prefixIcon: Icon(Icons.search),
    //       border: OutlineInputBorder(
    //         borderRadius: BorderRadius.circular(10.0)
    //       ),
    //       hintText: 'Search'
    // ),
    //     ),
    //   ),
    //     // centerTitle: false,
    //     leadingWidth: 0.0,
    //     actions: [
    //       Icon(Icons.home,color: Colors.black,size: 35)
    //     ],
        flexibleSpace: Column(
          children: [
            Row(
              children: [Container(
                height:45,
                margin: EdgeInsets.fromLTRB(5, 5, 0, 0),
                width: MediaQuery.of(context).size.width-82,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.black)
                    ),
                    hintText: 'Search'
                  )
                )
              ),
                Padding(padding: EdgeInsets.fromLTRB(3, 0, 0, 6),child: IconButton(onPressed: (){}, icon: Icon(Icons.settings_overscan_sharp,size: 30,color: Colors.black,)))
              ]
            ),
            Padding(padding: EdgeInsets.all(3.0)),
            Container(
              height: 30,
              child: ListView(shrinkWrap: true,scrollDirection: Axis.horizontal,
                children: [

                      Container(margin: EdgeInsets.fromLTRB(5, 0, 5, 0),child: ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.tv,color: Colors.black,), label: Text('IGTV',style: TextStyle(color: Colors.black)),style: ElevatedButton.styleFrom(elevation: 0.0,primary: Colors.white,side: BorderSide(color: Colors.grey)),)),
                      Container(margin: EdgeInsets.fromLTRB(5, 0, 5, 0),child: ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.shopping_bag,color: Colors.black,), label: Text('Shop',style: TextStyle(color: Colors.black)),style: ElevatedButton.styleFrom(elevation: 0.0,primary: Colors.white, side: BorderSide(color: Colors.grey)))),
                      Container(margin: EdgeInsets.fromLTRB(5, 0, 5, 0),child: ElevatedButton(onPressed: (){}, child: Text('Style',style: TextStyle(color: Colors.black)),style: ElevatedButton.styleFrom(elevation: 0.0,primary: Colors.white, side: BorderSide(color: Colors.grey)))),
                  Container(margin: EdgeInsets.fromLTRB(5, 0, 5, 0),child: ElevatedButton(onPressed: (){}, child: Text('Sports',style: TextStyle(color: Colors.black)),style: ElevatedButton.styleFrom(elevation: 0.0,primary: Colors.white, side: BorderSide(color: Colors.grey)))),
                  Container(margin: EdgeInsets.fromLTRB(5, 0, 5, 0),child: ElevatedButton(onPressed: (){}, child: Text('Auto',style: TextStyle(color: Colors.black)),style: ElevatedButton.styleFrom(elevation: 0.0,primary: Colors.white, side: BorderSide(color: Colors.grey)))),
                  Container(margin: EdgeInsets.fromLTRB(5, 0, 5, 0),child: ElevatedButton(onPressed: (){}, child: Text('Fashion',style: TextStyle(color: Colors.black)),style: ElevatedButton.styleFrom(elevation: 0.0,primary: Colors.white, side: BorderSide(color: Colors.grey)))),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.all(3.0))
          ],
        ),
      );
    }
    else if(_currentIndex==4){
      return AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Container(margin: EdgeInsets.fromLTRB(55, 0, 0, 0),child: Row(children: [Icon(Icons.lock_rounded,size:18,color: Colors.black,),Text('Jacob_w',style: TextStyle(color: Colors.black)),Icon(Icons.arrow_drop_down,color: Colors.black,)])),
          centerTitle: true,
      );
    }
    else{
      return AppBar();
    }
  }
  Widget getAppBody(){
    if(_currentIndex==0){
      return ListView(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
            child: Container(
              // margin: EdgeInsets.fromLTRB(0, 0, 0, 18),
              height: 90,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(4.12, 0, 0, 0),
                    child: Column(
                      children: [
                        Container(
                            height: 68.4,
                            width: 68.4,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: <Color>[
                                  Color(0xFF9B2282),
                                  Color(0XFFEEA863)
                                ],
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(3.42),
                              child: Container(
                                height: 54.72,
                                width: 54.72,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  // image: DecorationImage(image: AssetImage('assets/image4.jpg')),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(4.104),
                                  child: Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/image4.jpg')))),
                                ),
                              ),
                            )),
                        Text('Your Story')
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(4.12, 0, 0, 0),
                    child: Column(
                      children: [
                        Container(
                            height: 68.4,
                            width: 68.4,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: <Color>[
                                  Color(0xFF9B2282),
                                  Color(0XFFEEA863)
                                ],
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(3.42),
                              child: Container(
                                height: 54.72,
                                width: 54.72,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(4.104),
                                  child: Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/image1.jpg')))),
                                ),
                              ),
                            )),
                        Text('Christy')
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(4.12, 0, 0, 0),
                    child: Column(
                      children: [
                        Container(
                            height: 68.4,
                            width: 68.4,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: <Color>[
                                  Color(0xFF9B2282),
                                  Color(0XFFEEA863)
                                ],
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(3.42),
                              child: Container(
                                height: 54.72,
                                width: 54.72,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(4.104),
                                  child: Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/image6.jpg')))),
                                ),
                              ),
                            )),
                        Text('Danny')
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(4.12, 0, 0, 0),
                    child: Column(
                      children: [
                        Container(
                            height: 68.4,
                            width: 68.4,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: <Color>[
                                  Color(0xFF9B2282),
                                  Color(0XFFEEA863)
                                ],
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(3.42),
                              child: Container(
                                height: 54.72,
                                width: 54.72,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(4.104),
                                  child: Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/new.jpg')))),
                                ),
                              ),
                            )),
                        Text('Mr_man')
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(4.12, 0, 0, 0),
                    child: Column(
                      children: [
                        Container(
                            height: 68.4,
                            width: 68.4,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: <Color>[
                                  Color(0xFF9B2282),
                                  Color(0XFFEEA863)
                                ],
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(3.42),
                              child: Container(
                                height: 54.72,
                                width: 54.72,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(4.104),
                                  child: Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/image7.jpg')))),
                                ),
                              ),
                            )),
                        Text('Angela')
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(4.12, 0, 0, 0),
                    child: Column(
                      children: [
                        Container(
                            height: 68.4,
                            width: 68.4,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: <Color>[
                                  Color(0xFF9B2282),
                                  Color(0XFFEEA863)
                                ],
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(3.42),
                              child: Container(
                                height: 54.72,
                                width: 54.72,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(4.104),
                                  child: Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/image8.jpg')))),
                                ),
                              ),
                            )),
                        Text('Petsy')
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(4.12, 0, 0, 0),
                    child: Column(
                      children: [
                        Container(
                            height: 68.4,
                            width: 68.4,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: <Color>[
                                  Color(0xFF9B2282),
                                  Color(0XFFEEA863)
                                ],
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(3.42),
                              child: Container(
                                height: 54.72,
                                width: 54.72,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(4.104),
                                  child: Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/image3.jpg')))),
                                ),
                              ),
                            )),
                        Text('Andrea')
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(4.12, 0, 0, 0),
                    child: Column(
                      children: [
                        Container(
                            height: 68.4,
                            width: 68.4,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: <Color>[
                                  Color(0xFF9B2282),
                                  Color(0XFFEEA863)
                                ],
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(3.42),
                              child: Container(
                                height: 54.72,
                                width: 54.72,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(4.104),
                                  child: Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/image5.jpg')))),
                                ),
                              ),
                            )),
                        Text('John')
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Divider(
            height: 10,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/image3.jpg'),
              radius: 23,
            ),
            title: Text('Lorem Ipsum', style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text('Los angles, America',
                style: TextStyle(fontWeight: FontWeight.w600)),
            trailing: Icon(Icons.more_vert_rounded, color: Colors.black),
          ),
          Image(image: AssetImage('assets/post2.png')),
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('You Have Liked the Post',
                          style: TextStyle(
                              color: Colors.lightBlue,
                              fontSize: 17,
                              fontWeight: FontWeight.w600)),
                      elevation: 0.9,
                      padding: EdgeInsets.fromLTRB(100, 0, 0, 0),
                      backgroundColor: Colors.white,
                    ));
                  },
                  padding: EdgeInsets.fromLTRB(
                      16.48, 0, 8.24, 0),
                  icon: Icon(Icons.favorite_outline_outlined),
              ),
              IconButton(
                  onPressed: () {},
                  padding: EdgeInsets.symmetric(horizontal: 8.24),
                  icon: Icon(Icons.comment)),
              IconButton(
                  onPressed: () {},
                  padding: EdgeInsets.symmetric(horizontal: 8.24),
                  icon: Icon(Icons.send_rounded))
            ],
          ),
          Container(
              margin: EdgeInsets.fromLTRB(11.536, 0, 0, 0),
              child: Text(
                'Lorem Ipsum Lorem Ipsum Wonderful !',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16.0),
              )
          ),
          Divider(
            height: 10,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/image5.jpg'),
              radius: 23,
            ),
            title: Text('Mao', style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text('Los angles, America',
                style: TextStyle(fontWeight: FontWeight.w600)),
            trailing: Icon(Icons.more_vert_rounded, color: Colors.black),
          ),
          Image(image: AssetImage('assets/post3.png')),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('You Have Liked the Post',
                        style: TextStyle(
                            color: Colors.lightBlue,
                            fontSize: 17,
                            fontWeight: FontWeight.w600)),
                    elevation: 0.9,
                    padding: EdgeInsets.fromLTRB(100, 0, 0, 0),
                    backgroundColor: Colors.white,
                  ));
                },
                padding: EdgeInsets.fromLTRB(
                    16.48, 0, 8.24, 0),
                icon: Icon(Icons.favorite_outline_outlined),
              ),
              IconButton(
                  onPressed: () {},
                  padding: EdgeInsets.symmetric(horizontal: 8.24),
                  icon: Icon(Icons.comment)),
              IconButton(
                  onPressed: () {},
                  padding: EdgeInsets.symmetric(horizontal: 8.24),
                  icon: Icon(Icons.send_rounded))
            ],
          ),
          Container(
              margin: EdgeInsets.fromLTRB(11.536, 0, 0, 0),
              child: Text(
                'Mao Lorem Ipsum !',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16.0),
              )
          ),
          Divider(
            height: 10,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/image5.jpg'),
              radius: 23,
            ),
            title: Text('Lorem', style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text('Los angles, America',
                style: TextStyle(fontWeight: FontWeight.w600)),
            trailing: Icon(Icons.more_vert_rounded, color: Colors.black),
          ),
          Image(image: AssetImage('assets/post4.png')),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('You Have Liked the Post',
                        style: TextStyle(
                            color: Colors.lightBlue,
                            fontSize: 17,
                            fontWeight: FontWeight.w600)),
                    elevation: 0.9,
                    padding: EdgeInsets.fromLTRB(100, 0, 0, 0),
                    backgroundColor: Colors.white,
                  ));
                },
                padding: EdgeInsets.fromLTRB(
                    16.48, 0, 8.24, 0),
                icon: Icon(Icons.favorite_outline_outlined),
              ),
              IconButton(
                  onPressed: () {},
                  padding: EdgeInsets.symmetric(horizontal: 8.24),
                  icon: Icon(Icons.comment)),
              IconButton(
                  onPressed: () {},
                  padding: EdgeInsets.symmetric(horizontal: 8.24),
                  icon: Icon(Icons.send_rounded))
            ],
          ),
          Container(
              margin: EdgeInsets.fromLTRB(11.536, 0, 0, 0),
              child: Text(
                'Lorem Ipsum Lorem Great !',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16.0),
              )
          ),
          Divider(
            height: 10,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/image6.jpg'),
              radius: 23,
            ),
            title: Text('Lorem', style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text('Los angles, America',
                style: TextStyle(fontWeight: FontWeight.w600)),
            trailing: Icon(Icons.more_vert_rounded, color: Colors.black),
          ),
          Image(image: AssetImage('assets/post5.png')),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('You Have Liked the Post',
                        style: TextStyle(
                            color: Colors.lightBlue,
                            fontSize: 17,
                            fontWeight: FontWeight.w600)),
                    elevation: 0.9,
                    padding: EdgeInsets.fromLTRB(100, 0, 0, 0),
                    backgroundColor: Colors.white,
                  ));
                },
                padding: EdgeInsets.fromLTRB(
                    16.48, 0, 8.24, 0),
                icon: Icon(Icons.favorite_outline_outlined),
              ),
              IconButton(
                  onPressed: () {},
                  padding: EdgeInsets.symmetric(horizontal: 8.24),
                  icon: Icon(Icons.comment)),
              IconButton(
                  onPressed: () {},
                  padding: EdgeInsets.symmetric(horizontal: 8.24),
                  icon: Icon(Icons.send_rounded))
            ],
          ),
          Container(
              margin: EdgeInsets.fromLTRB(11.536, 0, 0, 0),
              child: Text(
                'Lorem This Video was great !',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16.0),
              )
          ),
          Divider(
            height: 10,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/new.jpg'),
              radius: 23,
            ),
            title: Text('Joe', style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text('Los angles, America',
                style: TextStyle(fontWeight: FontWeight.w600)),
            trailing: Icon(Icons.more_vert_rounded, color: Colors.black),
          ),
          Image(image: AssetImage('assets/post1.png')),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('You Have Liked the Post',
                        style: TextStyle(
                            color: Colors.lightBlue,
                            fontSize: 17,
                            fontWeight: FontWeight.w600)),
                    elevation: 0.9,
                    padding: EdgeInsets.fromLTRB(100, 0, 0, 0),
                    backgroundColor: Colors.white,
                  ));
                },
                padding: EdgeInsets.fromLTRB(
                    16.48, 0, 8.24, 0),
                icon: Icon(Icons.favorite_outline_outlined),
              ),
              IconButton(
                  onPressed: () {},
                  padding: EdgeInsets.symmetric(horizontal: 8.24),
                  icon: Icon(Icons.comment)),
              IconButton(
                  onPressed: () {},
                  padding: EdgeInsets.symmetric(horizontal: 8.24),
                  icon: Icon(Icons.send_rounded))
            ],
          ),
          Container(
              margin: EdgeInsets.fromLTRB(11.536, 0, 0, 0),
              child: Text(
                'Joe This Video was great !',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16.0),
              )
          ),
          Divider(
            height: 10,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/image1.jpg'),
              radius: 23,
            ),
            title: Text('XYZ', style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text('Los angles, America',
                style: TextStyle(fontWeight: FontWeight.w600)),
            trailing: Icon(Icons.more_vert_rounded, color: Colors.black),
          ),
          Image(image: AssetImage('assets/post8.png')),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('You Have Liked the Post',
                        style: TextStyle(
                            color: Colors.lightBlue,
                            fontSize: 17,
                            fontWeight: FontWeight.w600)),
                    elevation: 0.9,
                    padding: EdgeInsets.fromLTRB(100, 0, 0, 0),
                    backgroundColor: Colors.white,
                  ));
                },
                padding: EdgeInsets.fromLTRB(
                    16.48, 0, 8.24, 0),
                icon: Icon(Icons.favorite_outline_outlined),
              ),
              IconButton(
                  onPressed: () {},
                  padding: EdgeInsets.symmetric(horizontal: 8.24),
                  icon: Icon(Icons.comment)),
              IconButton(
                  onPressed: () {},
                  padding: EdgeInsets.symmetric(horizontal: 8.24),
                  icon: Icon(Icons.send_rounded))
            ],
          ),
          Container(
              margin: EdgeInsets.fromLTRB(11.536, 0, 0, 0),
              child: Text(
                'XYZ This Video was great !',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16.0),
              )
          ),
          Divider(
            height: 10,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/image8.jpg'),
              radius: 23,
            ),
            title: Text('Mac', style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text('Los angles, America',
                style: TextStyle(fontWeight: FontWeight.w600)),
            trailing: Icon(Icons.more_vert_rounded, color: Colors.black),
          ),
          Image(image: AssetImage('assets/post9.png')),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('You Have Liked the Post',
                        style: TextStyle(
                            color: Colors.lightBlue,
                            fontSize: 17,
                            fontWeight: FontWeight.w600)),
                    elevation: 0.9,
                    padding: EdgeInsets.fromLTRB(100, 0, 0, 0),
                    backgroundColor: Colors.white,
                  ));
                },
                padding: EdgeInsets.fromLTRB(
                    16.48, 0, 8.24, 0),
                icon: Icon(Icons.favorite_outline_outlined),
              ),
              IconButton(
                  onPressed: () {},
                  padding: EdgeInsets.symmetric(horizontal: 8.24),
                  icon: Icon(Icons.comment)),
              IconButton(
                  onPressed: () {},
                  padding: EdgeInsets.symmetric(horizontal: 8.24),
                  icon: Icon(Icons.send_rounded))
            ],
          ),
          Container(
              margin: EdgeInsets.fromLTRB(11.536, 0, 0, 0),
              child: Text(
                'Mac This Video was great !',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16.0),
              )
          ),
        ],
      );
    }
    else if(_currentIndex==1){
      return GridView.count(crossAxisCount: 3,
          mainAxisSpacing: 3.0,
          crossAxisSpacing: 3.0,
          children: [
            Image(image: AssetImage('assets/post1.png')),
            Image(image: AssetImage('assets/post2.png')),
            Image(image: AssetImage('assets/post3.png')),
            Image(image: AssetImage('assets/post4.png')),
            Image(image: AssetImage('assets/image3.jpg')),
            Image(image: AssetImage('assets/post5.png')),
            Image(image: AssetImage('assets/post6.png')),
            Image(image: AssetImage('assets/post7.png')),
            Image(image: AssetImage('assets/post8.png')),
            Image(image: AssetImage('assets/image5.jpg')),
            Image(image: AssetImage('assets/post8.png')),
            Image(image: AssetImage('assets/post9.png')),
            Image(image: AssetImage('assets/image7.jpg')),
            Image(image: AssetImage('assets/image6.jpg')),
          ],
      );
    }
    else if(_currentIndex==4){
      return ListView(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(10, 20, 11, 10),
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.lightBlue,
                    // image: DecorationImage(
                    //   image: AssetImage('assets/image4.jpg')
                    // )
                  ),
                  child: Container(
                    height: 70,
                    width: 70,
                    margin: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Container(
                      height: 60,
                        width: 60,
                        margin: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage('assets/image4.jpg')
                            )
                        )
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(margin: EdgeInsets.fromLTRB(0, 0, 0, 3),child: Text('54',style: TextStyle(fontSize: 20),)),
                    Container(margin: EdgeInsets.fromLTRB(0, 0, 0, 0),child: Text('Posts',style: TextStyle(fontSize: 16),)),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(margin: EdgeInsets.fromLTRB(20, 0, 0, 3),child: Text('864',style: TextStyle(fontSize: 20),)),
                    Container(margin: EdgeInsets.fromLTRB(20, 0, 0, 0),child: Text('Followers',style: TextStyle(fontSize: 16),)),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(margin: EdgeInsets.fromLTRB(20, 0, 0, 3),child: Text('162',style: TextStyle(fontSize: 20),)),
                    Container(margin: EdgeInsets.fromLTRB(20, 0, 0, 0),child: Text('Following',style: TextStyle(fontSize: 16),)),
                  ],
                ),
              ],
            ),
            Container(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 3),
                child: Text('Jacob West')
            ),
            Container(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 3),
                child: Text('NOOB Android Developer @NotYetWorking')
            ),
            Container(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 10),
                child: Text('Everyone is a developer')
            ),
            Container(
              height: 35,
              width: 120,
              margin: EdgeInsets.fromLTRB(15, 0, 15, 10),
              child: TextButton(
                onPressed: (){},
                child: Text('Edit Profile',style: TextStyle(color: Colors.black)),
                style: TextButton.styleFrom(
                    backgroundColor: Colors.white70,
                    side: BorderSide(width: 0.5,color: Colors.black54)
                ),
              ),
            ),
            Column(
              children: [GridView.count(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 3,
                  mainAxisSpacing: 3.0,
                  crossAxisSpacing: 3.0,
                  children: [
                    Image(image: AssetImage('assets/post1.png')),
                    Image(image: AssetImage('assets/post2.png')),
                    Image(image: AssetImage('assets/post3.png')),
                    Image(image: AssetImage('assets/post4.png')),
                    Image(image: AssetImage('assets/image3.jpg')),
                    Image(image: AssetImage('assets/post5.png')),
                    Image(image: AssetImage('assets/post6.png')),
                    Image(image: AssetImage('assets/post7.png')),
                    Image(image: AssetImage('assets/post8.png')),
                    Image(image: AssetImage('assets/image5.jpg')),
                    Image(image: AssetImage('assets/post8.png')),
                    Image(image: AssetImage('assets/post9.png')),
                    Image(image: AssetImage('assets/image7.jpg')),
                    Image(image: AssetImage('assets/image6.jpg')),
                  ],
    ),
          ]),
    ]
      );
    }
    else{
      return Container();
    }
  }


}


