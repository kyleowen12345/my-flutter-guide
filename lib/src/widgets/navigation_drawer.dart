import 'package:flutter/material.dart';


class NavbarDrawer extends StatelessWidget {
  const NavbarDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color:  Colors.teal,
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                  children: [
                  const SizedBox(height: 12),
                  // buildSearchField(),
                  // const SizedBox(height: 24),
                  buildMenuItem(
                    text: 'Home',
                    icon: Icons.home,
                    onClicked: () {
                      Navigator.pushNamed(context, '/');
                    },
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Saved ',
                    icon: Icons.save_outlined,
                    onClicked: () {
                      Navigator.pushNamed(context, '/completedtodos');
                    },
                  ),
                  // const SizedBox(height: 16),
                  // buildMenuItem(
                  //   text: 'Workflow',
                  //   icon: Icons.workspaces_outline,
                  //   onClicked: () {},
                  // ),
                  // const SizedBox(height: 16),
                  // buildMenuItem(
                  //   text: 'Updates',
                  //   icon: Icons.update,
                  //   onClicked: () {},
                  // ),
                  // const SizedBox(height: 24),
                  // const Divider(color: Colors.white70),
                  // const SizedBox(height: 24),
                  // buildMenuItem(
                  //   text: 'Plugins',
                  //   icon: Icons.account_tree_outlined,
                  //   onClicked: () {},
                  // ),
                  // const SizedBox(height: 16),
                  // buildMenuItem(
                  //   text: 'Notifications',
                  //   icon: Icons.notifications_outlined,
                  //   onClicked: () {},
                  // ),
                  ],
              )
              )
          ]
          ),
        ),
    );
  }
   Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

   Widget buildSearchField() {
    final color = Colors.white;

    return TextField(
      style: TextStyle(color: color),
      decoration: InputDecoration(
        contentPadding:const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        hintText: 'Search',
        hintStyle: TextStyle(color: color),
        prefixIcon: Icon(Icons.search, color: color),
        filled: true,
        fillColor: Colors.white12,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
      ),
    );
  }
  // void selectedItem(BuildContext context, int index) {
  //   Navigator.of(context).pop();

  //   switch (index) {
  //     case 0:
  //       Navigator.of(context).push(MaterialPageRoute(
  //         builder: (context) => PeoplePage(),
  //       ));
  //       break;
  //     case 1:
  //       Navigator.of(context).push(MaterialPageRoute(
  //         builder: (context) => FavouritesPage(),
  //       ));
  //       break;
  //   }
  // }
}