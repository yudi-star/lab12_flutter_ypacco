import 'package:flutter/cupertino.dart';
import 'package:lab08_flutter_ypacco/screens/pantalla_dashboard.dart';
import 'package:lab08_flutter_ypacco/screens/pantalla_inicio.dart';
import 'package:lab08_flutter_ypacco/screens/pantalla_menu.dart';
import 'package:lab08_flutter_ypacco/screens/pantalla_perfil.dart';
import 'package:lab08_flutter_ypacco/screens/pantalla_tareas.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Gestor de Tareas Pro',
      debugShowCheckedModeBanner: false,
      // Tema de iOS con colores personalizados
      theme: const CupertinoThemeData(
        primaryColor: CupertinoColors.systemPink,
        scaffoldBackgroundColor: CupertinoColors.white,
        barBackgroundColor: CupertinoColors.white,
        textTheme: CupertinoTextThemeData(
          navTitleTextStyle: TextStyle(
            color: CupertinoColors.black,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      // Rutas de navegación
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaInicio(),
        '/menu': (context) => const PantallaMenu(),
        '/dashboard': (context) => const PantallaDashboard(),
        '/perfil': (context) => const PantallaPerfil(),
        '/tareas': (context) => const PantallaTareas(),
      },
    );
  }
}