import 'package:flutter/cupertino.dart';

class PantallaInicio extends StatelessWidget {
  const PantallaInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.white,
      child: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const Icon(
                  CupertinoIcons.check_mark_circled,
                  size: 120,
                  color: CupertinoColors.systemPink,
                ),
                const SizedBox(height: 20),
                const Text(
                  'Gestor de Tareas',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: CupertinoColors.black,
                    inherit: false,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Tu vida organizada, en un solo lugar.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: CupertinoColors.systemGrey,
                    inherit: false,
                  ),
                ),
                const SizedBox(height: 60),
                CupertinoButton.filled(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/menu');
                  },
                  child: const Text(
                    'Entrar',
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
      ),
    );
  }
}