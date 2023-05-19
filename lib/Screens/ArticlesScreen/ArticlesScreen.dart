import 'package:apiero_medica/Constants/Constants.dart';
import 'package:flutter/material.dart';

class ArticlesScreen extends StatefulWidget {
  const ArticlesScreen({super.key});

  @override
  State<ArticlesScreen> createState() => _ArticlesScreenState();
}

class _ArticlesScreenState extends State<ArticlesScreen> {
  // tab controller
  TabController? _tabController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants().Bg,
      appBar: AppBar(
        backgroundColor: Constants().Bg,
        elevation: 0,
        title: Text(
          'Articles',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'Trendings',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Text(
                  'See All',
                  style: TextStyle(
                    color: Constants().Button,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.27,
                width: MediaQuery.of(context).size.width * 0.95,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.15,
                            width: MediaQuery.of(context).size.width * 0.55,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage('assets/Images/doctor2.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.52,
                            height: MediaQuery.of(context).size.height * 0.07,
                            child: Expanded(
                              child: Text(
                                'How to take care of your health in the...',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              ListTile(
                title: Text(
                  'All Articles',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Text(
                  'See All',
                  style: TextStyle(
                    color: Constants().Button,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              // TabBar(
              //   indicatorColor: Constants().Button,
              //   labelColor: Constants().Button,
              //   unselectedLabelColor: Colors.black,
              //   automaticIndicatorColorAdjustment: true,
              //   indicator: UnderlineTabIndicator(
              //     borderRadius: BorderRadius.circular(45),
              //     borderSide: BorderSide(
              //       width: 4,
              //       color: Constants().Button,
              //     ),
              //   ),
              //   tabs: [
              //     Tab(
              //       child: Text(
              //         'All',
              //         style: TextStyle(
              //           fontSize: 16,
              //           fontWeight: FontWeight.w600,
              //         ),
              //       ),
              //     ),
              //     Tab(
              //       child: Text(
              //         'Health',
              //         style: TextStyle(
              //           fontSize: 16,
              //           fontWeight: FontWeight.w600,
              //         ),
              //       ),
              //     ),
              //     Tab(
              //       child: Text(
              //         'Fitness',
              //         style: TextStyle(
              //           fontSize: 16,
              //           fontWeight: FontWeight.w600,
              //         ),
              //       ),
              //     ),
              //     Tab(
              //       child: Text(
              //         'Nutrition',
              //         style: TextStyle(
              //           fontSize: 16,
              //           fontWeight: FontWeight.w600,
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              // TabBarView(
              //   children: [
              //     Container(
              //       height: MediaQuery.of(context).size.height * 0.6,
              //       width: MediaQuery.of(context).size.width * 0.95,
              //       child: ListView.builder(
              //         itemCount: 5,
              //         itemBuilder: (context, index) {
              //           return Padding(
              //             padding: const EdgeInsets.all(8.0),
              //             child: Container(
              //               height: MediaQuery.of(context).size.height * 0.15,
              //               width: MediaQuery.of(context).size.width * 0.55,
              //               decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(10),
              //                 image: DecorationImage(
              //                   image: AssetImage('assets/Images/doctor2.jpg'),
              //                   fit: BoxFit.cover,
              //                 ),
              //               ),
              //             ),
              //           );
              //         },
              //       ),
              //     ),
              //     Container(
              //       height: MediaQuery.of(context).size.height * 0.6,
              //       width: MediaQuery.of(context).size.width * 0.95,
              //       child: ListView.builder(
              //         itemCount: 5,
              //         itemBuilder: (context, index) {
              //           return Padding(
              //             padding: const EdgeInsets.all(8.0),
              //             child: Container(
              //               height: MediaQuery.of(context).size.height * 0.15,
              //               width: MediaQuery.of(context).size.width * 0.55,
              //               decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(10),
              //                 image: DecorationImage(
              //                   image: AssetImage('assets/Images/doctor2.jpg'),
              //                   fit: BoxFit.cover,
              //                 ),
              //               ),
              //             ),
              //           );
              //         },
              //       ),
              //     ),
              //     Container(
              //       height: MediaQuery.of(context).size.height * 0.6,
              //       width: MediaQuery.of(context).size.width * 0.95,
              //       child: ListView.builder(
              //         itemCount: 5,
              //         itemBuilder: (context, index) {
              //           return Padding(
              //             padding: const EdgeInsets.all(8.0),
              //             child: Container(
              //               height: MediaQuery.of(context).size.height * 0.15,
              //               width: MediaQuery.of(context).size.width * 0.55,
              //               decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(10),
              //                 image: DecorationImage(
              //                   image: AssetImage('assets/Images/doctor2.jpg'),
              //                   fit: BoxFit.cover,
              //                 ),
              //               ),
              //             ),
              //           );
              //         },
              //       ),
              //     ),
              //     Container(
              //       height: MediaQuery.of(context).size.height * 0.6,
              //       width: MediaQuery.of(context).size.width * 0.95,
              //       child: ListView.builder(
              //         itemCount: 5,
              //         itemBuilder: (context, index) {
              //           return Padding(
              //             padding: const EdgeInsets.all(8.0),
              //             child: Container(
              //               height: MediaQuery.of(context).size.height * 0.15,
              //               width: MediaQuery.of(context).size.width * 0.55,
              //               decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(10),
              //                 image: DecorationImage(
              //                   image: AssetImage('assets/Images/doctor2.jpg'),
              //                   fit: BoxFit.cover,
              //                 ),
              //               ),
              //             ),
              //           );
              //         },
              //       ),
              //     ),
              //   ],
              // )
            ],
          ),
        ),
      ),
    );
  }
}
