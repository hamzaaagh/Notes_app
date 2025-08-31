import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.color});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height * .35,
        width: MediaQuery.of(context).size.width * .8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: color,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      Text(
                        "Flutter tips",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: SizedBox(
                          width: 150,
                          child: Text(
                            "Build Your Career With Hamza Ghafar",
                            style: TextStyle(color: Colors.grey, fontSize: 17),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: InkWell(
                    onTap: () {},
                    child: Icon(Icons.delete, color: Colors.black, size: 40),
                  ),
                ),
              ],
            ),
            Spacer(),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  "31/8/2025 Aug",
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
