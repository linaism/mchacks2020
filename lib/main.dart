import 'package:flutter/material.dart';
// import 'fade_route.dart';

void main() => runApp(MyApp());

class MyCustomRoute<T> extends MaterialPageRoute<T> {
  MyCustomRoute({ WidgetBuilder builder, RouteSettings settings })
      : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child) {
    if (settings.isInitialRoute)
      return child;
    // Fades between routes. (If you don't want any animation,
    // just return child.)
    return new FadeTransition(opacity: animation, child: child);
  }
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext ctxt) {
    
    return new MaterialApp(
      home: new HomeScreen(),
      theme: ThemeData(
        brightness:     Brightness.light,
        primaryColor:   Colors.green,
        accentColor:    Colors.green,
        fontFamily: 'Roboto',

      )
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build (BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("RecyclABLE")
      ),
      body: Center(
          child: Column(
            
            children: <Widget>[

              Center(
                child: 
                Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: 
                    Text("\n\n\n",style: 
                      new TextStyle(
                        fontSize: 30.0,
                        color: Colors.green,
                      )
                    )
                )
              ),
              
              FlatButton(
                onPressed: () {
                    Navigator.push(
                        ctxt,
                        new MyCustomRoute(builder: (ctxt) => new SoiledScreen()),
                    );
                  },
                shape: RoundedRectangleBorder(
                 borderRadius: new BorderRadius.circular(18.0),
                 side: BorderSide(color: Colors.grey)
                ),
                color: Colors.white,
                padding: EdgeInsets.all(20.0),
                
                child: Text("Start!", style: 
                    new TextStyle(
                      fontSize: 30.0,
                      color: Colors.green,
                    ),
                  ),
                ),
              /*
              IconButton(
                icon: Icon(Icons.check),
                tooltip: 'Start',
                onPressed: () {
                    Navigator.push(
                        ctxt,
                        new MyCustomRoute(builder: (ctxt) => new SoiledScreen()),
                    );
                },
              )*/
            ]
          )
        )
      );
  }
}

class SoiledScreen extends StatelessWidget {
  @override
  Widget build (BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("RecyclABLE"),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                  Center(
                    child: 
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                      child: 
                        Text("Is the item soiled\n(with food waste, dirt, dust, or any other residue)?",style: 
                          new TextStyle(
                            fontSize: 20.0,
                            color: Colors.green,
                          )
                        )
                    )
                  ),
                  FlatButton(
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MyCustomRoute(builder: (ctxt) => new UnrecyclableSoiledScreen()),
                      );
                    },
                  shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.grey)
                  ),
                  color: Colors.white,
                  padding: EdgeInsets.all(25.0),
                  
                  child: Text("Yes", style: 
                      new TextStyle(
                        fontSize: 20.0,
                        color: Colors.green,
                      ),
                    ),
                  ),
                  /*IconButton(
                    icon: Icon(Icons.check),
                    tooltip: 'No',
                    onPressed: () {
                        Navigator.push(
                            ctxt,
                            new MyCustomRoute(builder: (ctxt) => new MaterialScreen()),
                        );
                    },
                  ),*/
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MyCustomRoute(builder: (ctxt) => new MaterialScreen()),
                      );
                    },
                  shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.grey)
                  ),
                  color: Colors.white,
                  padding: EdgeInsets.all(25.0),
                  
                  child: Text("No ", style: 
                      new TextStyle(
                        fontSize: 20.0,
                        color: Colors.green,
                      ),
                    ),
                  )
                  /*
                  IconButton(
                    icon: Icon(Icons.cancel),
                    tooltip: 'Yes',
                    onPressed: () {
                        Navigator.push(
                        ctxt,
                        new MyCustomRoute(builder: (ctxt) => new UnrecyclableScreen()),
                        );
                    },
                  )*/
              ]
          )
      )
    );
  }
}

