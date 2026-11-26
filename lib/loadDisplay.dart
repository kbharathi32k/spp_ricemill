import 'package:flutter/material.dart';

class LoadDisplay extends StatefulWidget {
  const LoadDisplay({super.key});

  @override
  State<LoadDisplay> createState() => _LoadDisplayState();
}

class _LoadDisplayState extends State<LoadDisplay> {
  // Ethu select aagirukku nu paaka ma
  int selectedIndex = 0;
  TextStyle myTextStyle = const TextStyle(
    fontFamily: 'Poppins',
    fontSize: 13,
    fontWeight: FontWeight.w600,
  );
  bool val1 = false;
  bool val2 = false;

  TextStyle myButtonStyle = const TextStyle(
    color: Color.fromARGB(1, 12, 11, 11),
    fontFamily: 'Poppins',
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
  // Left side menu list ma
  final List<Map<String, dynamic>> menuList = [
    {'title': 'Load 1'},
    {'title': 'Load 2'},
    {'title': 'Load 3'},
    {'title': 'Load 4'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 224, 202, 202),
      body: Row(
        children: [
          // 1. LEFT SIDE MENU MA
          Container(
            width: 250,
            color: Colors.red.shade400,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    "No. Of Load",
                    style: TextStyle(
                      color: Color.fromARGB(255, 14, 14, 14),
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: menuList.length,
                    itemBuilder: (context, index) {
                      bool isSelected = selectedIndex == index;
                      return InkWell(
                        onTap: () {
                          setState(() {
                            selectedIndex = index; // Click pannathum maathum ma
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 2,
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 12,
                          ),
                          decoration: BoxDecoration(
                            border: isSelected
                                ? Border.all(width: 1, color: Colors.black)
                                : Border.all(width: 0),
                            color: isSelected
                                ? Colors.red.shade200
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                menuList[index]['icon'],
                                color: Colors.white,
                                size: 20,
                              ),
                              const SizedBox(width: 12),
                              Text(
                                menuList[index]['title'],
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),

          // 2. RIGHT SIDE CONTENT MA
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: _buildRightContent(),
            ),
          ),
        ],
      ),
    );
  }

  // Right side la enna kaatanum nu inga decide pannurom ma
  Widget _buildRightContent() {
    String title = menuList[selectedIndex]['title'];

    if (selectedIndex == 0) {
      // You and Google page ma
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
          const SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 122, 96, 96),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              margin: const EdgeInsets.only(
                left: 30,
                right: 30,
                top: 20,
                bottom: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 50,
                        width: 150,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(
                              255,
                              141,
                              212,
                              138,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.delete_outline, size: 15),
                              Text('Nawab', style: myButtonStyle),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      SizedBox(
                        height: 50,
                        width: 150,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(
                              255,
                              141,
                              212,
                              138,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.delete_outline, size: 15),
                              Text('Nawab', style: myButtonStyle),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                    ],
                  ),
                  SizedBox(height: 40),
                  DataTable(
                    border: TableBorder.symmetric(
                      outside: const BorderSide(
                        width: 0.2,
                        color: Colors.black,
                      ),
                    ),
                    headingRowColor: MaterialStateProperty.all(
                      Color.fromARGB(
                        255,
                        158,
                        233,
                        158,
                      ), // Light Green - Mela button color maathiri
                    ),
                    headingTextStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                    dataTextStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    dataRowColor: MaterialStateColor.resolveWith(
                      (states) => const Color.fromARGB(255, 150, 138, 138),
                    ),
                    columns: const [
                      DataColumn(
                        label: SizedBox(width: 175, child: Text('KiloGram')),
                      ),

                      DataColumn(
                        label: SizedBox(width: 152, child: Text('Rate')),
                      ),
                      DataColumn(
                        label: SizedBox(width: 172, child: Text('Quantity')),
                      ),
                      DataColumn(
                        label: SizedBox(width: 100, child: Text('Total')),
                      ),
                    ],
                    rows: [
                      DataRow(
                        cells: [
                          DataCell(SizedBox(width: 175, child: Text('25'))),
                          const DataCell(
                            SizedBox(width: 172, child: Text('1200')),
                          ),
                          const DataCell(
                            SizedBox(width: 152, child: Text('3')),
                          ),
                          const DataCell(
                            SizedBox(width: 100, child: Text('3600')),
                          ),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(SizedBox(width: 175, child: Text('25'))),
                          const DataCell(
                            SizedBox(width: 172, child: Text('1200')),
                          ),
                          const DataCell(
                            SizedBox(width: 152, child: Text('3')),
                          ),
                          const DataCell(
                            SizedBox(width: 100, child: Text('3600')),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    } else {
      // Vera menu click panna ithu varum ma
      return Center(
        child: Text(
          "$title Page",
          style: const TextStyle(color: Colors.white, fontSize: 24),
        ),
      );
    }
  }
}
