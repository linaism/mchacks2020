import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext ctxt) {
    
    return new MaterialApp(
      home: new HomeScreen(), 
      theme: ThemeData(
        primaryColor: Colors.green,
        //brightness: Brightness.light,
        //backgroundColor: Colors.white, 
        //fontFamily: 'Roboto Slab', 
        
        //accentColor: Color(#10000),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build (BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("r e c y c l a g e")
      ),
      body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 200),
              FlatButton(
                onPressed: () {
                    Navigator.push(
                        ctxt,
                        new MaterialPageRoute(builder: (ctxt) => new SoiledScreen()),
                    );
                  },
                shape: RoundedRectangleBorder(
                 borderRadius: new BorderRadius.circular(18.0),
                 side: BorderSide(color: Colors.grey)
                 ),
                color: Colors.white,
                padding: EdgeInsets.all(50.0),
                
                child: Text("Start", style: 
                    new TextStyle(
                      fontSize: 60.0,
                      color: Colors.green,
                    ),
                  ),
                ),
              SizedBox(height: 30),
              /*IconButton(
                icon: Icon(Icons.check),
                tooltip: 'Start',
                onPressed: () {
                    Navigator.push(
                        ctxt,
                        new MaterialPageRoute(builder: (ctxt) => new SoiledScreen()),
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
        title: new Text("r e c y c l a g e"),
      ),
      body: Center(
          child: Column(
              children: <Widget>[
                  Text("Is the item soiled?"),
                  IconButton(
                    icon: Icon(Icons.check),
                    tooltip: 'No',
                    onPressed: () {
                        Navigator.push(
                            ctxt,
                            new MaterialPageRoute(builder: (ctxt) => new MaterialScreen()),
                        );
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.cancel),
                    tooltip: 'Yes',
                    onPressed: () {
                        Navigator.push(
                        ctxt,
                        new MaterialPageRoute(builder: (ctxt) => new UnrecyclableScreen()),
                        );
                    },
                  )
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
        title: new Text("r e c y c l a g e"),
      ),
      body: Center(
          child: Column(
              children: <Widget>[
                  Text("What is the item made of?"),
                  // Plastic
                  Column(
                    children: <Widget>[
                      Text("Plastic"),
                      IconButton(
                        icon: Icon(Icons.crop_square),
                        tooltip: 'Plastic',
                        onPressed: () {
                            Navigator.push(
                                ctxt,
                                new MaterialPageRoute(builder: (ctxt) => new PlasticScreen()),
                            );
                        },
                      ),
                    ]
                  ),
                  // Glass
                  Column(
                    children: <Widget>[
                      Text("Glass"),
                      IconButton(
                        icon: Icon(Icons.crop_square),
                        tooltip: 'Glass',
                        onPressed: () {
                            Navigator.push(
                                ctxt,
                                new MaterialPageRoute(builder: (ctxt) => new GlassScreen()),
                            );
                        },
                      ),
                    ]
                  ),
                  // Cardboard
                  Column(
                    children: <Widget>[
                      Text("Cardboard"),
                      IconButton(
                        icon: Icon(Icons.crop_square),
                        tooltip: 'Cardboard',
                        onPressed: () {
                            Navigator.push(
                                ctxt,
                                new MaterialPageRoute(builder: (ctxt) => new CardboardScreen()),
                            );
                        },
                      ),
                    ]
                  ),
                  // Paper
                  Column(
                    children: <Widget>[
                      Text("Paper"),
                      IconButton(
                        icon: Icon(Icons.crop_square),
                        tooltip: 'Paper',
                        onPressed: () {
                            Navigator.push(
                                ctxt,
                                new MaterialPageRoute(builder: (ctxt) => new PaperScreen()),
                            );
                        },
                      ),
                    ]
                  ),
                  // Metal
                  Column(
                      children: <Widget>[
                        Text("Metal"),
                        IconButton(
                          icon: Icon(Icons.crop_square),
                          tooltip: 'Metal',
                          onPressed: () {
                              Navigator.push(
                                  ctxt,
                                  new MaterialPageRoute(builder: (ctxt) => new MetalScreen()),
                              );
                          },
                        ),
                      ]
                    ),
                  // Mixed
                  Column(
                    children: <Widget>[
                      Text("Mixed"),
                      IconButton(
                        icon: Icon(Icons.crop_square),
                        tooltip: 'Plastic',
                        onPressed: () {
                            Navigator.push(
                                ctxt,
                                new MaterialPageRoute(builder: (ctxt) => new MixedScreen()),
                            );
                        },
                      ),
                    ]
                  ),
                  // Rubber
                  Column(
                    children: <Widget>[
                      Text("Rubber and other materials"),
                      IconButton(
                        icon: Icon(Icons.crop_square),
                        tooltip: 'Rubber',
                        onPressed: () {
                            Navigator.push(
                                ctxt,
                                new MaterialPageRoute(builder: (ctxt) => new UnrecyclableScreen()),
                            );
                        },
                      ),
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
        title: new Text("r e c y c l a g e"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("Is the item made of soft or hard plastic?"),
            // Plastic
            Column(
              children: <Widget>[
                Text("Soft Plastic"),
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Soft Plastic',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MaterialPageRoute(builder: (ctxt) => new SoftPlasticScreen()),
                      );
                  },
                ),
              ]
            ),
            // Glass
            Column(
              children: <Widget>[
                Text("Hard Plastic"),
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Hard Plastic',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MaterialPageRoute(builder: (ctxt) => new HardPlasticScreen()),
                      );
                  },
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
        title: new Text("r e c y c l a g e"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("Is the item made of waxy or greasy soft plastic?"),
            // Waxy/Greasy
            Column(
              children: <Widget>[
                Text("Yes"),
                IconButton(
                  icon: Icon(Icons.check),
                  tooltip: 'Waxy or Greasy Soft Plastic',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MaterialPageRoute(builder: (ctxt) => new UnrecyclableScreen()),
                      );
                  },
                ),
              ]
            ),
            // Not Waxy/greasy
            Column(
              children: <Widget>[
                Text("No"),
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Not Waxy or Greasy Soft Plastic',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MaterialPageRoute(builder: (ctxt) => new ClingScreen()),
                      );
                  },
                ),
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
        title: new Text("r e c y c l a g e"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("Is the item made of cling film/plastic?"),
            // Waxy/Greasy
            Column(
              children: <Widget>[
                Text("Yes"),
                IconButton(
                  icon: Icon(Icons.check),
                  tooltip: 'Cling',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MaterialPageRoute(builder: (ctxt) => new UnrecyclableScreen()),
                      );
                  },
                ),
              ]
            ),
            // Not Waxy/greasy
            Column(
              children: <Widget>[
                Text("No"),
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Not Cling',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MaterialPageRoute(builder: (ctxt) => new RecyclableScreen()),
                      );
                  },
                ),
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
        title: new Text("r e c y c l a g e"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("Is the number inside the triangle #6?"),
            // Waxy/Greasy
            Column(
              children: <Widget>[
                Text("Yes"),
                IconButton(
                  icon: Icon(Icons.check),
                  tooltip: 'is#6',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MaterialPageRoute(builder: (ctxt) => new UnrecyclableScreen()),
                      );
                  },
                ),
              ]
            ),
            // Not Waxy/greasy
            Column(
              children: <Widget>[
                Text("No"),
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Hard Plastic but not #6',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MaterialPageRoute(builder: (ctxt) => new HardPlasticPastScreen()),
                      );
                  },
                ),
              ]
            ),
            Column(
              children: <Widget>[
                Text("I don't know/can't find the number"),
                IconButton(
                  icon: Icon(Icons.check),
                  tooltip: 'IDK',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MaterialPageRoute(builder: (ctxt) => new UnrecyclableScreen()),
                      );
                  },
                ),
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
        title: new Text("r e c y c l a g e"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("Has the item contained paint, toothpaste, oil, or CDs?"),
            // Waxy/Greasy
            Column(
              children: <Widget>[
                Text("Yes"),
                IconButton(
                  icon: Icon(Icons.check),
                  tooltip: 'PTOC',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MaterialPageRoute(builder: (ctxt) => new UnrecyclableScreen()),
                      );
                  },
                ),
              ]
            ),
            // Not Waxy/greasy
            Column(
              children: <Widget>[
                Text("No"),
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Hard Plastic that can be recycled',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MaterialPageRoute(builder: (ctxt) => new RecyclableScreen()),
                      );
                  },
                ),
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
        title: new Text("r e c y c l a g e"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("Is the item a glass plate or drinking glass?"),
            // Plastic
            Column(
              children: <Widget>[
                Text("Yes"),
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Eating glass',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MaterialPageRoute(builder: (ctxt) => new UnrecyclableScreen()),
                      );
                  },
                ),
              ]
            ),
            // Glass
            Column(
              children: <Widget>[
                Text("No"),
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Non-eating glass',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MaterialPageRoute(builder: (ctxt) => new FlatGlassScreen()),
                      );
                  },
                ),
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
        title: new Text("r e c y c l a g e"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("Is the item a window or a mirror?"),
            // Plastic
            Column(
              children: <Widget>[
                Text("Yes"),
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Mirror or window',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MaterialPageRoute(builder: (ctxt) => new UnrecyclableScreen()),
                      );
                  },
                ),
              ]
            ),
            // Glass
            Column(
              children: <Widget>[
                Text("No"),
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Non mirror or window',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MaterialPageRoute(builder: (ctxt) => new LightBulbScreen()),
                      );
                  },
                ),
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
        title: new Text("r e c y c l a g e"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("Is the item a lightbulb?"),
            // Plastic
            Column(
              children: <Widget>[
                Text("Yes"),
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'lightbulb',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MaterialPageRoute(builder: (ctxt) => new UnrecyclableLightBulbScreen()),
                      );
                  },
                ),
              ]
            ),
            // Glass
            Column(
              children: <Widget>[
                Text("No"),
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Non lightbulb',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MaterialPageRoute(builder: (ctxt) => new PyrexScreen()),
                      );
                  },
                ),
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
        title: new Text("r e c y c l a g e"),
      ),
      body: new Text("""Lightbulbs can't be recycled with other commonly recyclable items.
      Some of your local furniture stores may offer a lightbulb recycling service. 
      Please consider options in your vicinity!"""),
    );
  }
}

class PyrexScreen extends StatelessWidget {
  @override
  Widget build (BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("r e c y c l a g e"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("Is the item made of pyrex?"),
            // Plastic
            Column(
              children: <Widget>[
                Text("Yes"),
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Pyrex',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MaterialPageRoute(builder: (ctxt) => new UnrecyclableScreen()),
                      );
                  },
                ),
              ]
            ),
            // Glass
            Column(
              children: <Widget>[
                Text("No"),
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Non Pyrex',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MaterialPageRoute(builder: (ctxt) => new RecyclableScreen()),
                      );
                  },
                ),
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
        title: new Text("r e c y c l a g e"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("Is the item flat or folded?"),
            // Plastic
            Column(
              children: <Widget>[
                Text("Flat Cardboard"),
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Flat Cardboard',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MaterialPageRoute(builder: (ctxt) => new FlatCardboardScreen()),
                      );
                  },
                ),
              ]
            ),
            // Glass
            Column(
              children: <Widget>[
                Text("Folded Cardboard"),
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Folded Cardboard',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MaterialPageRoute(builder: (ctxt) => new FoldedCardboardScreen()),
                      );
                  },
                ),
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
        title: new Text("r e c y c l a g e"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("Are there bits of tape, stickers, or glue residue on the cardboard?"),
            // Plastic
            Column(
              children: <Widget>[
                Text("No"),
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Recyclable Cardboard',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MaterialPageRoute(builder: (ctxt) => new RecyclableScreen()),
                      );
                  },
                ),
              ]
            ),
            // Glass
            Column(
              children: <Widget>[
                Text("Yes"),
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Cardboard with Residue',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MaterialPageRoute(builder: (ctxt) => new CardboardWithResidueScreen()),
                      );
                  },
                ),
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
        title: new Text("r e c y c l a g e"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("Un-fold the cardboard item, and then proceed: "),
            Text("Are there bits of tape, stickers, or glue residue on the cardboard?"),
            // Plastic
            Column(
              children: <Widget>[
                Text("No"),
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Recyclable Cardboard',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MaterialPageRoute(builder: (ctxt) => new RecyclableScreen()),
                      );
                  },
                ),
              ]
            ),
            // Glass
            Column(
              children: <Widget>[
                Text("Yes"),
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Cardboard with Residue',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MaterialPageRoute(builder: (ctxt) => new CardboardWithResidueScreen()),
                      );
                  },
                ),
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
        title: new Text("r e c y c l a g e"),
      ),
      body: new Text("Remove the tape, stickers, or glue residue\n(or cut out relevant pieces of cardboard)\nand then the cardboard can be recycled!"),
    );
  }
}


// PAPER
class PaperScreen extends StatelessWidget {
  @override
  Widget build (BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("r e c y c l a g e"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("Is the item a newspaper, magazine, or made of standard paper?"),
            // Plastic
            Column(
              children: <Widget>[
                Text("Yes"),
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Recyclable Paper',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MaterialPageRoute(builder: (ctxt) => new RecyclableScreen()),
                      );
                  },
                ),
              ]
            ),
            // Glass
            Column(
              children: <Widget>[
                Text("No"),
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Other type of paper',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MaterialPageRoute(builder: (ctxt) => new PaperStickerScreen()),
                      );
                  },
                ),
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
        title: new Text("r e c y c l a g e"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("Is there a sticker or adhesive residue on the item?"),
            // Plastic
            Column(
              children: <Widget>[
                Text("Yes"),
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Envelope Type Paper',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MaterialPageRoute(builder: (ctxt) => new EnvelopeTypeScreen()),
                      );
                  },
                ),
              ]
            ),
            // Glass
            Column(
              children: <Widget>[
                Text("No"),
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Non-Envelope Type Paper',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MaterialPageRoute(builder: (ctxt) => new FoilWrappingCoatingPaperScreen()),
                      );
                  },
                ),
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
        title: new Text("r e c y c l a g e"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("Is the item a type of envelope?"),
            // Plastic
            Column(
              children: <Widget>[
                Text("Yes"),
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Envelope',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MaterialPageRoute(builder: (ctxt) => new EnvelopeScreen()),
                      );
                  },
                ),
              ]
            ),
            // Glass
            Column(
              children: <Widget>[
                Text("No"),
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Non Recyclable Paper',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MaterialPageRoute(builder: (ctxt) => new UnrecyclableScreen()),
                      );
                  },
                ),
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
        title: new Text("r e c y c l a g e"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("Is the envelope padded?"),
            // Plastic
            Column(
              children: <Widget>[
                Text("Yes"),
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Padded Envelope',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MaterialPageRoute(builder: (ctxt) => new UnrecyclableScreen()),
                      );
                  },
                ),
              ]
            ),
            // Glass
            Column(
              children: <Widget>[
                Text("No"),
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Recyclable Paper',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MaterialPageRoute(builder: (ctxt) => new RecyclableScreen()),
                      );
                  },
                ),
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
        title: new Text("r e c y c l a g e"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("Is the item made of plastic-coated/plastic-lined paper or made of wrapping paper?"),
            // Plastic
            Column(
              children: <Widget>[
                Text("Yes"),
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Padded Envelope',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MaterialPageRoute(builder: (ctxt) => new UnrecyclableScreen()),
                      );
                  },
                ),
              ]
            ),
            // Glass
            Column(
              children: <Widget>[
                Text("No"),
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Recyclable Paper',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MaterialPageRoute(builder: (ctxt) => new RecyclableScreen()),
                      );
                  },
                ),
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
        title: new Text("r e c y c l a g e"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("Is an electronic item or a battery?"),
            // Plastic
            Column(
              children: <Widget>[
                Text("Yes"),
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Electronic or Battery',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MaterialPageRoute(builder: (ctxt) => new ElectronicBatteryScreen()),
                      );
                  },
                ),
              ]
            ),
            // Glass
            Column(
              children: <Widget>[
                Text("No"),
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Non Electronic',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MaterialPageRoute(builder: (ctxt) => new NonElectronicScreen()),
                      );
                  },
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
        title: new Text("r e c y c l a g e"),
      ),
      body: Column(
        children: <Widget>[
          Text("Electronics and Batteries"),
          Text("""
          "Unfortunately, recycling electronics and batteries can be complicated...
          Please consult your municipal guide.
          """)
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
        title: new Text("r e c y c l a g e"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("Is the item made of scrap metal, nails, screws, or pipes?"),
            // Plastic
            Column(
              children: <Widget>[
                Text("Yes"),
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Scrap, nails, screws, and pipes',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MaterialPageRoute(builder: (ctxt) => new UnrecyclableScreen()),
                      );
                  },
                ),
              ]
            ),
            // Glass
            Column(
              children: <Widget>[
                Text("No"),
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Hard Plastic',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MaterialPageRoute(builder: (ctxt) => new MoreMetalScreen()),
                      );
                  },
                ),
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
        title: new Text("r e c y c l a g e"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("Has the item ever contained paints, solvents, aerosols, toxins, or hazardous chemicals?"),
            // Plastic
            Column(
              children: <Widget>[
                Text("Yes"),
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Contained hazardous compounds',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MaterialPageRoute(builder: (ctxt) => new UnrecyclableScreen()),
                      );
                  },
                ),
              ]
            ),
            // Glass
            Column(
              children: <Widget>[
                Text("No"),
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Hard Plastic',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MaterialPageRoute(builder: (ctxt) => new PotsPansScreen()),
                      );
                  },
                ),
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
        title: new Text("r e c y c l a g e"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("Is the item a pot, pan, baking tray, or has a teflon coating or burn marks?"),
            // Plastic
            Column(
              children: <Widget>[
                Text("Yes"),
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Used in cooking or teflon/burn marks',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MaterialPageRoute(builder: (ctxt) => new UnrecyclableScreen()),
                      );
                  },
                ),
              ]
            ),
            // Glass
            Column(
              children: <Widget>[
                Text("No"),
                IconButton(
                  icon: Icon(Icons.crop_square),
                  tooltip: 'Hard Plastic',
                  onPressed: () {
                      Navigator.push(
                          ctxt,
                          new MaterialPageRoute(builder: (ctxt) => new RecyclableScreen()),
                      );
                  },
                ),
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
        title: new Text("r e c y c l a g e"),
      ),
      body: Column(
        children: <Widget>[
          Text("Mixed Materials"),
          Text("""
          Unfortunately, recycling mixed items is complicated...
          Try separating the item into its homogeneous components, and recycling them individually.
          Your municipality's recycling center may have specified which mixed items it can recycle.
          """)
        ]
          
      )
    );
  }
}


// GENERAL END POINTS
class UnrecyclableScreen extends StatelessWidget {
  @override
  Widget build (BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("r e c y c l a g e"),
      ),
      body: Column(
        children: <Widget>[
          Text("Cannot be recycled"),
          Column(
            children: <Widget>[
              Text("\nStart over?"),
              IconButton(
                icon: Icon(Icons.question_answer),
                tooltip: 'Start Over',
                onPressed: () {
                    Navigator.push(
                        ctxt,
                        new MaterialPageRoute(builder: (ctxt) => new SoiledScreen()),
                    );
                },
              ),
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
        title: new Text("r e c y c l a g e"),
      ),
      body: Column(
        children: <Widget>[
          Text("Can be recycled"),
          Column(
            children: <Widget>[
              Text("\nStart over?"),
              IconButton(
                icon: Icon(Icons.question_answer),
                tooltip: 'Start Over',
                onPressed: () {
                    Navigator.push(
                        ctxt,
                        new MaterialPageRoute(builder: (ctxt) => new SoiledScreen()),
                    );
                },
              ),
            ]
          ),

        ]  
      )
    );
  }
}
