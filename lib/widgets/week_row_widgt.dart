import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:mindful_mentor/utils/consts.dart' as consts;

class WeekRowWidget extends StatelessWidget {
  final bool isActive;
  const WeekRowWidget({
    super.key, 
    this.isActive = false
    });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        badges.Badge(
          showBadge: true,
          badgeStyle: badges.BadgeStyle(
            
            badgeColor: isActive ? Colors.blue : Colors.white,
            shape: badges.BadgeShape.circle,
            borderSide:
                const BorderSide(color: consts.scaffoldBackgroundColor, width: 2),
            padding: const EdgeInsets.only(left: 6, right: 6, top: 1.5, bottom: 1),
          ),
          badgeContent: const Text('S'),
          child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(999)),
            child: const Center(
                child: Text(
              '10',
              style: TextStyle(
                color: consts.mediumBlack,
                fontSize: 18,
                fontFamily: 'TitilliumWeb',
                fontWeight: FontWeight.bold,
              ),
            )),
          ),
        ),
        badges.Badge(
          showBadge: true,
          badgeStyle: const badges.BadgeStyle(
            badgeColor: Color.fromARGB(163, 255, 255, 255),
            shape: badges.BadgeShape.circle,
            borderSide:
                BorderSide(color: consts.scaffoldBackgroundColor, width: 2),
            padding: EdgeInsets.only(left: 6, right: 6, top: 1.5, bottom: 1),
          ),
          badgeContent: const Text('M'),
          child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
                color: const Color.fromARGB(128, 255, 255, 255), borderRadius: BorderRadius.circular(999)),
            child: const Center(
                child: Text(
              '11',
              style: TextStyle(
                color: consts.mediumBlack,
                fontSize: 18,
                fontFamily: 'TitilliumWeb',
                fontWeight: FontWeight.bold,
              ),
            )),
          ),
        ),
        badges.Badge(
          showBadge: true,
          badgeStyle: const badges.BadgeStyle(
            badgeColor: Colors.white,
            shape: badges.BadgeShape.circle,
            borderSide:
                BorderSide(color: consts.scaffoldBackgroundColor, width: 2),
            padding: EdgeInsets.only(left: 6, right: 6, top: 1.5, bottom: 1),
          ),
          badgeContent: const Text('T'),
          child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(999)),
            child: const Center(
                child: Text(
              '12',
              style: TextStyle(
                color: consts.mediumBlack,
                fontSize: 18,
                fontFamily: 'TitilliumWeb',
                fontWeight: FontWeight.bold,
              ),
            )),
          ),
        ),
        badges.Badge(
          showBadge: true,
          badgeStyle: const badges.BadgeStyle(
            badgeColor: Colors.white,
            shape: badges.BadgeShape.circle,
            borderSide:
                BorderSide(color: consts.scaffoldBackgroundColor, width: 2),
            padding: EdgeInsets.only(left: 6, right: 6, top: 1.5, bottom: 1),
          ),
          badgeContent: const Text('W'),
          child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(999)),
            child: const Center(
                child: Text(
              '13',
              style: TextStyle(
                color: consts.mediumBlack,
                fontSize: 18,
                fontFamily: 'TitilliumWeb',
                fontWeight: FontWeight.bold,
              ),
            )),
          ),
        ),
        badges.Badge(
          showBadge: true,
          badgeStyle: const badges.BadgeStyle(
            badgeColor: Colors.white,
            shape: badges.BadgeShape.circle,
            borderSide:
                BorderSide(color: consts.scaffoldBackgroundColor, width: 2),
            padding: EdgeInsets.only(left: 6, right: 6, top: 1.5, bottom: 1),
          ),
          badgeContent: const Text('T'),
          child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(999)),
            child: const Center(
                child: Text(
              '14',
              style: TextStyle(
                color: consts.mediumBlack,
                fontSize: 18,
                fontFamily: 'TitilliumWeb',
                fontWeight: FontWeight.bold,
              ),
            )),
          ),
        ),
        badges.Badge(
          showBadge: true,
          badgeStyle: const badges.BadgeStyle(
            badgeColor: Colors.white,
            shape: badges.BadgeShape.circle,
            borderSide:
                BorderSide(color: consts.scaffoldBackgroundColor, width: 2),
            padding: EdgeInsets.only(left: 6, right: 6, top: 1.5, bottom: 1),
          ),
          badgeContent: const Text('F'),
          child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(999)),
            child: const Center(
                child: Text(
              '15',
              style: TextStyle(
                color: consts.mediumBlack,
                fontSize: 18,
                fontFamily: 'TitilliumWeb',
                fontWeight: FontWeight.bold,
              ),
            )),
          ),
        ),
        badges.Badge(
          showBadge: true,
          badgeStyle: const badges.BadgeStyle(
            badgeColor: Colors.white,
            shape: badges.BadgeShape.circle,
            borderSide:
                BorderSide(color: consts.scaffoldBackgroundColor, width: 2),
            padding: EdgeInsets.only(left: 6, right: 6, top: 1.5, bottom: 1),
          ),
          badgeContent: const Text('S'),
          child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(999)),
            child: const Center(
                child: Text(
              '16',
              style: TextStyle(
                color: consts.mediumBlack,
                fontSize: 18,
                fontFamily: 'TitilliumWeb',
                fontWeight: FontWeight.bold,
              ),
            )),
          ),
        )
      ],
    );
  }
}
