import 'package:flutter/material.dart';

class LoadInput extends StatefulWidget {
  const LoadInput({super.key});

  @override
  State<LoadInput> createState() => _LoadInput();
}

class _LoadInput extends State<LoadInput> {
  TextStyle myTextStyle = const TextStyle(
    fontFamily: 'Poppins',
    fontSize: 13,
    fontWeight: FontWeight.w600,
  );
  TextStyle myButtonStyle = const TextStyle(
    fontFamily: 'Poppins',
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blueGrey,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 100,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 61, 135, 172),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    width: 150,
                    child: Row(
                      children: [
                        Icon(Icons.add),
                        Text(
                          'Add Load',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 3),
              Text(
                'Add Load',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 3),
              Row(
                children: const [
                  SizedBox(
                    width: 230,
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(border: OutlineInputBorder()),
                    ),
                  ),
                  SizedBox(width: 20),
                  SizedBox(
                    width: 250,
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(border: OutlineInputBorder()),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Text('Mobile Number', style: myTextStyle),
                  const SizedBox(width: 160),
                  Text('Mail ID', style: myTextStyle),
                ],
              ),
              const SizedBox(height: 3),
              Row(
                children: const [
                  SizedBox(
                    width: 235,
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(border: OutlineInputBorder()),
                    ),
                  ),
                  SizedBox(width: 20),
                  SizedBox(
                    width: 240,
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(border: OutlineInputBorder()),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Text('Upload Photo'),
              Image.asset('assets/noimage.jpg', height: 200, width: 200),
              const SizedBox(height: 3),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 35,
                    width: 100,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 64, 114, 61),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.add, size: 15),
                          Text('Add', style: myButtonStyle),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 25),
                  SizedBox(
                    height: 35,
                    width: 100,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 64, 114, 61),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.edit, size: 15),
                          Text('Edit', style: myButtonStyle),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 25),
                  SizedBox(
                    height: 35,
                    width: 100,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 64, 114, 61),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.delete_outline, size: 15),
                          Text('Delete', style: myButtonStyle),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
