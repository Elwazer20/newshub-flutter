# 📰 NewsHub - Flutter News Reader

![NewsHub Banner](https://images.unsplash.com/photo-1516321318423-f06f85e504b3?auto=compress&cs=tinysrgb&w=800&h=200&fit=crop)

Welcome to **NewsHub**, a sleek and powerful Flutter app I built to keep you updated with the latest news. With a modern UI, offline support, and smooth performance, this app is your go-to source for staying informed! 🔔

## 🌟 Why This App?

- **Fast & Reliable**: Fetches news instantly with smart caching for offline reading.
- **Elegant Design**: Clean, responsive UI that looks great on any device.
- **Developer Showcase**: Built to demonstrate my skills in Flutter, BLoC, and API integration.

## 🚀 Features

- **📺 Dynamic News Feed**:
  - Scroll through the latest articles in a smooth horizontal carousel.
  - Explore top stories with a vertical list view.
  - Navigate categories with an interactive tab bar.

- **📴 Offline Mode**:
  - Read cached articles anytime, anywhere.
  - Auto-syncs when you're back online.

- **🎨 Stunning UI**:
  - Eye-catching banner carousel for featured stories.
  - Gradient overlays for better readability.
  - Fully responsive design.

## 📸 Screenshots

| Screen 1                          | Screen 2                             |
|-----------------------------------|--------------------------------------|
| ![Screen 1](screenshots/home.png) | ![Screen 2](screenshots/details.png) |

## 📦 Packages Used

| Package                | Version  | Purpose                     |
|------------------------|----------|-----------------------------|
| flutter_bloc          | ^8.1.3   | State Management            |
| dio                   | ^5.3.3   | HTTP Requests               |
| retrofit              | ^4.0.1   | API Client                  |
| hive                  | ^2.2.3   | Local Database              |
| hive_flutter          | ^1.1.0   | Hive Flutter Integration    |
| cached_network_image  | ^3.2.3   | Image Caching               |
| carousel_slider       | ^4.2.1   | Banner Carousel             |
| json_annotation       | ^4.8.1   | JSON Serialization          |

## 🛠️ Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/Elwazer20/newshub-flutter.git
   cd newshub-flutter
   ```

2. **Install dependencies**:
   ```bash
   flutter pub get
   ```

3. **Generate files**:
   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

4. **Run the app**:
   ```bash
   flutter run
   ```

## ⚙️ Getting Started

### Prerequisites
- Flutter SDK (>=3.16.0)
- Dart (>=3.2.0)
- Android Studio or VSCode

### Configuration
- Update API keys in `lib/core/networking/api_constants.dart`.
- Customize themes in `lib/core/theme/` (e.g., `app_colors.dart`).
- Adjust Hive settings in `lib/features/home/data/local/hive_service.dart`.

## 🤝 Contributing

1. Fork the repository.
2. Create a feature branch: `git checkout -b feature/YourFeature`.
3. Commit changes: `git commit -m 'Add YourFeature'`.
4. Push to the branch: `git push origin feature/YourFeature`.
5. Open a Pull Request.

## 📜 License

MIT License. See `LICENSE` for details.

## 📬 Contact

Ahmed Elwazer - [ahmed.elwazergith@gmail.com](mailto:ahmed.elwazergith@gmail.com)

Project Link: [https://github.com/Elwazer20/newshub-flutter](https://github.com/Elwazer20/newshub-flutter)