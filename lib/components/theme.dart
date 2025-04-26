import 'package:flutter/material.dart';

final ThemeData pokemonTheme = ThemeData(
  fontFamily: "Poppins",
  primaryColor: Color(0xFFDC0A2D),
  colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFFDC0A2D)),
  textTheme: TextTheme(
    /**
     * Header
     */
    headlineSmall: TextStyle(fontWeight: FontWeight.bold),
    titleLarge: TextStyle(
      fontSize: 10,
      height: 16,
      fontWeight: FontWeight.bold,
    ), // Subtitle 3
    titleMedium: TextStyle(
      fontSize: 14,
      height: 16,
      fontWeight: FontWeight.bold,
    ), // Subtitle 1
    titleSmall: TextStyle(
      fontSize: 12,
      height: 16,
      fontWeight: FontWeight.bold,
    ), // Subtitle 2
    /**
     * Body
     */
    bodyLarge: TextStyle(
      fontSize: 14,
      height: 16,
      fontWeight: FontWeight.bold,
    ), // Body 1
    bodyMedium: TextStyle(
      fontSize: 12,
      height: 16,
      fontWeight: FontWeight.bold,
    ), // Body 2
    bodySmall: TextStyle(
      fontSize: 10,
      height: 16,
      fontWeight: FontWeight.bold,
    ), // Body 3
    labelSmall: TextStyle(
      fontSize: 8,
      height: 12,
      fontWeight: FontWeight.w400,
    ), // Caption
  ),
  extensions: <ThemeExtension<dynamic>>[
    pokemonTypeColors(
      bug: Color(0xFFA7B723),
      dark: Color(0xFF75574C),
      dragon: Color(0xFF7037FF),
      electric: Color(0xFFF9CF30),
      fairy: Color(0xFFE69EAC),
      fighting: Color(0xFFC12239),
      fire: Color(0xFFF57D31),
      flying: Color(0xFFA891EC),
      ghost: Color(0xFF70559B),
      normal: Color(0xFFAAA67F),
      grass: Color(0xFF74CB48),
      ground: Color(0xFFDEC16B),
      ice: Color(0xFF9AD6DF),
      poison: Color(0xFFA43E9E),
      psychic: Color(0xFFFB5584),
      rock: Color(0xFFB69E31),
      steel: Color(0xFFB7B9D0),
      water: Color(0xFF6493EB),
    ),
    GrayscaleColors(
      dark: Color(0xFF1D1D1D),
      medium: Color(0xFF666666),
      light: Color(0xFFE0E0E0),
      background: Color(0xFFEFEFEF),
      white: Color(0xFFFFFFFF),
    ),
  ],
);

class pokemonTypeColors extends ThemeExtension<pokemonTypeColors> {
  final Color bug;
  final Color dark;
  final Color dragon;
  final Color electric;
  final Color fairy;
  final Color fighting;
  final Color fire;
  final Color flying;
  final Color ghost;
  final Color normal;
  final Color grass;
  final Color ground;
  final Color ice;
  final Color poison;
  final Color psychic;
  final Color rock;
  final Color steel;
  final Color water;

  pokemonTypeColors({
    required this.bug,
    required this.dark,
    required this.dragon,
    required this.electric,
    required this.fairy,
    required this.fighting,
    required this.fire,
    required this.flying,
    required this.ghost,
    required this.normal,
    required this.grass,
    required this.ground,
    required this.ice,
    required this.poison,
    required this.psychic,
    required this.rock,
    required this.steel,
    required this.water,
  });

  @override
  pokemonTypeColors copyWith({
    Color? bug,
    Color? dark,
    Color? dragon,
    Color? electric,
    Color? fairy,
    Color? fighting,
    Color? fire,
    Color? flying,
    Color? ghost,
    Color? normal,
    Color? grass,
    Color? ground,
    Color? ice,
    Color? poison,
    Color? psychic,
    Color? rock,
    Color? steel,
    Color? water,
  }) {
    return pokemonTypeColors(
      bug: this.bug,
      dark: this.dark,
      dragon: this.dragon,
      electric: this.electric,
      fairy: this.fairy,
      fighting: this.fighting,
      fire: this.fire,
      flying: this.flying,
      ghost: this.ghost,
      normal: this.normal,
      grass: this.grass,
      ground: this.ground,
      ice: this.ice,
      poison: this.poison,
      psychic: this.psychic,
      rock: this.rock,
      steel: this.steel,
      water: this.water,
    );
  }

  @override
  ThemeExtension<pokemonTypeColors> lerp(
    covariant ThemeExtension<pokemonTypeColors>? other,
    double t,
  ) {
    if (other is! pokemonTypeColors) return this;
    return pokemonTypeColors(
      bug: Color.lerp(bug, other.bug, t)!,
      dark: Color.lerp(dark, other.dark, t)!,
      dragon: Color.lerp(dragon, other.dragon, t)!,
      electric: Color.lerp(electric, other.electric, t)!,
      fairy: Color.lerp(fairy, other.fairy, t)!,
      fighting: Color.lerp(fighting, other.fighting, t)!,
      fire: Color.lerp(fire, other.fire, t)!,
      flying: Color.lerp(flying, other.flying, t)!,
      ghost: Color.lerp(ghost, other.ghost, t)!,
      normal: Color.lerp(normal, other.normal, t)!,
      grass: Color.lerp(grass, other.grass, t)!,
      ground: Color.lerp(ground, other.ground, t)!,
      ice: Color.lerp(ice, other.ice, t)!,
      poison: Color.lerp(poison, other.poison, t)!,
      psychic: Color.lerp(psychic, other.psychic, t)!,
      rock: Color.lerp(rock, other.rock, t)!,
      steel: Color.lerp(steel, other.steel, t)!,
      water: Color.lerp(water, other.water, t)!,
    );
  }
}

class GrayscaleColors extends ThemeExtension<GrayscaleColors> {
  GrayscaleColors({
    required this.dark,
    required this.medium,
    required this.light,
    required this.background,
    required this.white,
  });

  final Color dark, medium, light, background, white;

  GrayscaleColors copyWith({
    Color? dark,
    Color? medium,
    Color? light,
    Color? background,
    Color? white,
  }) {
    return GrayscaleColors(
      dark: dark ?? this.dark,
      medium: medium ?? this.medium,
      light: light ?? this.light,
      background: background ?? this.background,
      white: white ?? this.white,
    );
  }

  @override
  ThemeExtension<GrayscaleColors> lerp(
    covariant ThemeExtension<GrayscaleColors>? other,
    double t,
  ) {
    if (other is! GrayscaleColors) return this;
    return GrayscaleColors(
      dark: Color.lerp(dark, other.dark, t)!,
      medium: Color.lerp(medium, other.medium, t)!,
      light: Color.lerp(light, other.light, t)!,
      background: Color.lerp(background, other.background, t)!,
      white: Color.lerp(white, other.white, t)!,
    );
  }
}
