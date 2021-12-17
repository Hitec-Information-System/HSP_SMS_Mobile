import 'package:flutter/material.dart';
import 'package:web/features/home/core/presentation/prototest/child1_page.dart';
import 'package:web/features/home/core/presentation/prototest/child2_page.dart';
import 'package:web/features/home/core/presentation/prototest/parent_inherited_widget.dart';

class ParentPage extends StatefulWidget {
  const ParentPage({Key? key}) : super(key: key);

  @override
  _ParentPageState createState() => _ParentPageState();
}

class _ParentPageState extends State<ParentPage>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  String myTitle = "My Parent Title";
  String child1Title = "Child 1";
  String child2Title = "Child 2";

  void updateChild2(String text) {
    setState(() {
      child2Title = text;
    });
  }

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: InheritedParentWidget(
        controller: _controller,
        parentTitle: myTitle,
        child1Title: child1Title,
        child2Title: child2Title,
        child: Column(
          children: [
            ListTile(
              title: Text(
                myTitle,
                textAlign: TextAlign.center,
              ),
            ),
            ElevatedButton(
              child: const Text("Action 1"),
              onPressed: () {
                setState(() {
                  child1Title = "Update from Parent";
                });
              },
            ),
            TabBar(
              controller: _controller,
              tabs: const [
                Tab(
                  text: "First",
                  icon: Icon(Icons.check_circle),
                ),
                Tab(
                  text: "Second",
                  icon: Icon(Icons.crop_square),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _controller,
                children: [
                  Child1Page(
                    onParentAction: (value) => setState(() {
                      myTitle = value;
                    }),
                    onChild2Action: updateChild2,
                  ),
                  Child2Page(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
