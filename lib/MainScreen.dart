import 'package:flutter/material.dart';

class MainScreen  extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int index = 0;

  //list image view
  List imagePreviewImage = [
    {"image": "assets/The-Witcher.jpg", "title": "assets/The-Witcher-escrita.png", "color": Colors.orangeAccent},
    {"image": "assets/Narcos.jpg", "title": "assets/narcos-logo.png", "color": Colors.white},
    {"image": "assets/Dark.jpg", "title": "Dark", "color": Colors.white},
    {"image": "assets/Boys.jpg", "title": "assets/The-Boys.png", "color": Colors.white},
    {"image": "assets/Lucifer.jpg", "title": "assets/lucifer-escrita.png", "color": Colors.white},
  ];

  // list image popular
  List popularViewImage = [
    {"image": "assets/Sabrina.jpg"},
    {"image": "assets/The-Umbrella.jpg"},
    {"image": "assets/The-La-Casa.jpg"},
    {"image": "assets/DareDevil.jpg"},
    {"image": "assets/The-old-guard.jpeg"},
  ];

  //list image watch again
  List watchViewImage = [
    {"image": "assets/Tiger-king.jpg"},
    {"image": "assets/NCIS.jpg"},
    {"image": "assets/Mundo-Misterio.jpg"},
    {"image": "assets/The-Boys-capa.jpg"},
    {"image": "assets/Defenders.jpg"},
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: pageChange(),
      ),
      // menu de navegação da pagina principal
      bottomNavigationBar: SizedBox(
        height: 45,
        child: BottomNavigationBar(
          selectedItemColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          currentIndex: index,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 20, color: (index == 0) ? Colors.white : Colors.grey ),
              // ignore: deprecated_member_use
              title: Text("Home", style: TextStyle(fontSize: 8, color: (index == 0) ? Colors.white : Colors.grey ))
            ),
             BottomNavigationBarItem(
              icon: Icon(Icons.search, size: 20, color: (index == 0) ? Colors.white : Colors.grey ),
              // ignore: deprecated_member_use
              title: Text("Pesquisa", style: TextStyle(fontSize: 8, color: (index == 0) ? Colors.white : Colors.grey ))
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.queue_play_next, size: 20, color: (index == 0) ? Colors.white : Colors.grey ),
              // ignore: deprecated_member_use
              title: Text("Novidades", style: TextStyle(fontSize: 8, color: (index == 0) ? Colors.white : Colors.grey ))
            ),
             BottomNavigationBarItem(
              icon: Icon(Icons.file_download, size: 20, color: (index == 0) ? Colors.white : Colors.grey ),
              // ignore: deprecated_member_use
              title: Text("Download", style: TextStyle(fontSize: 8, color: (index == 0) ? Colors.white : Colors.grey ))
            ),
             BottomNavigationBarItem(
              icon: Icon(Icons.toc, size: 20, color: (index == 0) ? Colors.white : Colors.grey ),
              // ignore: deprecated_member_use
              title: Text("More", style: TextStyle(fontSize: 8, color: (index == 0) ? Colors.white : Colors.grey ))
            ),
          ],
          onTap: (int index) {
            setState(() {
              this.index = index;
            });
          },
        ),
      ),
    );
  }

  //handle event click page
  Widget pageChange(){
    if(this.index == 0){
      return widgetList();
    }
    return Container();
  }

  Widget widgetList(){
    return Column(
      children: [
        Stack(
          children: [
            //list view widget
            mainView(),
            headerMenu(),
            
          ],
        ),
        preview(),
        popularView(),
        watchView()
        
      ],
    );
  }

  //header menu
  Widget headerMenu(){
    return Positioned(
      child: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: Container(
          child: Image.asset("assets/netflix-logo.png", height: 30,),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 20, top:20),
              child: Text("Programas de TV", style: TextStyle(color: Colors.white, fontSize: 15)),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20, top:20),
              child: Text("Filmes", style: TextStyle(color: Colors.white, fontSize: 15)),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20, top:20),
              child: Text("My", style: TextStyle(color: Colors.white, fontSize: 15)),
            ),
          ],
        ),
      ),
    );
  }

  Widget mainView(){
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/Stranger-Things"),
          fit: BoxFit.cover
        ) 
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(),
          Padding(
            padding: EdgeInsets.only(top: 250),
            child: Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * .80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(2))
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center ,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/netflix-logo.png", height: 20, width: 20,),
                      Text("SERIES", style: TextStyle(color: Colors.grey,))
                    ],
                  ),
                  Text("STRANGER THINGS",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Ominous", style: TextStyle(color: Colors.grey)),
                        Padding(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              color: Colors.red
                            ),
                            height: 5, width: 5,
                          ),
                        ),
                        Text("Exciting", style: TextStyle(color: Colors.grey)),
                        Padding(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              color: Colors.red
                            ),
                            height: 5, width: 5,
                          ),  
                        ),
                        Text("Teen", style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 25, right:25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                             children: [
                               Icon(Icons.add, color: Colors.white),
                               Text("Minha Lista", style: TextStyle(color: Colors.grey, fontSize: 10))
                             ]
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(2)),
                              color: Colors.white
                            ),
                            child: Center(
                              child: InkWell(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(Icons.play_arrow),
                                    Text("Play", style: TextStyle(color: Colors.black, fontSize: 20),)
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.info_outline, color: Colors.white),
                              Text("Info", style: TextStyle(color: Colors.grey, fontSize: 10),)
                            ],
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget preview(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10, top: 10) ,
          child: Text("Preview", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        ),
        Container(
          height: 120,
          child: ListView.builder(
            itemCount: imagePreviewImage.length,
            padding: EdgeInsets.only(top: 10, left:10),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index){
              return Container(
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(imagePreviewImage[index]["image"])
                          )
                        ),
                      ),
                    ),
                    Padding(
                      padding:EdgeInsets.only(top: 5) ,
                      child: Align(
                        alignment: FractionalOffset.bottomCenter,
                        child: Container(
                          height: 17,
                          width: 100,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.8),
                                spreadRadius: 12,
                                blurRadius: 7,
                                offset: Offset(0,3)
                              ),
                            ]
                          ),
                          child: Image.asset(imagePreviewImage[index]["title"], width:10, height:10),
                        ),
                      ),
                    ),
                  ],
                ),
              );
           
            }),
          ),
      
      ],
    );
  }

  Widget popularView(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 10, left: 10),
          child: Text("Populares na Netflix", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
        ),
        Container(
          height: 150,
          child: ListView.builder(
            itemCount:  imagePreviewImage.length,
            padding: EdgeInsets.only(top: 10, left:10),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,index){
              return Container(
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 18),
                      child: Container(
                        height: 200,
                        width: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(popularViewImage[index]["image"])
                          )
                        )
                      ),
                      ),
                  ],
                ),
              );
            }
            ),
        )

      ],
      );

  }
  Widget watchView(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 10, left: 10),
          child: Text("Assista Denovo", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
        ),
        Container(
          height: 150,
          child: ListView.builder(
            itemCount:  imagePreviewImage.length,
            padding: EdgeInsets.only(top: 10, left:10),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,index){
              return Container(
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 18),
                      child: Container(
                        height: 200,
                        width: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(watchViewImage[index]["image"])
                          )
                        )
                      ),
                      ),
                  ],
                ),
              );
            }
            ),
        )

      ],
      );
  }
}