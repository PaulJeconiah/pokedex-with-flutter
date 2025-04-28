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
              // AppBar
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
              SizedBox(height: 20),

              // SearchBar
              Row(
                children: [
                  Expanded(
                    flex: 7,
                    child: TextField(
                      decoration: InputDecoration(
                        constraints: BoxConstraints(maxHeight: 40),
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
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
                        prefixIcon: Icon(
                          Icons.search_outlined,
                          color: Theme.of(context).primaryColor,
                        ),
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
              // Expanded(
              //   child: Row(
              //     children: [

              //     ],
              //   ),
              // ),
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
