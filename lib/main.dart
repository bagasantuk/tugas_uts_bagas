import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
    final appTitle = ' Penjahit Kota Yogyakarta ';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
} //TODO : pada class MyApp diatas adalah digunakan untuk AppBar aplikasi dengan isi Title Penjahit Kota Yogyakarta.debugShowCheckedModeBanner: false, digunakan untuk menghilangkan tulisan Demo pada app bar

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue,
        title : new Text("List Penjahit")
      ),
       body : new ListView(
         children: <Widget>[
           new ListTile(
             leading: new Image(image: NetworkImage("https://ae01.alicdn.com/kf/HTB1L1e3PFXXXXXBaXXXq6xXFXXXm/15-8-cm-8-6-cm-Mesin-Jahit-Busana-Mobil-Styling-Dekorasi-Mobil-Sticker-Vinyl-Hitam.jpg"),width: 100.0,),
             title: new Text("Jessie Tailor"),
             subtitle:new Text("Buka jam 09:00-19.00"),
            onTap: (){
               Navigator.push(
                 context,
                 MaterialPageRoute(builder:(context) =>Appku()),
               );
}
           ),
           new ListTile(
           leading: new Image(image: NetworkImage("https://ae01.alicdn.com/kf/HTB1L1e3PFXXXXXBaXXXq6xXFXXXm/15-8-cm-8-6-cm-Mesin-Jahit-Busana-Mobil-Styling-Dekorasi-Mobil-Sticker-Vinyl-Hitam.jpg"),width: 100.0,),
             title: new Text("Lovita Penjahit"),
             subtitle:new Text("Buka jam 09:00-19.00"),
               onTap: (){
                 Navigator.push(
                   context,
                   MaterialPageRoute(builder:(context) =>Appku()),
                 );
               }
           ),
           new ListTile(
             leading: new Image(image: NetworkImage("https://ae01.alicdn.com/kf/HTB1L1e3PFXXXXXBaXXXq6xXFXXXm/15-8-cm-8-6-cm-Mesin-Jahit-Busana-Mobil-Styling-Dekorasi-Mobil-Sticker-Vinyl-Hitam.jpg"),width: 100.0,),
             title: new Text("Tiara Modiste"),
             subtitle:new Text("Buka jam 09:00-19.00"),
               onTap: (){
                 Navigator.push(
                   context,
                   MaterialPageRoute(builder:(context) =>Appku()),
                 );
               }
               ),
           new ListTile(
             leading: new Image(image: NetworkImage("https://ae01.alicdn.com/kf/HTB1L1e3PFXXXXXBaXXXq6xXFXXXm/15-8-cm-8-6-cm-Mesin-Jahit-Busana-Mobil-Styling-Dekorasi-Mobil-Sticker-Vinyl-Hitam.jpg"),width: 100.0,),
             title: new Text("Penjahit Sumber Rejeki"),
             subtitle:new Text("Buka jam 09:00-19.00"),
               onTap: (){
                 Navigator.push(
                   context,
                   MaterialPageRoute(builder:(context) =>Appku()),
                 );
               }
           ),
           new ListTile(
             leading: new Image(image: NetworkImage("https://ae01.alicdn.com/kf/HTB1L1e3PFXXXXXBaXXXq6xXFXXXm/15-8-cm-8-6-cm-Mesin-Jahit-Busana-Mobil-Styling-Dekorasi-Mobil-Sticker-Vinyl-Hitam.jpg"),width: 100.0,),
             title: new Text("Farma Tailor"),
             subtitle:new Text("Buka jam 09:00-19.00"),
               onTap: (){
                 Navigator.push(
                   context,
                   MaterialPageRoute(builder:(context) =>Appku()),
                 );
               }
           ),
         ]
         )
       );
  }

}
//TODO : pada class Home digunakan untuk menampilkan listview dengan judul/title List Penjahit, kemudian erdapat 5 list yang berisikan gambar, nama toko penjahit, jam buka & tutup. ketika meng-klik listview tersebut akan berpindah halaman menuju ke class Appku yang berisikan Tabs dengan perintah onTap.

class Appku extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
            title: Text('Rute'),
          ),
          body: TabBarView(
            children: [
              SnackBarPage(),
              FirstRoute(),
            ],
          ),
        ),
      ),
    );
  }
}
//TODO : pada class Appku ini terdapat judul/title Rute yang berisi 2 tabs terdiri dari directions car yang menuju ke class SnackBarPage dan Tabs bike menuju FirstRoute

class SnackBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () {
          final snackBar = SnackBar(
            content: Text('Yay! A SnackBar!'),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
                // Some code to undo the change.
              },
            ),
          );

          // Find the Scaffold in the widget tree and use
          // it to show a SnackBar.
          Scaffold.of(context).showSnackBar(snackBar);
        },
        child: Text('Show SnackBar'),
      ),
    );
  }
}
//TODO : pada class SnackbarPage berisi sebuah tombol RaisedButton dengan perintah onPressed berisi konten 'Yay! A SnackBar!' dengan actiion SnackBarAction berlaber Undo menggunakan fungsi onPressed, jika mengeklik tombol tersebut.

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Open route'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondRoute()),
            );
          },
        ),
      ),
    );
  }
}
//TODO : pada class FirstRoute terdapat tombol RaisedButton berlabel Open route, ketika di klik akan menuju ke class SecondRoute dengan peritah onPressed Navigator.push

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context,
              MaterialPageRoute(builder: (context) => Home()),);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}
//TODO : pada class SecondRoute terdapat tombol RaisedButton berlabel Go back!, ketika di klik akan menuju ke class Home dengan perintah onPressed: () {
//            Navigator.pop(context,
//              MaterialPageRoute(builder: (context) => Home()),);

class Tentang extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("Tentang Aplikasi"),
    ),
    body: Center(
    ),
    );
  }
}
//TODO : pada class Tentang hanya berisi halaman kosong dengan header Tentang Aplikasi.

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Home(),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Selamat Datang di Kang Jait'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('HOME'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('TENTANG'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder:(context) =>Tentang()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
//TODO : pada class MyHomePage berisi drawer dengan header bertuliskan Selamat Datang di Kang Jait yang terdapat list HOME yang jika di klik akan ke home dan TENTANG jika diklik akan menuju ke class Tentang.
}

