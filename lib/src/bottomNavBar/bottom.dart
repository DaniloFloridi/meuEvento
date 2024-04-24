import "package:flutter/material.dart";

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        
        const BottomNavigationBarItem(
            icon: Icon(Icons.home), label: "Home"),
        const BottomNavigationBarItem(
            icon: Icon(Icons.map), label: "Location"),
        const BottomNavigationBarItem(icon: Icon(Icons.event), label: "Ingressos")
    
      ],
    );
  }
}