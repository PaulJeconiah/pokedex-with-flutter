import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDC0A2D),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 12, top: 20, right: 12),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/images/Pokeball.png",
                    width: 24,
                    height: 24,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      "Pokédex",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Container(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
