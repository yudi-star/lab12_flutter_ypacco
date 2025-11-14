import 'package:flutter/cupertino.dart';

class PantallaMenu extends StatelessWidget {
  const PantallaMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('MENÚ'),
        backgroundColor: CupertinoColors.white,
      ),
      child: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            _buildMenuTile(
              context,
              icon: CupertinoIcons.square_grid_2x2,
              title: 'Home',
              subtitle: 'Ve el resumen de tu actividad',
              routeName: '/dashboard',
            ),
            _buildMenuTile(
              context,
              icon: CupertinoIcons.person,
              title: 'Profile',
              subtitle: 'Configura tu información personal',
              routeName: '/perfil',
            ),
            _buildMenuTile(
              context,
              icon: CupertinoIcons.list_bullet,
              title: 'Tareas',
              subtitle: 'Administra tus tareas pendientes',
              routeName: '/tareas',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuTile(BuildContext context,
      {required IconData icon,
      required String title,
      required String subtitle,
      required String routeName}) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, routeName);
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 12.0),
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: CupertinoColors.systemGrey6,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              size: 30,
              color: CupertinoColors.systemPink,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: CupertinoColors.black,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      fontSize: 14,
                      color: CupertinoColors.systemGrey,
                    ),
                  ),
                ],
              ),
            ),
            const Icon(
              CupertinoIcons.chevron_right,
              size: 20,
              color: CupertinoColors.systemGrey,
            ),
          ],
        ),
      ),
    );
  }
}