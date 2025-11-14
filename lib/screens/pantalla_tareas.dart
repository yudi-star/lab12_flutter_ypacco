import 'package:flutter/cupertino.dart';
import 'package:lab08_flutter_ypacco/widgets/tarea_item_card.dart';

class PantallaTareas extends StatefulWidget {
  const PantallaTareas({super.key});

  @override
  State<PantallaTareas> createState() => _PantallaTareasState();
}

class _PantallaTareasState extends State<PantallaTareas> {
  String dropdownValue = 'Normal';

  void _showPicker(BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => Container(
        height: 216,
        padding: const EdgeInsets.only(top: 6.0),
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        color: CupertinoColors.systemBackground.resolveFrom(context),
        child: SafeArea(
          top: false,
          child: CupertinoPicker(
            magnification: 1.22,
            squeeze: 1.2,
            useMagnifier: true,
            itemExtent: 32.0,
            scrollController: FixedExtentScrollController(
              initialItem: ['Normal', 'Urgente', 'Baja'].indexOf(dropdownValue),
            ),
            onSelectedItemChanged: (int selectedItem) {
              setState(() {
                dropdownValue = ['Normal', 'Urgente', 'Baja'][selectedItem];
              });
            },
            children: const [
              Center(child: Text('Normal')),
              Center(child: Text('Urgente')),
              Center(child: Text('Baja')),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Registro de Tareas'),
        backgroundColor: CupertinoColors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            GestureDetector(
              onTap: () => _showPicker(context),
              child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 12.0),
                decoration: BoxDecoration(
                  color: CupertinoColors.systemGrey6,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      dropdownValue,
                      style: const TextStyle(
                        fontSize: 16,
                        color: CupertinoColors.black,
                        inherit: false,
                      ),
                    ),
                    const Icon(
                      CupertinoIcons.chevron_down,
                      color: CupertinoColors.systemGrey,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: const [
                  TareaItemCard(
                      titulo: 'Terminar el proyecto Flutter',
                      prioridad: 'Alta'),
                  TareaItemCard(
                      titulo: 'Junta de equipo a las 10 AM',
                      prioridad: 'Alta'),
                  TareaItemCard(titulo: 'Comprar café', prioridad: 'Media'),
                  TareaItemCard(
                      titulo: 'Leer documentación', prioridad: 'Baja'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}