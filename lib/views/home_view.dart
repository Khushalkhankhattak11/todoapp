import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.3,
                color: Color.fromARGB(255, 9, 5, 243),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        "October 7, 2023",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "My Todo List",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
              top: 170,
              left: 0,
              right: 0,
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 140, 119, 141)),
                      child: ListView.builder(
                          physics: AlwaysScrollableScrollPhysics(),
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          itemCount: 12,
                          itemBuilder: (context, index) {
                            return Text('kkk');
                          }),
                    ),
                    SizedBox(height: 10),
                    Text("Completed"),
                    SizedBox(height: 10),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 140, 119, 141)),
                      child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          itemCount: 12,
                          itemBuilder: (context, index) {
                            return Text('kkk');
                          }),
                    ),

                    SizedBox(height: 10), 

                    ElevatedButton(onPressed: (){}, child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text("Add New Task"),
                    )),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
