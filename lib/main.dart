import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: movie(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.cyan),
    
  ));
}

class movie extends StatelessWidget {
  List movies=["Drishyam 2","Justice League","Interstellar","The Godfather","Nayakan","Kerala Varma Pazhassi Raja",
  "The Dark Knight","Enthiran","Forrest Gump","Ayalum Njanum Thammil"];
  List type=["crime/drama","Action/Adventure","Sci-fi/Adventure"," Crime/Drama","Crime/Drama","Action/War","Action/Adventure"," Action/Sci-fi","Drama/Romance",
  "Romance/Thriller"];
  List pic = ["assets/img/d2.jpg","assets/img/justice.jpg","assets/img/intersteelar.jpg","assets/img/gd.jpg","assets/img/nayakan.jpg","assets/img/praj.jpg",
 "assets/img/dark.jpg","assets/img/enthiran.jpg","assets/img/fg.jpg","assets/img/ant.jpg" ];
  List year=["2021","2017","2014","1972","1987","2009","2008","2010","1994","2012"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Movies List",style: TextStyle(color: Colors.white),),),
      
        body: ListView.builder(
          itemCount: movies.length,
          itemBuilder: (BuildContext cntx, int index) {
      return Container(
        child: Card(
          child: ListTile(
            title: Text(movies[index]),
            subtitle: Text(type[index]),
            leading: Image(image: AssetImage(pic[index])),
            trailing: Text(year[index]),
          ),
        ),
      );
   
    }));
  }
}
