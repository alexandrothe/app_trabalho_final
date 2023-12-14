import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      title: 'App Trabalho Final Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes : {
        '/': (context) => LoginPage(),
        '/home': (context) =>  MyHome(),
        '/contatos':(context) => MyContatos(),
        '/abastecer':(context) => MyAbastecer(),

    },

    );

  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _senhaController = TextEditingController();

  String _errorMessage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Trabalho Final Flutter'),
      ),
      body: Center(
          child: Column(
          children: [
              Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/2/23/Instituto_Federal_do_Piau%C3%AD_-_Marca_Vertical_2015.svg/1200px-Instituto_Federal_do_Piau%C3%AD_-_Marca_Vertical_2015.svg.png',
               width: 100,
               height: 100,
            ),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email:'),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _senhaController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Senha:'),
              obscureText: true,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Implementar lógica de autenticação aqui
                String email = _emailController.text;
                String senha = _senhaController.text;

                if ((email == 'a') && (senha == 'a')) {
                    print('Email: $email, Senha: $senha');
                    Navigator.push( context,
                        MaterialPageRoute(builder: (context) => MyHome()),
                    );

                }else{
                    _emailController.clear();
                    _senhaController.clear();
                    setState((){
                        _errorMessage = 'Email/Senha errados !!!';
                    });
                   
                }
              },
              child: Text('Entrar'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Implementar lógica de autenticação aqui
               _emailController.clear();
               _senhaController.clear();

              },
              child: Text('Limpar'),
            ),
            SizedBox(height: 16.0),
            Text(
                _errorMessage, style: TextStyle(color: Colors.red),
            )
          ],
        ),
      ),
    );
  }
}


class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();

}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          title: Text('App Trabalho Final de Flutter'),
       ),
       body: Center(
         child: Column(
            children: [
              Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/2/23/Instituto_Federal_do_Piau%C3%AD_-_Marca_Vertical_2015.svg/1200px-Instituto_Federal_do_Piau%C3%AD_-_Marca_Vertical_2015.svg.png',
               width: 100,
               height: 100,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push( context,
                    MaterialPageRoute(builder: (context) => MyContatos()),
                );
              },
              child: Text('Contatos'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push( context,
                    MaterialPageRoute(builder: (context) => MyAbastecer()),
                );
              },
              child: Text('Abastecer'),
            ),
          ],
         ),
       ),
       bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),
          label: 'Home',),
          BottomNavigationBarItem(icon: Icon(Icons.settings),
          label: 'Settings'),
          BottomNavigationBarItem(icon: Icon(Icons.chat),
          label: 'Chat')
       ],
       ) ,
    );
  }
}


class MyContatos extends StatefulWidget {
  const MyContatos({super.key});

  @override
  State<MyContatos> createState() => _MyContatosState();
}

class _MyContatosState extends State<MyContatos> {
  TextEditingController _nomeController = TextEditingController();
  TextEditingController _cpfController = TextEditingController();
  TextEditingController _enderecoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          title: Text('App Trabalho Final de Flutter'),
       ),
       body: Center(
         child: Column(
            children: [
              Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/2/23/Instituto_Federal_do_Piau%C3%AD_-_Marca_Vertical_2015.svg/1200px-Instituto_Federal_do_Piau%C3%AD_-_Marca_Vertical_2015.svg.png',
               width: 100,
               height: 100,
            ),
            TextField(
              controller: _nomeController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nome:'),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _cpfController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'CPF:'),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _enderecoController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Endereço:'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                 //
                 //
              },
              child: Text('Cadastrar'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Implementar lógica de autenticação aqui
                  _nomeController.clear();
                  _cpfController.clear();
                  _enderecoController.clear();

              },
              child: Text('Limpar'),
            ),

          ],
         ),
       ),
    );  
  }
}

class MyAbastecer extends StatefulWidget {
  const MyAbastecer({super.key});

  @override
  State<MyAbastecer> createState() => _MyAbastecerState();
}

class _MyAbastecerState extends State<MyAbastecer> {
    TextEditingController   _textEditeControllerGasolina =  TextEditingController();
    TextEditingController  _textEditeControllerAlcool =  TextEditingController();

    String _errorMessage = '';

    var resultado = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          title: Text('Gasolina vs Álcool'),
       ),
       body: Center(
          child: Column(
              children: [
                    Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Text(
                        'Gasolina x Alcool',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.blue,
                        ),
                      )
                    ),
                    Image.network(
                    'https://media.gettyimages.com/id/504743184/pt/vetorial/posto-de-gasolina-%C3%ADcones-vector.jpg?s=2048x2048&w=gi&k=20&c=Qg3BHB2j3gS-LonwFNIk7t8F_gGcbvc2n7dAxJllOws=',
                    width: 200,
                    height: 200,
                  ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                label: Text('Valor da Gasolina'),
              ),
              controller: _textEditeControllerGasolina,
              onSubmitted: (String valor) {
                print('Valor' + _textEditeControllerGasolina.text);
              },
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                label: Text('Valor do Alcool'),
              ),
              controller: _textEditeControllerAlcool,
              onSubmitted: (String valor) {
                print('Valor' + _textEditeControllerAlcool.text);
              },
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              child: Text('Calcular'),
              onPressed: () {
                    setState(() {
                        resultado = (double.parse(_textEditeControllerAlcool.text) / double.parse(_textEditeControllerGasolina.text) * 100);
                        print('Calcular' + resultado.toString());
                        if (resultado > 70){
                            _errorMessage = 'Abastecer com Álcool.';
                        } else {
                            _errorMessage = 'Abastecer com Gasolina.';
                        }
                    },
                );
              },
            ),
            SizedBox(height: 20),
            Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Text('Resultado: '  +resultado.toStringAsFixed(2)),
            ),
            SizedBox(height: 20),
            Text(
                _errorMessage, style: TextStyle(color: Colors.red),
            )
              ],
                      ),
       )
    );
  }
}


