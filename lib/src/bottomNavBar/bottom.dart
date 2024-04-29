import "package:flutter/material.dart";

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return BottomNavigationBar(

      type: BottomNavigationBarType.fixed,
      
      items: [  

        const BottomNavigationBarItem( 
            icon: Icon(Icons.home), label: "Início"),

        const BottomNavigationBarItem(
            icon: Icon(Icons.search), label: "Buscar"),

        const BottomNavigationBarItem(
            icon: Icon(Icons.event), label: "Eventos"),
            
        const BottomNavigationBarItem(
            icon: Icon(Icons.person), label: "Perfil"),

      ],
    );
  }
}