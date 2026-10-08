# 📊 Expense Tracker App

A modern, responsive, and feature-rich **Expense Tracker** application built using **Flutter**. Keep track of your daily expenses, visualize your spending habits by category with dynamic charts, and manage your budget effortlessly in both Light and Dark modes.

---

## ✨ Features

- ➕ **Add Expenses**: Easily add expenses with a title, amount, date picker, and category.
- 📂 **Expense Categories**: Categorize expenses into **Food**, **Travel**, **Leisure**, and **Work** with custom category icons.
- 📊 **Dynamic Expense Chart**: Visual breakdown of total spending per category with proportional dynamic bars.
- 🗑️ **Swipe to Delete with Undo**: Swipe items to dismiss them with an instant "Undo" option via SnackBar.
- 🌓 **Light & Dark Theme**: Full Material 3 theming support with dynamic color schemes matching system brightness.
- 📱 **Responsive Layout**: Adaptive layout that works smoothly across portrait, landscape, and tablets/desktop screens.

---

## 🛠️ Tech Stack & Packages

- **Framework**: [Flutter](https://flutter.dev/) (Material 3)
- **Language**: [Dart](https://dart.dev/)
- **Packages Used**:
  - [`intl`](https://pub.dev/packages/intl) - Date formatting & currency display
  - [`uuid`](https://pub.dev/packages/uuid) - Unique ID generation for expense items

---

## 🚀 Getting Started

### Prerequisites

Make sure you have Flutter installed on your system:
```bash
flutter --version
```

### Installation

1. **Clone the repository:**
   ```bash
   git clone <repository-url>
   cd expenss_tracker
   ```

2. **Install dependencies:**
   ```bash
   flutter pub get
   ```

3. **Run the application:**

   - **On Chrome (Web):**
     ```bash
     flutter run -d chrome
     ```
   - **On Android Emulator / Device:**
     ```bash
     flutter run -d android
     ```
   - **On iOS Simulator / Device (macOS only):**
     ```bash
     flutter run -d ios
     ```

---

## 📁 Project Structure

```
lib/
├── main.dart                      # App entry point & Theme configuration
├── models/
│   └── expense.dart               # Expense & ExpenseBucket data models
└── widget/
    ├── chat/
    │   ├── chart.dart             # Expense chart container
    │   └── chat_bar.dart          # Category chart bar item
    ├── expenses_list/
    │   ├── expenses_items.dart    # Individual expense card item
    │   └── expenses_list.dart     # Dismissible list view of expenses
    ├── expenses.dart              # Main expense tracker screen
    └── new_expense.dart           # Modal bottom sheet for adding expenses