class MaterialScreen extends StatelessWidget {
  @override
  Widget build (BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("RecyclABLE"),
      ),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                  Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: 
                    Text("What is the item made of??",style: 
                      new TextStyle(
                        fontSize: 20.0,
                        color: Colors.green,
                      )
                    )
                  ),
                  //Text("What is the item made of?"),
                  // Plastic
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      
                    FlatButton(
                      onPressed: () {
                        Navigator.push(
                            ctxt,
                            new MyCustomRoute(builder: (ctxt) => new PlasticScreen()),
                        );
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.grey)
                      ),
                      color: Colors.white,
                      padding: EdgeInsets.all(10.0),
                    
                      child: Text("Plastic", style: 
                        new TextStyle(
                          fontSize: 20.0,
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ]
                  ),
                  // Glass
                  Column(
                    children: <Widget>[
                      //Text("Glass"),
                      FlatButton(
                      onPressed: () {
                        Navigator.push(
                            ctxt,
                            new MyCustomRoute(builder: (ctxt) => new GlassScreen()),
                        );
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.grey)
                      ),
                      color: Colors.white,
                      padding: EdgeInsets.all(10.0),
                    
                      child: Text("Glass", style: 
                        new TextStyle(
                          fontSize: 20.0,
                          color: Colors.green,
                        ),
                      ),
                    )
                      /*
                      IconButton(
                        icon: Icon(Icons.crop_square),
                        tooltip: 'Glass',
                        onPressed: () {
                            Navigator.push(
                                ctxt,
                                new MyCustomRoute(builder: (ctxt) => new GlassScreen()),
                            );
                        },
                      )*/,
                    ]
                  ),
                  // Cardboard
                  Column(
                    children: <Widget>[
                      //Text("Cardboard"),
                      FlatButton(
                      onPressed: () {
                        Navigator.push(
                            ctxt,
                            new MyCustomRoute(builder: (ctxt) => new CardboardScreen()),
                        );
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.grey)
                      ),
                      color: Colors.white,
                      padding: EdgeInsets.all(10.0),
                    
                      child: Text("Cardboard", style: 
                        new TextStyle(
                          fontSize: 20.0,
                          color: Colors.green,
                        ),
                      ),
                    )
                      /*
                      IconButton(
                        icon: Icon(Icons.crop_square),
                        tooltip: 'Cardboard',
                        onPressed: () {
                            Navigator.push(
                                ctxt,
                                new MyCustomRoute(builder: (ctxt) => new CardboardScreen()),
                            );
                        },
                      )*/,
                    ]
                  ),
                  // Paper
                  Column(
                    children: <Widget>[
                      //Text("Paper"),
                      FlatButton(
                      onPressed: () {
                        Navigator.push(
                            ctxt,
                            new MyCustomRoute(builder: (ctxt) => new PaperScreen()),
                        );
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.grey)
                      ),
                      color: Colors.white,
                      padding: EdgeInsets.all(10.0),
                    
                      child: Text("Paper", style: 
                        new TextStyle(
                          fontSize: 20.0,
                          color: Colors.green,
                        ),
                      ),
                    )
                      /*
                      IconButton(
                        icon: Icon(Icons.crop_square),
                        tooltip: 'Paper',
                        onPressed: () {
                            Navigator.push(
                                ctxt,
                                new MyCustomRoute(builder: (ctxt) => new PaperScreen()),
                            );
                        },
                      )*/,
                    ]
                  ),
                  // Metal
                  Column(
                      children: <Widget>[
                        //Text("Metal"),
                        FlatButton(
                      onPressed: () {
                        Navigator.push(
                            ctxt,
                            new MyCustomRoute(builder: (ctxt) => new MetalScreen()),
                        );
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.grey)
                      ),
                      color: Colors.white,
                      padding: EdgeInsets.all(10.0),
                    
                      child: Text("Metal", style: 
                        new TextStyle(
                          fontSize: 20.0,
                          color: Colors.green,
                        ),
                      ),
                    )
                        /*
                        IconButton(
                          icon: Icon(Icons.crop_square),
                          tooltip: 'Metal',
                          onPressed: () {
                              Navigator.push(
                                  ctxt,
                                  new MyCustomRoute(builder: (ctxt) => new MetalScreen()),
                              );
                          },
                        )*/,
                      ]
                    ),
                  // Mixed
                  Column(
                    children: <Widget>[
                      //Text("Mixed"),
                      FlatButton(
                        onPressed: () {
                          Navigator.push(
                              ctxt,
                              new MyCustomRoute(builder: (ctxt) => new MixedScreen()),
                          );
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.grey)
                        ),
                        color: Colors.white,
                        padding: EdgeInsets.all(10.0),
                      
                        child: Text("Mixed", style: 
                          new TextStyle(
                            fontSize: 20.0,
                            color: Colors.green,
                          ),
                        ),
                      )
                      /*
                      IconButton(
                        icon: Icon(Icons.crop_square),
                        tooltip: 'Plastic',
                        onPressed: () {
                            Navigator.push(
                                ctxt,
                                new MyCustomRoute(builder: (ctxt) => new MixedScreen()),
                            );
                        },
                      )*/,
                    ]
                  ),
                  // Rubber
                  Column(
                    children: <Widget>[
                      //Text("Rubber and other materials"),
                      FlatButton(
                        onPressed: () {
                          Navigator.push(
                              ctxt,
                              new MyCustomRoute(builder: (ctxt) => new UnrecyclableScreen()),
                          );
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.grey)
                        ),
                        color: Colors.white,
                        padding: EdgeInsets.all(10.0),
                      
                        child: Text("Rubber and\nother materials", style: 
                          new TextStyle(
                            fontSize: 20.0,
                            color: Colors.green,
                          ),
                        ),
                      )
                      /*
                      IconButton(
                        icon: Icon(Icons.crop_square),
                        tooltip: 'Rubber',
                        onPressed: () {
                            Navigator.push(
                                ctxt,
                                new MyCustomRoute(builder: (ctxt) => new UnrecyclableScreen()),
                            );
                        },
                      )*/,
                    ]
                  ),
              ]
          )
      )
    );
  }
}


// PLASTIC
class PlasticScreen extends StatelessWidget {
  @override
  Widget build (BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("RecyclABLE"),
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //Text("Is the item made of soft or hard plastic?"),
            Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: 
                    Text("Is the item made of soft or hard plastic?",style: 
                      new TextStyle(
                        fontSize: 20.0,
                        color: Colors.green,
                      )
                    )
                  ),
            // Plastic
            Column(
              children: <Widget>[
                //Text("Soft Plastic"),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                        ctxt,
                        new MyCustomRoute(builder: (ctxt) => new SoftPlasticScreen()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.grey)
                  ),
                  color: Colors.white,
                  padding: EdgeInsets.all(15.0),
                
                  child: Text("Soft Plastic", style: 
                    new TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                    ),
                  ),
                )
                ,
              ]
            ),
            // Glass
            Column(
              children: <Widget>[
                //Text("Hard Plastic"),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                        ctxt,
                        new MyCustomRoute(builder: (ctxt) => new HardPlasticScreen()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.grey)
                  ),
                  color: Colors.white,
                  padding: EdgeInsets.all(15.0),
                
                  child: Text("Hard Plastic", style: 
                    new TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                    ),
                  ),
                ),
              ]
            ),
          ],
        ),
      )
    );
  }
}

class SoftPlasticScreen extends StatelessWidget {
  @override
  Widget build (BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("RecyclABLE"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: 
              Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: 
                    Text("Is the item made of greasy/waxy plastic?",style: 
                      new TextStyle(
                        fontSize: 20.0,
                        color: Colors.green,
                      )
                    )
                  ),
            ),
            
            // Waxy/Greasy
            Column(
              children: <Widget>[
                //Text("Yes"),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                        ctxt,
                        new MyCustomRoute(builder: (ctxt) => new UnrecyclableScreen()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.grey)
                  ),
                  color: Colors.white,
                  padding: EdgeInsets.all(15.0),
                
                  child: Text("Yes", style: 
                    new TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                    ),
                  ),
                )
                /*
                IconButton(
                  icon: Icon(Icons.check),
                  tooltip: 'Waxy or Greasy Soft Plastic',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MyCustomRoute(builder: (ctxt) => new UnrecyclableScreen()),
                      );
                  },
                )*/,
              ]
            ),
            // Not Waxy/greasy
            Column(
              children: <Widget>[
                //Text("No"),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                        ctxt,
                        new MyCustomRoute(builder: (ctxt) => new ClingScreen()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.grey)
                  ),
                  color: Colors.white,
                  padding: EdgeInsets.all(15.0),
                
                  child: Text("No", style: 
                    new TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                    ),
                  ),
                )
                /*
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Not Waxy or Greasy Soft Plastic',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MyCustomRoute(builder: (ctxt) => new ClingScreen()),
                      );
                  },
                )*/,
              ]
            ),
          ],
        ),
      )
    );
  }
}

