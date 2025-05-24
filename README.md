🌙 Flutter Theme Switcher App
This is a simple Flutter application that demonstrates dynamic theme switching using ValueNotifier and ValueListenableBuilder. The app allows the user to toggle between Light Mode and Dark Mode at runtime.

📁 Project Structure
  
  lib/
  ├── main.dart                # Entry point of the app
  └── data/
      └── value_notifier.dart  # Contains the ValueNotifier for theme control
      
🚀 How It Works
  1. Theme State Management
    A ValueNotifier<bool> is defined in value_notifier.dart to manage the theme state (light or dark).
    This ValueNotifier is reactive and notifies listeners when its value changes.
  
  2. MainApp Widget
    MainApp is a StatefulWidget to manage UI updates.
    The entire app is wrapped with a ValueListenableBuilder which listens to changes in the isDarkMode notifier.
    Based on the mode (true for light, false for dark), the ThemeData of MaterialApp is set dynamically.
  
  3. AppBar Logic
    Displays the title and a toggle button (light/dark icon).
    On pressing the icon:
      The theme is toggled by flipping the value of isDarkMode.


✅ Features
Real-time theme switching (light/dark).
Clean architecture with state separated in data/ folder.
Simple, scalable pattern for larger apps.
