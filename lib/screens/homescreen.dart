import 'package:flutter/material.dart';
import 'package:keepnotesapk/components/homenotesui.dart';
import 'package:keepnotesapk/components/newnote.dart';
import 'package:keepnotesapk/screens/menu_screnn.dart';
import 'package:keepnotesapk/state/dataprovider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int view = 0;
  Widget ui = NotesUi();

  final String note1 =
      "this is note this is note this is note this is note tthis is note this is note this is note this is note this is note tthis is note this is note this is note this is note this is note tthis is note";

  final String note2 =
      "this is note this is note this is note this is note this is note this is note this is note this is note tthis is note";

  GlobalKey<ScaffoldState> _drawerkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    var data = Provider.of<DataProvider>(context).data;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const NewNote(),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
      endDrawerEnableOpenDragGesture: true,
      key: _drawerkey,
      drawer: const MenuScreen(),
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 54, 53, 53),
                        borderRadius: BorderRadius.circular(5)),
                    width: MediaQuery.of(context).size.width,
                    height: 55,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          color: Colors.white,
                          onPressed: () {
                            _drawerkey.currentState!.openDrawer();
                          },
                          icon: const Icon(Icons.menu),
                        ),
                        Container(
                          width: 200,
                          height: 55,
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "search your notes",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        TextButton(
                          style: ButtonStyle(
                              iconColor: MaterialStateProperty.resolveWith(
                                  (states) => Colors.white),
                              overlayColor: MaterialStateColor.resolveWith(
                                (states) => Colors.white.withOpacity(0.1),
                              ),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(50.0)))),
                          onPressed: () {
                            if (view == 0) {
                              setState(() {
                                ui = NotesUi();
                                view = 1;
                              });
                            } else {
                              setState(() {
                                ui = ListUi();
                                view = 0;
                              });
                            }
                          },
                          child: Icon(Icons.grid_view),
                        ),
                        TextButton(
                            style: ButtonStyle(
                                iconColor: MaterialStateProperty.resolveWith(
                                    (states) => const Color.fromARGB(
                                        255, 209, 209, 209))),
                            onPressed: () {},
                            child: Icon(Icons.account_circle)),
                      ],
                    ),
                  ),
                ),
                ui,
              ],
            ),
          ),
        ),
      )),
    );
  }
}