class ClingScreen extends StatelessWidget {
  @override
  Widget build (BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("RecyclABLE"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //Text("Is the item made of cling film/plastic?"),
            Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: 
                    Text("Is the item made of cling film/plastic?",style: 
                      new TextStyle(
                        fontSize: 20.0,
                        color: Colors.green,
                      )
                    )
                  ),
            // Waxy/Greasy
            Column(
              children: <Widget>[
                //Text("Yes"),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                        ctxt,
                        new MyCustomRoute(builder: (ctxt) => new UnrecyclableScreen()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.grey)
                  ),
                  color: Colors.white,
                  padding: EdgeInsets.all(15.0),
                
                  child: Text("Yes", style: 
                    new TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                    ),
                  ),
                )
                /*
                IconButton(
                  icon: Icon(Icons.check),
                  tooltip: 'Cling',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MyCustomRoute(builder: (ctxt) => new UnrecyclableScreen()),
                      );
                  },
                )*/
                ,
              ]
            ),
            // Not Waxy/greasy
            Column(
              children: <Widget>[
                //Text("No"),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                        ctxt,
                        new MyCustomRoute(builder: (ctxt) => new RecyclableScreen()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.grey)
                  ),
                  color: Colors.white,
                  padding: EdgeInsets.all(15.0),
                
                  child: Text("No ", style: 
                    new TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                    ),
                  ),
                )
                /*
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Not Cling',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MyCustomRoute(builder: (ctxt) => new RecyclableScreen()),
                      );
                  },
                )*/
                ,
              ]
            ),
          ],
        ),
      )
    );
  }
}

class HardPlasticScreen extends StatelessWidget {
  @override
  Widget build (BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("RecyclABLE"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //Text("Is the number inside the triangle #6?"),
            Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: 
                    Text("Is the number inside the triangle #6?",style: 
                      new TextStyle(
                        fontSize: 20.0,
                        color: Colors.green,
                      )
                    )
                  ),
            // Waxy/Greasy
            Column(
              children: <Widget>[
                //Text("Yes"),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                        ctxt,
                        new MyCustomRoute(builder: (ctxt) => new UnrecyclableScreen()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.grey)
                  ),
                  color: Colors.white,
                  padding: EdgeInsets.all(15.0),
                
                  child: Text("Yes", style: 
                    new TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                    ),
                  ),
                ),
              ]
            ),
            // Not Waxy/greasy
            Column(
              children: <Widget>[
                //Text("No"),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                        ctxt,
                        new MyCustomRoute(builder: (ctxt) => new HardPlasticPastScreen()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.grey)
                  ),
                  color: Colors.white,
                  padding: EdgeInsets.all(15.0),
                
                  child: Text("No ", style: 
                    new TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                    ),
                  ),
                )
                /*
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Hard Plastic but not #6',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MyCustomRoute(builder: (ctxt) => new HardPlasticPastScreen()),
                      );
                  },
                )*/
                ,
              ]
            ),
            Column(
              children: <Widget>[
                //Text("I don't know/can't find the number"),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                        ctxt,
                        new MyCustomRoute(builder: (ctxt) => new UnrecyclableScreen()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.grey)
                  ),
                  color: Colors.white,
                  padding: EdgeInsets.all(15.0),
                
                  child: Text("I don't know or\ncan't find the number", style: 
                    new TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                    ),
                  ),
                )
                /*
                IconButton(
                  icon: Icon(Icons.check),
                  tooltip: 'IDK',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MyCustomRoute(builder: (ctxt) => new UnrecyclableScreen()),
                      );
                  },
                )*/
                ,
              ]
            ),
            // Not Waxy/greasy
          ],
        ),
      )
    );
  }
}

class HardPlasticPastScreen extends StatelessWidget {
  @override
  Widget build (BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("RecyclABLE"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //Text("Has the item contained paint, toothpaste, oil, or CDs?"),
            Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: 
                    Text("Has the item contained paint, toothpaste, oil, or CDs?",style: 
                      new TextStyle(
                        fontSize: 20.0,
                        color: Colors.green,
                      )
                    )
                  ),
            // Waxy/Greasy
            Column(
              children: <Widget>[
                //Text("Yes"),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                        ctxt,
                        new MyCustomRoute(builder: (ctxt) => new UnrecyclableScreen()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.grey)
                  ),
                  color: Colors.white,
                  padding: EdgeInsets.all(15.0),
                
                  child: Text("Yes", style: 
                    new TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                    ),
                  ),
                )
                /*
                IconButton(
                  icon: Icon(Icons.check),
                  tooltip: 'PTOC',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MyCustomRoute(builder: (ctxt) => new UnrecyclableScreen()),
                      );
                  },
                )*/
                ,
              ]
            ),
            // Not Waxy/greasy
            Column(
              children: <Widget>[
                //Text("No"),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                        ctxt,
                        new MyCustomRoute(builder: (ctxt) => new RecyclableScreen()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.grey)
                  ),
                  color: Colors.white,
                  padding: EdgeInsets.all(15.0),
                
                  child: Text("No ", style: 
                    new TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                    ),
                  ),
                )
                /*
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Hard Plastic that can be recycled',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MyCustomRoute(builder: (ctxt) => new RecyclableScreen()),
                      );
                  },
                )*/
                ,
              ]
            ),
            // Not Waxy/greasy
          ],
        ),
      )
    );
  }
}


// GLASS
class GlassScreen extends StatelessWidget {
  @override
  Widget build (BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("RecyclABLE"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //Text("Is the item a glass plate or drinking glass?"),
            Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: 
                    Text("Is the item a glass plate or drinking glass?",style: 
                      new TextStyle(
                        fontSize: 20.0,
                        color: Colors.green,
                      )
                    )
                  ),
            // Plastic
            Column(
              children: <Widget>[
                //Text("Yes"),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                        ctxt,
                        new MyCustomRoute(builder: (ctxt) => new UnrecyclableScreen()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.grey)
                  ),
                  color: Colors.white,
                  padding: EdgeInsets.all(15.0),
                
                  child: Text("Yes", style: 
                    new TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                    ),
                  ),
                )
                /*
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Eating glass',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MyCustomRoute(builder: (ctxt) => new UnrecyclableScreen()),
                      );
                  },
                )*/
                ,
              ]
            ),
            // Glass
            Column(
              children: <Widget>[
                //Text("No"),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                        ctxt,
                        new MyCustomRoute(builder: (ctxt) => new FlatGlassScreen()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.grey)
                  ),
                  color: Colors.white,
                  padding: EdgeInsets.all(15.0),
                
                  child: Text("No ", style: 
                    new TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                    ),
                  ),
                )
                /*
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Non-eating glass',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MyCustomRoute(builder: (ctxt) => new FlatGlassScreen()),
                      );
                  },
                )*/
                ,
              ]
            ),
          ],
        ),
      )
    );
  }
}

