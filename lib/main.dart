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
              decoration: InputDecoration(labelText: 'Email:'),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _senhaController,
              decoration: InputDecoration(labelText: 'Senha:'),
              obscureText: true,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Implementar lógica de autenticação aqui
                String email = _emailController.text;
                String senha = _senhaController.text;

                if ((email == '') && (senha == '')) {
                    print('Email: $email, Senha: $senha');
                    Navigator.push( context,
                        MaterialPageRoute(builder: (context) => MyHome()),
                    );

                }else{
                    _emailController.clear();
                    _senhaController.clear();
                    print('Email/Senha errados !!!');
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
                 MaterialPageRoute(builder: (context) => MyHome(),);
              },
              child: Text('Contatos'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Implementar lógica de autenticação aqui
              },
              child: Text('Mapas'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}