# 📊 Expense Tracker App

A modern, responsive, and feature-rich **Expense Tracker** application built using **Flutter**. Keep track of your daily expenses, visualize your spending habits by category with dynamic charts, and manage your budget effortlessly in both Light and Dark modes.

---

## ✨ Features

- ➕ **Add Expenses**: Easily record new expenses with title, amount, date picker, and category selection.
- 📂 **Expense Categories**: Categorize expenses into **Food**, **Travel**, **Leisure**, and **Work** with dedicated category icons.
- 📊 **Dynamic Expense Chart**: Visual breakdown of total spending per category with proportional dynamic bars.
- 🗑️ **Swipe to Delete with Undo**: Swipe items away to delete them with an instant "Undo" option via SnackBar.
- 🌓 **Light & Dark Theme**: Full Material 3 theming support with dynamic color schemes matching system brightness.
- 📱 **Responsive & Adaptive Layout**: Seamlessly adapts to portrait and landscape orientations as well as tablets and larger screens.
- 🛡️ **Input Validation**: Built-in validation alerts to ensure clean and accurate expense data entry.
- 🎨 **Custom App Launcher Icon**: Configured with custom launcher icons for Android and iOS using `flutter_launcher_icons`.

---

## 🛠️ Tech Stack & Packages

- **Framework**: [Flutter](https://flutter.dev/) (Material 3)
- **Language**: [Dart](https://dart.dev/)
- **Packages & Dependencies**:
  - [`intl`](https://pub.dev/packages/intl) - Date formatting & currency handling
  - [`uuid`](https://pub.dev/packages/uuid) - Unique ID generation for expense items
  - [`cupertino_icons`](https://pub.dev/packages/cupertino_icons) - iOS-style icons
  - [`flutter_launcher_icons`](https://pub.dev/packages/flutter_launcher_icons) - App icon generation

---

## 🚀 Getting Started

### Prerequisites

Make sure you have Flutter installed and configured on your machine:
```bash
flutter --version
```

### Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/vijayasree450/Expense-Tracker-App.git
   cd expenss_tracker
   ```

2. **Install dependencies:**
   ```bash
   flutter pub get
   ```

3. **(Optional) Generate Launcher Icons:**
   ```bash
   dart run flutter_launcher_icons
   ```

4. **Run the application:**

   - **On Android Emulator / Physical Device:**
     ```bash
     flutter run -d android
     ```
   - **On iOS Simulator / Device (macOS only):**
     ```bash
     flutter run -d ios
     ```
   - **On Chrome (Web):**
     ```bash
     flutter run -d chrome
     ```

---

## 📁 Project Structure

```text
expenss_tracker/
├── assets/
│   └── images/
│       └── logo.png               # App logo / launcher icon
├── lib/
│   ├── main.dart                  # App entry point & Material 3 Theme setup
│   ├── models/
│   │   └── expense.dart           # Expense & ExpenseBucket data models
│   └── widget/
│       ├── chat/
│       │   ├── chart.dart         # Category spending overview chart
│       │   └── chat_bar.dart      # Dynamic height chart bar component
│       ├── expenses_list/
│       │   ├── expenses_items.dart # Individual expense card widget
│       │   └── expenses_list.dart  # Dismissible ListView for expense items
│       ├── expenses.dart          # Main screen & responsive layout coordinator
│       └── new_expense.dart       # Modal bottom sheet for adding new expenses
├── pubspec.yaml                   # Dependencies and asset declarations
└── README.md                      # Project documentation
```

---

## 💡 How It Works

1. **Adding an Expense**: Tap the `+` button in the AppBar. A responsive modal sheet will open where you can input the title, amount, select a date via a calendar picker, and select a category.
2. **Deleting an Expense**: Swipe any expense card left or right. A notification will appear at the bottom with an **Undo** button to restore the item if needed.
3. **Responsive View**: 
   - In **Portrait mode**, the spending chart is stacked on top of the expenses list.
   - In **Landscape mode**, the spending chart and expenses list are placed side-by-side for optimal screen real-estate usage.

---

## 🤝 Contributing

Contributions, issues, and feature requests are welcome! Feel free to check the [issues page](https://github.com/vijayasree450/Expense-Tracker-App/issues).

1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

---


