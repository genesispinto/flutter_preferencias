import 'package:flutter/material.dart';
import 'package:preferences_app/screens/screens.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      
      backgroundColor: Colors.blue,
      child: ListView(
        padding: EdgeInsets.zero,
        children:  [
           const _DrawerHeader(),
           ListTile(
            leading:  const Icon(Icons.pages_outlined),
            title: const Text('Home'),
            onTap: () => Navigator.pushReplacementNamed(context, HomeScreen.routerName),

           ),
           ListTile(
            leading:  const Icon(Icons.people_outline),
            title: const Text('People'),
            onTap: () {},

           ),
           ListTile(
            leading:  const Icon(Icons.settings_outlined),
            title: const Text('settings'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, SettingsScreen.routerName);
            } ,

           )
        ],
      )
    );
  }
}

class _DrawerHeader extends StatelessWidget {
  const _DrawerHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/menu-img.jpg'),
          fit: BoxFit.cover
          )
      ),
      child:  Container(),
    
    );
  }
}