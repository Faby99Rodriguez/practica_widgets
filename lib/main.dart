import 'package:flutter/material.dart';
import 'package:practica_widgets/funciones/boton_navegador.dart';
import 'package:practica_widgets/funciones/checkbox.dart';
import 'package:practica_widgets/funciones/dialogo.dart';
import 'package:practica_widgets/funciones/tarjeta.dart';

void main() => runApp(const MyWidi());

class MyWidi extends StatelessWidget {
  const MyWidi({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer'),
      ),
      drawer: const AppDrawer(),
      body: const Center(
       child: Text(''),
      ),
    );
  }
}

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.pink,
            ),
            child: Text(
              'Colección',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
            
          ),
         
          ListTile(
            title: const Text('Boton Navegador'),
            onTap: () {
              Navigator.of(context).pop(); // Cierra el drawer
              // Navega a la pantalla principal
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const NavigationBarApp(),
                  
                ),
              );
            },
          ),
          
          ListTile(
            title: const Text('Card'),
            onTap: () {
              Navigator.of(context).pop(); // Cierra el drawer
              // Navega a la pantalla de configuración
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const CardExampleApp(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text('Alerta'),
            onTap: () {
              Navigator.of(context).pop(); // Cierra el drawer
              // Navega a la pantalla de configuración
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const AlertDialogExampleApp(),
                
                ),
              );
            },
          ),
               ListTile(
              // leading: const Icon(Icons.settings),
              title: const Text('Checkbox'),
              onTap: () {
              Navigator.of(context).pop(); // Cierra el drawer
              // Navega a la pantalla de configuración
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const CheckboxExampleApp(),
                
                ),
              );
            },
          ),

        ],
      ),
    );
  }
}


