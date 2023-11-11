import 'package:flutter/material.dart';
import 'package:pantalla_inicio/perfil.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        backgroundColor: Colors.white, // Color blanco para el AppBar
        iconTheme: IconThemeData(color: Colors.black), // Color negro para el ícono del Drawer
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Alex Aguilar"),
              accountEmail: Text("usuario@example.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('images/usuario.png'),
              ),
              decoration: BoxDecoration(
                color: Colors.red,
              ),
            ),
           ListTile(
              leading: Image.asset(
                'images/maps.png',
                width: 40,
                height: 40,
              ),
              title: Text(
                'Mapa',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              onTap: () {
                // Agregar navegación a la Pagina 1
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              },
            ),
            Divider(), // Divisor
            ListTile(
              leading: Icon(Icons.person), // Icono de perfil
              title: Text('Perfil'),
              onTap: () {
                // Agrega la lógica para navegar a la pantalla de perfil
                // aquí cuando se seleccione 'Perfil'
              },
            ),
            Divider(), // Divisor
            ListTile(
              leading: Icon(Icons.settings), // Icono de configuración
              title: Text('Configuración'),
              onTap: () {
                // Agrega la lógica para navegar a la pantalla de configuración
                // aquí cuando se seleccione 'Configuración'
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text(
              'Bienvenido',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            Text(
              'App de Denuncias y Asistencias Ciudadanas',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),

            SizedBox(height: 24),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _buildIconButton('images/policia.png', 'Policía Nacional Civil'),
                _buildIconButton('images/cruzroja.png', 'Cruz Roja Salvadoreña'),
              ],
            ),

            SizedBox(height: 14),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _buildIconButton('images/bomberos.jpg', 'Bomberos de El Salvador'),
                _buildIconButton('images/proteccion.jpg', 'Protección Civil'),
              ],
            ),

            SizedBox(height: 14),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _buildIconButton('images/fiscalia.jpg', 'Fiscalía General de El Salvador'),
                _buildIconButton('images/procuraduria.png', 'Procuraduría General de El Salvador'),
              ],
            ),

            SizedBox(height: 14),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _buildIconButton('images/fuerza.jpg', 'Fuerza Armada Salvadoreña'),
                _buildIconButton('images/cruzverde.png', 'Cruz Verde Salvadoreña'),
              ],
            ),

            SizedBox(height: 14),
          ],
        ),
      ),
    );
  }

  Widget _buildIconButton(String imageAsset, String label) {
    return Expanded(
      child: Column(
        children: <Widget>[
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Center(
              child: Image.asset(imageAsset, width: 60, height: 60),
            ),
          ),
          SizedBox(height: 6),
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
