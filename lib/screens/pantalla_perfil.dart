import 'package:flutter/cupertino.dart';

class PantallaPerfil extends StatelessWidget {
  const PantallaPerfil({super.key});

  void _mostrarAlerta(BuildContext context) {
    showCupertinoDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: const Text('¡Éxito!'),
          content: const Text('Tus cambios han sido guardados.'),
          actions: <Widget>[
            CupertinoDialogAction(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Registro de Usuario'),
        backgroundColor: CupertinoColors.white,
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const Center(
                child: Icon(
                  CupertinoIcons.person_circle_fill,
                  size: 120,
                  color: CupertinoColors.systemPink,
                ),
              ),
              const SizedBox(height: 40),
              // Campo de Nombre
              const Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Text(
                  'Nombre',
                  style: TextStyle(
                    fontSize: 14,
                    color: CupertinoColors.systemGrey,
                    inherit: false,
                  ),
                ),
              ),
              CupertinoTextField(
                placeholder: 'Ingresa tu nombre',
                controller: TextEditingController(text: 'Nombre de Ejemplo'),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: CupertinoColors.systemGrey6,
                  borderRadius: BorderRadius.circular(8),
                ),
                prefix: const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Icon(
                    CupertinoIcons.person,
                    color: CupertinoColors.systemGrey,
                    size: 20,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Campo de Ocupación
              const Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Text(
                  'Ocupación',
                  style: TextStyle(
                    fontSize: 14,
                    color: CupertinoColors.systemGrey,
                    inherit: false,
                  ),
                ),
              ),
              CupertinoTextField(
                placeholder: 'Ingresa tu ocupación',
                controller:
                    TextEditingController(text: 'Desarrollador Flutter'),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: CupertinoColors.systemGrey6,
                  borderRadius: BorderRadius.circular(8),
                ),
                prefix: const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Icon(
                    CupertinoIcons.briefcase,
                    color: CupertinoColors.systemGrey,
                    size: 20,
                  ),
                ),
              ),
              const SizedBox(height: 50),
              CupertinoButton.filled(
                onPressed: () {
                  _mostrarAlerta(context);
                },
                child: const Text(
                  'Guardar Cambios',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}