class FlatGlassScreen extends StatelessWidget {
  @override
  Widget build (BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("RecyclABLE"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //Text("Is the item a window or a mirror?"),
            Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: 
                    Text("Is the item a window or a mirror?",style: 
                      new TextStyle(
                        fontSize: 20.0,
                        color: Colors.green,
                      )
                    )
                  ),
            // Plastic
            Column(
              children: <Widget>[
                //Text("Yes"),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                        ctxt,
                        new MyCustomRoute(builder: (ctxt) => new UnrecyclableScreen()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.grey)
                  ),
                  color: Colors.white,
                  padding: EdgeInsets.all(15.0),
                
                  child: Text("Yes", style: 
                    new TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                    ),
                  ),
                )
                /*
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Mirror or window',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MyCustomRoute(builder: (ctxt) => new UnrecyclableScreen()),
                      );
                  },
                )*/
                ,
              ]
            ),
            // Glass
            Column(
              children: <Widget>[
                //Text("No"),
                
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                        ctxt,
                        new MyCustomRoute(builder: (ctxt) => new LightBulbScreen()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.grey)
                  ),
                  color: Colors.white,
                  padding: EdgeInsets.all(15.0),
                
                  child: Text("No ", style: 
                    new TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                    ),
                  ),
                )
                /*
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Non mirror or window',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MyCustomRoute(builder: (ctxt) => new LightBulbScreen()),
                      );
                  },
                )*/,
              ]
            ),
          ],
        ),
      )
    );
  }
}

class LightBulbScreen extends StatelessWidget {
  @override
  Widget build (BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("RecyclABLE"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //Text("Is the item a lightbulb?"),
            Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: 
                    Text("Is the item a lightbulb?",style: 
                      new TextStyle(
                        fontSize: 20.0,
                        color: Colors.green,
                      )
                    )
                  ),
            // Plastic
            Column(
              children: <Widget>[
                //Text("Yes"),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                        ctxt,
                        new MyCustomRoute(builder: (ctxt) => new UnrecyclableLightBulbScreen()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.grey)
                  ),
                  color: Colors.white,
                  padding: EdgeInsets.all(15.0),
                
                  child: Text("Yes", style: 
                    new TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                    ),
                  ),
                )
                /*
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'lightbulb',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MyCustomRoute(builder: (ctxt) => new UnrecyclableLightBulbScreen()),
                      );
                  },
                )*/
                ,
              ]
            ),
            // Glass
            Column(
              children: <Widget>[
                //Text("No"),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                        ctxt,
                        new MyCustomRoute(builder: (ctxt) => new PyrexScreen()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.grey)
                  ),
                  color: Colors.white,
                  padding: EdgeInsets.all(15.0),
                
                  child: Text("No ", style: 
                    new TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                    ),
                  ),
                )
                /*
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Non lightbulb',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MyCustomRoute(builder: (ctxt) => new PyrexScreen()),
                      );
                  },
                )*/
                ,
              ]
            ),
          ],
        ),
      )
    );
  }
}

class UnrecyclableLightBulbScreen extends StatelessWidget {
  @override
  Widget build (BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("RecyclABLE"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          /*
          Text("""Lightbulbs can't be recycled with other commonly recyclable items.
                Some of your local furniture stores may offer a lightbulb recycling service. 
                Please consider options in your vicinity!"""),
                */
          Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: 
                    Text("""Lightbulbs can't be recycled with other commonly recyclable items.\nSome of your local furniture stores may offer a lightbulb recycling service.\nPlease consider options in your vicinity!""",style: 
                      new TextStyle(
                        fontSize: 20.0,
                        color: Colors.green,
                      )
                    )
                  ),
          Column(
            children: <Widget>[
              //Text("\nStart over?"),
              FlatButton(
                onPressed: () {
                  Navigator.push(
                      ctxt,
                      new MyCustomRoute(builder: (ctxt) => new HomeScreen()),
                  );
                },
              shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(18.0),
              side: BorderSide(color: Colors.grey)
              ),
              color: Colors.white,
              padding: EdgeInsets.all(25.0),
              
              child: Text("Start Over?", style: 
                  new TextStyle(
                    fontSize: 20.0,
                    color: Colors.green,
                  ),
                ),
              ),
            ]
          ),

        ]  
      )
    );
  }
}

class PyrexScreen extends StatelessWidget {
  @override
  Widget build (BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("RecyclABLE"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //Text("Is the item made of pyrex?"),
            Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: 
                    Text("Is the item made of pyrex?",style: 
                      new TextStyle(
                        fontSize: 20.0,
                        color: Colors.green,
                      )
                    )
                  ),
            // Plastic
            Column(
              children: <Widget>[
                //Text("Yes"),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                        ctxt,
                        new MyCustomRoute(builder: (ctxt) => new UnrecyclableScreen()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.grey)
                  ),
                  color: Colors.white,
                  padding: EdgeInsets.all(15.0),
                
                  child: Text("Yes", style: 
                    new TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                    ),
                  ),
                )
                /*IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Pyrex',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MyCustomRoute(builder: (ctxt) => new UnrecyclableScreen()),
                      );
                  },
                )*/
                ,
              ]
            ),
            // Glass
            Column(
              children: <Widget>[
                //Text("No"),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                        ctxt,
                        new MyCustomRoute(builder: (ctxt) => new RecyclableScreen()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.grey)
                  ),
                  color: Colors.white,
                  padding: EdgeInsets.all(15.0),
                
                  child: Text("No ", style: 
                    new TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                    ),
                  ),
                )
                /*
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Non Pyrex',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MyCustomRoute(builder: (ctxt) => new RecyclableScreen()),
                      );
                  },
                )*/
                ,
              ]
            ),
          ],
        ),
      )
    );
  }
}


