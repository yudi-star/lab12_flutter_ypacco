import 'package:flutter/cupertino.dart';

class TareaItemCard extends StatelessWidget {
  final String titulo;
  final String prioridad;

  const TareaItemCard({
    super.key,
    required this.titulo,
    required this.prioridad,
  });


  Color _getPrioridadColor() {
    switch (prioridad.toLowerCase()) {
      case 'alta':
        return CupertinoColors.systemPink;
      case 'media':
        return CupertinoColors.systemOrange;
      case 'baja':
        return CupertinoColors.systemBlue;
      default:
        return CupertinoColors.systemGrey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12.0),
      decoration: BoxDecoration(
        color: CupertinoColors.systemGrey6,
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(color: _getPrioridadColor(), width: 1.5),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
        child: Row(
          children: [
            Icon(
              CupertinoIcons.square,
              color: _getPrioridadColor(),
              size: 24,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                titulo,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: CupertinoColors.black,
                  inherit: false,
                ),
              ),
            ),
            Text(
              prioridad,
              style: TextStyle(
                color: _getPrioridadColor(),
                fontWeight: FontWeight.bold,
                fontSize: 14,
                inherit: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}