import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget ContainerCircle(String text, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 50,
        height: 50,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.red,
        ),
        child: Center(child: Text(text)),
      ),
    );
  }

  List items = [
    Container(
      color: Colors.amber,
    ),
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.white,
    ),
    Container(
      color: Colors.black,
    ),
  ];
  late PageController pageController;
  @override
  void initState() {
    pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: items.length,
              physics: const NeverScrollableScrollPhysics(),
              controller: pageController,
              itemBuilder: (context, index) {
                return items[index];
              },
            ),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ContainerCircle('1', () {
                pageController.nextPage(
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.ease);
              }),
           
              ContainerCircle('2', () {
                pageController.nextPage(
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.ease);
              }),
             
              ContainerCircle('3', () {
                pageController.nextPage(
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.ease);
              }),
              
              ContainerCircle('4', () {
                pageController.nextPage(
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.ease);
              }),
            ],
          )
        ],
      ),
    );
  }
}

class ModelItem{
  String name;
  ModelItem({required this.name});
  List<ModelItem> modelItem = [
    ModelItem(name: "ahmed"),
    ModelItem(name: "mmdc"),
    ModelItem(name: "bfg"),
    ModelItem(name: "fvffv"),

  ];
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}