// CARDBOARD
class CardboardScreen extends StatelessWidget {
  @override
  Widget build (BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("RecyclABLE"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //Text("Is the item flat or folded?"),
            Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: 
                    Text("Is the item flat or folded?",style: 
                      new TextStyle(
                        fontSize: 20.0,
                        color: Colors.green,
                      )
                    )
                  ),
            // Plastic
            Column(
              children: <Widget>[
                //Text("Flat Cardboard"),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                        ctxt,
                        new MyCustomRoute(builder: (ctxt) => new FlatCardboardScreen()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.grey)
                  ),
                  color: Colors.white,
                  padding: EdgeInsets.all(15.0),
                
                  child: Text("Flat Cardboard", style: 
                    new TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                    ),
                  ),
                )
                /*
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Flat Cardboard',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MyCustomRoute(builder: (ctxt) => new FlatCardboardScreen()),
                      );
                  },
                )*/
                ,
              ]
            ),
            // Glass
            Column(
              children: <Widget>[
                //Text("Folded Cardboard"),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                        ctxt,
                        new MyCustomRoute(builder: (ctxt) => new FoldedCardboardScreen()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.grey)
                  ),
                  color: Colors.white,
                  padding: EdgeInsets.all(15.0),
                
                  child: Text("Folded Cardboard", style: 
                    new TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                    ),
                  ),
                )
                /*
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Folded Cardboard',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MyCustomRoute(builder: (ctxt) => new FoldedCardboardScreen()),
                      );
                  },
                )*/
                ,
              ]
            ),
          ],
        ),
      )
    );
  }
}

class FlatCardboardScreen extends StatelessWidget {
  @override
  Widget build (BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("RecyclABLE"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //Text("Are there bits of tape, stickers, or glue residue on the cardboard?"),
            Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: 
                    Text("Are there bits of tape, stickers, or glue residue on the cardboard?",style: 
                      new TextStyle(
                        fontSize: 20.0,
                        color: Colors.green,
                      )
                    )
                  ),
            // Plastic
            Column(
              children: <Widget>[
                // Text("No"),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                        ctxt,
                        new MyCustomRoute(builder: (ctxt) => new RecyclableScreen()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.grey)
                  ),
                  color: Colors.white,
                  padding: EdgeInsets.all(15.0),
                
                  child: Text("No ", style: 
                    new TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                    ),
                  ),
                )
                /*
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Recyclable Cardboard',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MyCustomRoute(builder: (ctxt) => new RecyclableScreen()),
                      );
                  },
                )*/
                ,
              ]
            ),
            // Glass
            Column(
              children: <Widget>[
                // Text("Yes"),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                        ctxt,
                        new MyCustomRoute(builder: (ctxt) => new CardboardWithResidueScreen()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.grey)
                  ),
                  color: Colors.white,
                  padding: EdgeInsets.all(15.0),
                
                  child: Text("Yes", style: 
                    new TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                    ),
                  ),
                )
                /*
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Cardboard with Residue',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MyCustomRoute(builder: (ctxt) => new CardboardWithResidueScreen()),
                      );
                  },
                )*/
                ,
              ]
            ),
          ],
        ),
      )
    );
  }
}

class FoldedCardboardScreen extends StatelessWidget {
  @override
  Widget build (BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("RecyclABLE"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: 
                    Text("Un-fold the cardboard item, and then proceed:\n\nAre there bits of tape, stickers, or glue residue on the cardboard?",style: 
                      new TextStyle(
                        fontSize: 20.0,
                        color: Colors.green,
                      )
                    )
                  ),
            //Text("Un-fold the cardboard item, and then proceed: "),
            //Text("Are there bits of tape, stickers, or glue residue on the cardboard?"),
            // Plastic
            Column(
              children: <Widget>[
                //Text("No"),
                
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                        ctxt,
                        new MyCustomRoute(builder: (ctxt) => new RecyclableScreen()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.grey)
                  ),
                  color: Colors.white,
                  padding: EdgeInsets.all(15.0),
                
                  child: Text("No ", style: 
                    new TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                    ),
                  ),
                )
                
                /*
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Recyclable Cardboard',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MyCustomRoute(builder: (ctxt) => new RecyclableScreen()),
                      );
                  },
                )*/
                ,
              ]
            ),
            // Glass
            Column(
              children: <Widget>[
                //Text("Yes"),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                        ctxt,
                        new MyCustomRoute(builder: (ctxt) => new CardboardWithResidueScreen()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.grey)
                  ),
                  color: Colors.white,
                  padding: EdgeInsets.all(15.0),
                
                  child: Text("Yes", style: 
                    new TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                    ),
                  ),
                )
                /*
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Cardboard with Residue',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MyCustomRoute(builder: (ctxt) => new CardboardWithResidueScreen()),
                      );
                  },
                )*/
                ,
              ]
            ),
          ],
        ),
      )
    );
  }
}

class CardboardWithResidueScreen extends StatelessWidget {
  @override
  Widget build (BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("RecyclABLE"),
      ),
      body: 
      //new Text("Remove the tape, stickers, or glue residue\n(or cut out relevant pieces of cardboard)\nand then the cardboard can be recycled!"),
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: 
                    Text("Remove the tape, stickers, or glue residue\n(or cut out relevant pieces of cardboard)\nand then the cardboard can be recycled!",style: 
                      new TextStyle(
                        fontSize: 20.0,
                        color: Colors.green,
                      )
                    )
                  ),
      FlatButton(
                onPressed: () {
                  Navigator.push(
                      ctxt,
                      new MyCustomRoute(builder: (ctxt) => new HomeScreen()),
                  );
                },
              shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(18.0),
              side: BorderSide(color: Colors.grey)
              ),
              color: Colors.white,
              padding: EdgeInsets.all(25.0),
              
              child: Text("Start Over?", style: 
                  new TextStyle(
                    fontSize: 20.0,
                    color: Colors.green,
                  ),
                ),
              )
      ],)
      
      
    );
  }
}


// PAPER
class PaperScreen extends StatelessWidget {
  @override
  Widget build (BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("RecyclABLE"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //Text("Is the item a newspaper, magazine, or made of standard paper?"),
            Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: 
                    Text("Is the item a newspaper, magazine, or made of standard paper?",style: 
                      new TextStyle(
                        fontSize: 20.0,
                        color: Colors.green,
                      )
                    )
                  ),
            // Plastic
            Column(
              children: <Widget>[
                //Text("Yes"),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                        ctxt,
                        new MyCustomRoute(builder: (ctxt) => new RecyclableScreen()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.grey)
                  ),
                  color: Colors.white,
                  padding: EdgeInsets.all(15.0),
                
                  child: Text("Yes", style: 
                    new TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                    ),
                  ),
                )
                /*
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Recyclable Paper',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MyCustomRoute(builder: (ctxt) => new RecyclableScreen()),
                      );
                  },
                )*/
                ,
              ]
            ),
            // Glass
            Column(
              children: <Widget>[
                //Text("No"),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                        ctxt,
                        new MyCustomRoute(builder: (ctxt) => new PaperStickerScreen()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.grey)
                  ),
                  color: Colors.white,
                  padding: EdgeInsets.all(15.0),
                
                  child: Text("No ", style: 
                    new TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                    ),
                  ),
                )
                /*
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Other type of paper',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MyCustomRoute(builder: (ctxt) => new PaperStickerScreen()),
                      );
                  },
                )*/
                ,
              ]
            ),
          ],
        ),
      )
    );
  }
}

