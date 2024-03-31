import 'package:flutter/material.dart';

class NavigationDestinations {
  static const paddingValue = EdgeInsets.symmetric(vertical: 5);

  static List<NavigationRailDestination> getDestinations(BuildContext context) {
    return [
      const NavigationRailDestination(
        icon: Icon(Icons.home_outlined),
        selectedIcon: Icon(Icons.home_rounded),
        label: Text('Home'),
        padding: paddingValue,
      ),
      const NavigationRailDestination(
        icon: Icon(Icons.history_outlined),
        selectedIcon: Icon(Icons.history_rounded),
        label: Text('Orders'),
        padding: paddingValue,
      ),
      const NavigationRailDestination(
        icon: Icon(Icons.inbox_outlined),
        selectedIcon: Icon(Icons.inbox_rounded),
        label: Text('Inbox'),
        padding: paddingValue,
      ),
      const NavigationRailDestination(
        icon: Icon(Icons.person_outline),
        selectedIcon: Icon(Icons.person_rounded),
        label: Text('Account'),
        padding: paddingValue,
      ),
    ];
  }

  static List<NavigationDestination> getMobileDestinations(BuildContext context) {
    return [
      const NavigationDestination(
        icon: Icon(Icons.home_outlined),
        selectedIcon: Icon(Icons.home_rounded),
        label: 'Home',
      ),
      const NavigationDestination(
        icon: Icon(Icons.history_outlined),
        selectedIcon: Icon(Icons.history_rounded),
        label: 'Orders',
      ),
      const NavigationDestination(
        icon: Icon(Icons.inbox_outlined),
        selectedIcon: Icon(Icons.inbox_rounded),
        label: 'Inbox',
      ),
      const NavigationDestination(
        icon: Icon(Icons.person_outline),
        selectedIcon: Icon(Icons.person_rounded),
        label: 'Account',
      ),
    ];
  }
}