

    import 'package:flutter/material.dart';
    import 'package:badges/badges.dart' as badges;

    class BadgeComponent extends StatelessWidget {
      const BadgeComponent({super.key});

      @override
      Widget build(BuildContext context) {
        return  Scaffold(
          body: Center(
            child: badges.Badge(
               badgeContent: const Text('3'),
              badgeStyle: badges.BadgeStyle( // Style of the badgebadgeColor: Colors.red, // Background color of the badge
                padding:  const EdgeInsets.all(6.0), // Padding around the badge content
                borderRadius: BorderRadius.circular(8.0), // Border radius of the badge
                borderSide: const BorderSide(color: Colors.white, width: 2.0), // Border around the badge
                elevation: 2.0, // Elevation of the badge
              ),
              badgeAnimation:  const badges.BadgeAnimation.slide( // Animation for showing/hiding the badge
                toAnimate: true, // Whether to animate the badgeanimationDuration: Duration(milliseconds: 200), // Duration of the animation
                curve: Curves.easeInOut, // Animation curve
              ),
              position: badges.BadgePosition.topEnd(top: -10, end: -10), // Position of the badge relative to the child
              showBadge: true, // Whether to show the badge
              ignorePointer: false, // Whether the badge should ignore pointer events
              onTap: () { // Callback when the badge is tapped
                // Handle badge tap
              },
              child: IconButton( // The child widget that the badge is attached to
                icon: const Icon(Icons.notifications),
                onPressed: () {
                  // Handle icon button press
                },
              ),
          )),
        );
      }
    }