class PaperStickerScreen extends StatelessWidget {
  @override
  Widget build (BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("RecyclABLE"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //Text("Is there a sticker or adhesive residue on the item?"),
            Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: 
                    Text("Are there stickers or adhesive residue on the item?",style: 
                      new TextStyle(
                        fontSize: 20.0,
                        color: Colors.green,
                      )
                    )
                  ),
            // Plastic
            Column(
              children: <Widget>[
                //Text("Yes"),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                        ctxt,
                        new MyCustomRoute(builder: (ctxt) => new EnvelopeTypeScreen()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.grey)
                  ),
                  color: Colors.white,
                  padding: EdgeInsets.all(15.0),
                
                  child: Text("Yes", style: 
                    new TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                    ),
                  ),
                )
                /*
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Envelope Type Paper',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MyCustomRoute(builder: (ctxt) => new EnvelopeTypeScreen()),
                      );
                  },
                )*/
                ,
              ]
            ),
            // Glass
            Column(
              children: <Widget>[
                //Text("No"),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                        ctxt,
                        new MyCustomRoute(builder: (ctxt) => new FoilWrappingCoatingPaperScreen()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.grey)
                  ),
                  color: Colors.white,
                  padding: EdgeInsets.all(15.0),
                
                  child: Text("No ", style: 
                    new TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                    ),
                  ),
                )
                /*
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Non-Envelope Type Paper',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MyCustomRoute(builder: (ctxt) => new FoilWrappingCoatingPaperScreen()),
                      );
                  },
                )*/
                ,
              ]
            ),
          ],
        ),
      )
    );
  }
}

class EnvelopeTypeScreen extends StatelessWidget {
  @override
  Widget build (BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("RecyclABLE"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //Text("Is the item a type of envelope?"),
            Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: 
                    Text("Is the item a type of envelope?",style: 
                      new TextStyle(
                        fontSize: 20.0,
                        color: Colors.green,
                      )
                    )
                  ),
            // Plastic
            Column(
              children: <Widget>[
                //Text("Yes"),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                        ctxt,
                        new MyCustomRoute(builder: (ctxt) => new EnvelopeScreen()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.grey)
                  ),
                  color: Colors.white,
                  padding: EdgeInsets.all(15.0),
                
                  child: Text("Yes", style: 
                    new TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                    ),
                  ),
                )
                /*
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Envelope',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MyCustomRoute(builder: (ctxt) => new EnvelopeScreen()),
                      );
                  },
                )*/
                ,
              ]
            ),
            // Glass
            Column(
              children: <Widget>[
                //Text("No"),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                        ctxt,
                        new MyCustomRoute(builder: (ctxt) => new UnrecyclableScreen()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.grey)
                  ),
                  color: Colors.white,
                  padding: EdgeInsets.all(15.0),
                
                  child: Text("No ", style: 
                    new TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                    ),
                  ),
                )
                /*
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Non Recyclable Paper',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MyCustomRoute(builder: (ctxt) => new UnrecyclableScreen()),
                      );
                  },
                )*/
                ,
              ]
            ),
          ],
        ),
      )
    );
  }
}

class EnvelopeScreen extends StatelessWidget {
  @override
  Widget build (BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("RecyclABLE"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //Text("Is the envelope padded?"),
            Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: 
                    Text("Is the envelope padded?",style: 
                      new TextStyle(
                        fontSize: 20.0,
                        color: Colors.green,
                      )
                    )
                  ),
            // Plastic
            Column(
              children: <Widget>[
                // Text("Yes"),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                        ctxt,
                        new MyCustomRoute(builder: (ctxt) => new UnrecyclableScreen()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.grey)
                  ),
                  color: Colors.white,
                  padding: EdgeInsets.all(15.0),
                
                  child: Text("Yes", style: 
                    new TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                    ),
                  ),
                )
                /*
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Padded Envelope',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MyCustomRoute(builder: (ctxt) => new UnrecyclableScreen()),
                      );
                  },
                )*/
                ,
              ]
            ),
            // Glass
            Column(
              children: <Widget>[
                // Text("No"),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                        ctxt,
                        new MyCustomRoute(builder: (ctxt) => new RecyclableScreen()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.grey)
                  ),
                  color: Colors.white,
                  padding: EdgeInsets.all(15.0),
                
                  child: Text("No ", style: 
                    new TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                    ),
                  ),
                )
                /*
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Recyclable Paper',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MyCustomRoute(builder: (ctxt) => new RecyclableScreen()),
                      );
                  },
                )*/
                ,
              ]
            ),
          ],
        ),
      )
    );
  }
}

class FoilWrappingCoatingPaperScreen extends StatelessWidget {
  @override
  Widget build (BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("RecyclABLE"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //Text("Is the item made of plastic-coated/plastic-lined paper or made of wrapping paper?"),
            Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: 
                    Text("Is the item made of plastic-coated/plastic-lined paper or made of wrapping paper?",style: 
                      new TextStyle(
                        fontSize: 20.0,
                        color: Colors.green,
                      )
                    )
                  ),
            // Plastic
            Column(
              children: <Widget>[
                //Text("Yes"),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                        ctxt,
                        new MyCustomRoute(builder: (ctxt) => new UnrecyclableScreen()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.grey)
                  ),
                  color: Colors.white,
                  padding: EdgeInsets.all(15.0),
                
                  child: Text("Yes", style: 
                    new TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                    ),
                  ),
                )
                /*
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Padded Envelope',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MyCustomRoute(builder: (ctxt) => new UnrecyclableScreen()),
                      );
                  },
                )*/
                ,
              ]
            ),
            // Glass
            Column(
              children: <Widget>[
                //Text("No"),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                        ctxt,
                        new MyCustomRoute(builder: (ctxt) => new RecyclableScreen()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.grey)
                  ),
                  color: Colors.white,
                  padding: EdgeInsets.all(15.0),
                
                  child: Text("No ", style: 
                    new TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                    ),
                  ),
                )
                /*
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Recyclable Paper',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MyCustomRoute(builder: (ctxt) => new RecyclableScreen()),
                      );
                  },
                )*/
                ,
              ]
            ),
          ],
        ),
      )
    );
  }
}


