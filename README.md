# flutter_m3_core

- Simplifies theme management by providing effortless switching between light, dark, or custom themes. This feature allows you to create visually striking apps with ease.

- The package seamlessly integrates Material 3 components into your app's UI, enabling you to build sleek and intuitive interfaces. This integration ensures a seamless user experience that aligns with the latest design standards.

- With customization options, you can easily tailor the appearance and behavior of Material 3 components to match your app's unique requirements. This level of customization guarantees a cohesive and consistent user experience, enhancing the overall quality of your app.

# 💻 Include in your project

```yaml
dependencies:
  flutter_m3_core: <latest version>
```

# 💻 Import in your project

```dart
import 'package:flutter_m3_core/m3_theme_core.dart';
```

# 👨‍💻 Usage M3 Theme

1. Wrap your material app like this to use dark theme and light theme out of the box.

- **`m3BaseColors`** : Input yor base color you need to use in your app
- **`automationDayNight`** [true/false] default is false. If you want your app auto change theme mode by Time Of Day. Let's set is **`true`**

```dart
class App extends StatelessWidget {
  final m3BaseColors = const Color(0xFF6750A4);
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return M3ThemeProvider(
        m3ThemeManager: M3ThemeManager(m3BaseColors: m3BaseColors),
        m3Builder: (context, themeData, darkTheme, themeMode) => MaterialApp(
            title: 'Flutter M3 Core',
            theme: themeData,
            debugShowCheckedModeBanner: false,
            darkTheme: darkTheme,
            themeMode: themeMode,
            home: const MyApp()));
  }
}
```

2. Toggle and get the current theme

- You can toggle theme

```dart
M3ThemeProvider.toggleTheme(context)
```

- You can get current theme mode [ThemeMode]

```dart
M3ThemeProvider.getThemeMode(context);
```

3. Change base color

- User can select favorite color. After selected your app theme will compatible with new color

```dart
M3ThemeProvider.changeM3Color(context,newColor)
```

4. This package already handle to check device size. We have four size [mobile,tablet,desktop,web]

- Wrap this into widget need to check

```dart
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const M3LayoutView(
      mobile: MobileView(),
      tablet: TabletView(),
      desktop: DesktopView(),
      web: DesktopView(),
    );
  }
}
```

# 👨‍💻 Material 3 Components

- This package have many components principle with Material 3 design like Buttons,CheckBox,Slider,Typography,Progress,DatePicker....
- Let's try it

1. M3 Typography

### M3Text

The M3Text class is a customizable Flutter widget that simplifies the process of styling text with various Material 3 typography styles. It allows you to easily display text with different font sizes, weights, colors, alignments, and line limits.

### Constructors

The M3Text class provides several constructors for different typography styles:

```dart
M3Text.displayLarge
M3Text.displayMedium
M3Text.displaySmall
M3Text.headlineLarge
M3Text.headlineMedium
M3Text.headlineSmall
M3Text.titleLarge
M3Text.titleMedium
M3Text.titleSmall
M3Text.labelLarge
M3Text.labelMedium
M3Text.labelSmall
M3Text.bodyLarge
M3Text.bodyMedium
M3Text.bodySmall
```

Each constructor accepts parameters such as text, textAlign, fontWeight, color, maxLines, overflow, and isFlexible to customize the appearance and behavior of the text.

### Usage

To use the M3Text widget, simply create an instance with the desired typography style and provide the necessary parameters. For example:

```dart
M3Text.displayLarge(
  text: 'Welcome',
  textAlign: TextAlign.center,
)
```

|

| Light                                                                                               | Dark                                                                                                     |
| --------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------- |
| ![Image 1](https://github.com/quocbao238/flutter_m3_core/blob/main/images/mobile/m3_Typography.png) | ![Image 1](https://github.com/quocbao238/flutter_m3_core/blob/main/images/mobile/m3_Typography_dark.png) |

2. M3 Typography

| Theme | Mobile                                                                                                                                         |
| ----- | ---------------------------------------------------------------------------------------------------------------------------------------------- |
| Light | ![Image 1](https://github.com/quocbao238/flutter_m3_core/blob/main/images/mobile/m3_Typography.png), ![Image 2](path/to/light_image_2.png)     |
| Dark  | ![Image 1](https://github.com/quocbao238/flutter_m3_core/blob/main/images/mobile/m3_Typography_dark.png), ![Image 2](path/to/dark_image_2.png) |
