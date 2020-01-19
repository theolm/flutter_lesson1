import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Curriculum Vitae'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var colors = [Colors.black, Colors.red, Colors.blue, Colors.green];
  int colorPos = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colors[colorPos],
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 32),
              Row(
                children: <Widget>[
                  SizedBox(
                    height: 120,
                    width: 120,
                    child: Image.network(
                        'https://scontent.fpoa13-1.fna.fbcdn.net/v/t1.0-9/29196456_1856976757670070_7042128371332734261_n.jpg?_nc_cat=102&_nc_oc=AQlZplkELpL2Vf10sICTmJt9CZeLzFNyVPHuRXY7ddkqTY0mj3xx-n_ax64iAAObemU&_nc_ht=scontent.fpoa13-1.fna&oh=20239a23695337c9341c1fc0189603f2&oe=5ECE1C46'),
                  ),
                  SizedBox(width: 16),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Theodoro L Mota',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        'Desenvolvedor Mobile',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'theolm.mota@gmail.com',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 32),
              Text(
                'Experiencia: ',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: colors[colorPos],
                ),
              ),
              SizedBox(height: 16),
              Text(
                'MOCKA, Porto Alegre — Desenvolvedor Android',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'QueenMob, Porto Alegre — Desenvolvedor Android',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Apple Academy, Porto Alegre — Desenvolvedor iOS',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 32),
              Text(
                'EDUCAÇÃO: ',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: colors[colorPos],
                ),
              ),
              SizedBox(height: 16),
              Text(
                'UNIVERSIDADE FEDERAL DO RIO GRANDE DO SUL, Porto Alegre — Ciência da Computação',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 32),
              Text(
                'PROJETOS: ',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: colors[colorPos],
                ),
              ),
              SizedBox(height: 16),
              Text(
                'UFRGS MOBILE — Aplicativo oficial da universidade',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeColor,
        backgroundColor: colors[colorPos],
        tooltip: 'Increment',
        child: Icon(Icons.refresh),
      ),
    );
  }

  void changeColor() {
    setState(() {
      colorPos < colors.length - 1 ? colorPos++ : colorPos = 0;
    });
  }
}
