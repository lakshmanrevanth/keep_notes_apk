import 'package:flutter/material.dart';
import 'package:keepnotesapk/screens/settings.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 46, 51, 55),
      child: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                child: const Text(
                  "Google Keep",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Divider(
                color: Colors.white.withOpacity(0.1),
              ),
              const SizedBox(
                height: 15,
              ),
              menu1(),
              const SizedBox(
                height: 15,
              ),
              menu2(),
              const SizedBox(
                height: 15,
              ),
              menuSetting(),
            ],
          ),
        ),
      ),
    );
  }

  Widget menu1() {
    return Padding(
      padding: const EdgeInsets.only(right: 25),
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith(
            (states) => Colors.orange.withOpacity(0.3),
          ),
          overlayColor: MaterialStateProperty.resolveWith(
            (states) => Colors.white.withOpacity(0.1),
          ),
          shape: MaterialStateProperty.all(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
            ),
          ),
        ),
        onPressed: () {},
        child: const Padding(
          padding: EdgeInsets.all(6.0),
          child: Row(
            children: [
              Icon(
                Icons.lightbulb,
                size: 25,
                color: Colors.white,
              ),
              SizedBox(
                width: 25,
              ),
              Text(
                "Notes",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget menu2() {
    return Padding(
      padding: const EdgeInsets.only(right: 25),
      child: TextButton(
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.resolveWith(
            (states) => Colors.white.withOpacity(0.1),
          ),
          shape: MaterialStateProperty.all(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
            ),
          ),
        ),
        onPressed: () {},
        child: const Padding(
          padding: EdgeInsets.all(6.0),
          child: Row(
            children: [
              Icon(
                Icons.archive,
                size: 25,
                color: Colors.white,
              ),
              SizedBox(
                width: 25,
              ),
              Text(
                "Archive",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget menuSetting() {
    return Padding(
      padding: const EdgeInsets.only(right: 25),
      child: TextButton(
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.resolveWith(
            (states) => Colors.white.withOpacity(0.1),
          ),
          shape: MaterialStateProperty.all(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
            ),
          ),
        ),
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Row(
            children: [
              const Icon(
                Icons.settings,
                size: 25,
                color: Colors.white,
              ),
              const SizedBox(
                width: 25,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SettingScreen(),
                    ),
                  );
                },
                child: const Text(
                  "Settings",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
