import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pokedex_with_flutter/components/theme.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
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
                      style: Theme.of(
                        context,
                      ).textTheme.headlineSmall?.copyWith(color: Colors.white),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 20),
                            fillColor:
                                Theme.of(
                                  context,
                                ).extension<GrayscaleColors>()!.white,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none,
                            ),
                            prefixIcon: Icon(Icons.search_outlined),
                            hintText: "Search",
                            hintStyle: TextStyle(
                              color:
                                  Theme.of(
                                    context,
                                  ).extension<GrayscaleColors>()!.medium,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 12),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25),
              Expanded(
                flex: 6,
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