// METAL
class MetalScreen extends StatelessWidget {
  @override
  Widget build (BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("RecyclABLE"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //Text("Is an electronic item or a battery?"),
            Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: 
                    Text("Is an electronic item or a battery?",style: 
                      new TextStyle(
                        fontSize: 20.0,
                        color: Colors.green,
                      )
                    )
                  ),
            // Plastic
            Column(
              children: <Widget>[
                //Text("Yes"),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                        ctxt,
                        new MyCustomRoute(builder: (ctxt) => new ElectronicBatteryScreen()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.grey)
                  ),
                  color: Colors.white,
                  padding: EdgeInsets.all(15.0),
                
                  child: Text("Yes", style: 
                    new TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                    ),
                  ),
                )
                /*
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Electronic or Battery',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MyCustomRoute(builder: (ctxt) => new ElectronicBatteryScreen()),
                      );
                  },
                )*/
                ,
              ]
            ),
            // Glass
            Column(
              children: <Widget>[
                //Text("No"),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                        ctxt,
                        new MyCustomRoute(builder: (ctxt) => new NonElectronicScreen()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.grey)
                  ),
                  color: Colors.white,
                  padding: EdgeInsets.all(15.0),
                
                  child: Text("No ", style: 
                    new TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                    ),
                  ),
                ),
              ]
            ),
          ],
        ),
      )
    );
  }
}

class ElectronicBatteryScreen extends StatelessWidget {
  @override
  Widget build (BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("RecyclABLE"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget> [
        /*
        Column(
          children: <Widget>[
            Text("Electronics and Batteries"),
            Text("""
            Unfortunately, recycling electronics and batteries can be complicated...
            Please consult your municipal guide.
            """)
          ]
        ),*/
        Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: 
                    Text("""Unfortunately, recycling electronics and batteries can be complicated...\nPlease consult your municipal guide.""",style: 
                      new TextStyle(
                        fontSize: 20.0,
                        color: Colors.green,
                      )
                    )
                  ),
        Column(
          children: <Widget>[
          Text(" "),
          Column(
            children: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.push(
                      ctxt,
                      new MyCustomRoute(builder: (ctxt) => new HomeScreen()),
                  );
                },
              shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(18.0),
              side: BorderSide(color: Colors.grey)
              ),
              color: Colors.white,
              padding: EdgeInsets.all(25.0),
              
              child: Text("Start Over?", style: 
                  new TextStyle(
                    fontSize: 20.0,
                    color: Colors.green,
                  ),
                ),
              ),
            ]
          ),

        ]
        )
        ]  
      )
    );
  }
}

class NonElectronicScreen extends StatelessWidget {
  @override
  Widget build (BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("RecyclABLE"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //Text("Is the item made of scrap metal, nails, screws, or pipes?"),
            Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: 
                    Text("Is the item made of scrap metal, nails, screws, or pipes?",style: 
                      new TextStyle(
                        fontSize: 20.0,
                        color: Colors.green,
                      )
                    )
                  ),
            // Plastic
            Column(
              children: <Widget>[
                //Text("Yes"),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                        ctxt,
                        new MyCustomRoute(builder: (ctxt) => new UnrecyclableScreen()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.grey)
                  ),
                  color: Colors.white,
                  padding: EdgeInsets.all(15.0),
                
                  child: Text("Yes", style: 
                    new TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                    ),
                  ),
                )
                /*
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Scrap, nails, screws, and pipes',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MyCustomRoute(builder: (ctxt) => new UnrecyclableScreen()),
                      );
                  },
                )*/
                ,
              ]
            ),
            // Glass
            Column(
              children: <Widget>[
                //Text("No"),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                        ctxt,
                        new MyCustomRoute(builder: (ctxt) => new MoreMetalScreen()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.grey)
                  ),
                  color: Colors.white,
                  padding: EdgeInsets.all(15.0),
                
                  child: Text("No ", style: 
                    new TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                    ),
                  ),
                )
                /*
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Hard Plastic',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MyCustomRoute(builder: (ctxt) => new MoreMetalScreen()),
                      );
                  },
                )*/
                ,
              ]
            ),
          ],
        ),
      )
    );
  }
}

class MoreMetalScreen extends StatelessWidget {
  @override
  Widget build (BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("RecyclABLE"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //Text("Has the item ever contained paints, solvents, aerosols, toxins, or hazardous chemicals?"),
            Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: 
                    Text("Has the item ever contained paints, solvents, aerosols, toxins, or hazardous chemicals?",style: 
                      new TextStyle(
                        fontSize: 20.0,
                        color: Colors.green,
                      )
                    )
                  ),
            // Plastic
            Column(
              children: <Widget>[
                //Text("Yes"),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                        ctxt,
                        new MyCustomRoute(builder: (ctxt) => new UnrecyclableScreen()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.grey)
                  ),
                  color: Colors.white,
                  padding: EdgeInsets.all(15.0),
                
                  child: Text("Yes", style: 
                    new TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                    ),
                  ),
                )
                /*IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Contained hazardous compounds',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MyCustomRoute(builder: (ctxt) => new UnrecyclableScreen()),
                      );
                  },
                )*/
                ,
              ]
            ),
            // Glass
            Column(
              children: <Widget>[
                //Text("No"),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                        ctxt,
                        new MyCustomRoute(builder: (ctxt) => new PotsPansScreen()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.grey)
                  ),
                  color: Colors.white,
                  padding: EdgeInsets.all(15.0),
                
                  child: Text("No ", style: 
                    new TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                    ),
                  ),
                )
                /*
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Hard Plastic',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MyCustomRoute(builder: (ctxt) => new PotsPansScreen()),
                      );
                  },
                )*/
                ,
              ]
            ),
          ],
        ),
      )
    );
  }
}

class PotsPansScreen extends StatelessWidget {
  @override
  Widget build (BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("RecyclABLE"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //Text("Is the item a pot, pan, baking tray, or has a teflon coating or burn marks?"),
            Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: 
                    Text("Is the item a pot, pan, baking tray, or has a teflon coating or burn marks?",style: 
                      new TextStyle(
                        fontSize: 20.0,
                        color: Colors.green,
                      )
                    )
                  ),
            // Plastic
            Column(
              children: <Widget>[
                //Text("Yes"),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                        ctxt,
                        new MyCustomRoute(builder: (ctxt) => new UnrecyclableScreen()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.grey)
                  ),
                  color: Colors.white,
                  padding: EdgeInsets.all(15.0),
                
                  child: Text("Yes", style: 
                    new TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                    ),
                  ),
                )
                /*
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Used in cooking or teflon/burn marks',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MyCustomRoute(builder: (ctxt) => new UnrecyclableScreen()),
                      );
                  },
                )*/
                ,
              ]
            ),
            // Glass
            Column(
              children: <Widget>[
                //Text("No"),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                        ctxt,
                        new MyCustomRoute(builder: (ctxt) => new RecyclableScreen()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.grey)
                  ),
                  color: Colors.white,
                  padding: EdgeInsets.all(15.0),
                
                  child: Text("No ", style: 
                    new TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                    ),
                  ),
                )
                /*
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Hard Plastic',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MyCustomRoute(builder: (ctxt) => new RecyclableScreen()),
                      );
                  },
                )*/
                ,
              ]
            ),
          ],
        ),
      )
    );
  }
}


// MIXED
class MixedScreen extends StatelessWidget {
  @override
  Widget build (BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("RecyclABLE"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget> [
        /*
        Column(
          children: <Widget>[
            Text("Mixed Materials"),
            Text("""
            Unfortunately, recycling mixed items is complicated...
            Try separating the item into its homogeneous components, and recycling them individually.
            Your municipality's recycling center may have specified which mixed items it can recycle.
            """)
          ]
        ),*/
        Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: 
                    Text("""Unfortunately, recycling mixed items is complicated...\nTry separating the item into its homogeneous components, and recycling them individually.\nYour municipality's recycling center may have specified which mixed items it can recycle.""",style: 
                      new TextStyle(
                        fontSize: 20.0,
                        color: Colors.green,
                      )
                    )
                  ),
        Column(
          children: <Widget>[
          Text(" "),
          Column(
            children: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.push(
                      ctxt,
                      new MyCustomRoute(builder: (ctxt) => new HomeScreen()),
                  );
                },
              shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(18.0),
              side: BorderSide(color: Colors.grey)
              ),
              color: Colors.white,
              padding: EdgeInsets.all(25.0),
              
              child: Text("Start Over?", style: 
                  new TextStyle(
                    fontSize: 20.0,
                    color: Colors.green,
                  ),
                ),
              ),
            ]
          ),

        ]
        )
        ]  
      )
      /*body: Column(
        children: <Widget>[
          
        ]
          
      )*/
    );
  }
}


// GENERAL END POINTS
class UnrecyclableScreen extends StatelessWidget {
  @override
  Widget build (BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("RecyclABLE"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          //Text("Cannot be recycled"),
          Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: 
                    Text("Cannot be recycled :(",style: 
                      new TextStyle(
                        fontSize: 35.0,
                        color: Colors.green,
                      )
                    )
                  ),
          Column(
            children: <Widget>[
              //Text("\nStart over?"),
              FlatButton(
                onPressed: () {
                  Navigator.push(
                      ctxt,
                      new MyCustomRoute(builder: (ctxt) => new HomeScreen()),
                  );
                },
              shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(18.0),
              side: BorderSide(color: Colors.grey)
              ),
              color: Colors.white,
              padding: EdgeInsets.all(25.0),
              
              child: Text("Start Over?", style: 
                  new TextStyle(
                    fontSize: 20.0,
                    color: Colors.green,
                  ),
                ),
              ),
            ]
          ),

        ]  
      )
    );
  }
}

class UnrecyclableSoiledScreen extends StatelessWidget {
  @override
  Widget build (BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("RecyclABLE"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          // Text("Unfortunately, most soiled items cannot be recycled.\nTry to clean of the residue and restart."),
          Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: 
                    Text("Unfortunately, most soiled items cannot be recycled :( \nTry to clean of the residue and restart.",style: 
                      new TextStyle(
                        fontSize: 20.0,
                        color: Colors.green,
                      )
                    )
                  ),
          Column(
            children: <Widget>[
              //rText("\nStart over?"),
              FlatButton(
                onPressed: () {
                  Navigator.push(
                      ctxt,
                      new MyCustomRoute(builder: (ctxt) => new HomeScreen()),
                  );
                },
              shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(18.0),
              side: BorderSide(color: Colors.grey)
              ),
              color: Colors.white,
              padding: EdgeInsets.all(25.0),
              
              child: Text("Start Over?", style: 
                  new TextStyle(
                    fontSize: 20.0,
                    color: Colors.green,
                  ),
                ),
              )
              /*
              IconButton(
                icon: Icon(Icons.question_answer),
                tooltip: 'Start Over',
                onPressed: () {
                    Navigator.push(
                        ctxt,
                        new MyCustomRoute(builder: (ctxt) => new SoiledScreen()),
                    );
                },
              )*/,
            ]
          ),

        ]  
      )
    );
  }
}


class RecyclableScreen extends StatelessWidget {
  @override
  Widget build (BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("RecyclABLE"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          //Text("Can be recycled!"),
          Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: 
                    Text("Can be recycled :)",style: 
                      new TextStyle(
                        fontSize: 35.0,
                        color: Colors.green,
                      )
                    )
                  ),
          Column(
            children: <Widget>[
              //Text("\nStart over?"),
              FlatButton(
                onPressed: () {
                  Navigator.push(
                      ctxt,
                      new MyCustomRoute(builder: (ctxt) => new HomeScreen()),
                  );
                },
              shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(18.0),
              side: BorderSide(color: Colors.grey)
              ),
              color: Colors.white,
              padding: EdgeInsets.all(25.0),
              
              child: Text("Start Over?", style: 
                  new TextStyle(
                    fontSize: 20.0,
                    color: Colors.green,
                  ),
                ),
              )
              /*
              IconButton(
                icon: Icon(Icons.question_answer),
                tooltip: 'Start Over',
                onPressed: () {
                    Navigator.push(
                        ctxt,
                        new MyCustomRoute(builder: (ctxt) => new SoiledScreen()),
                    );
                },
              )*/,
            ]
          ),

        ]  
      )
    );
  }
}
