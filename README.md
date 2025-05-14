# NewsHub - Flutter News Reader Application

![NewsHub App Banner](https://via.placeholder.com/800x200?text=NewsHub+Flutter+App) <!-- Replace with actual banner -->

A professional news reading application I built with Flutter, delivering the latest stories with an elegant UI, offline support, and seamless API integration. This app showcases my expertise in creating high-quality, user-friendly mobile applications.

## ✨ Features

### 🚀 Dynamic Content Display
- **Latest Articles** - Horizontally scrollable feed of recent news with sleek article cards.
- **Top Stories** - Vertically scrollable featured content with rich visuals.
- **Category Tabs** - Browse news by topics with a custom tab bar.

### 🌐 Connectivity
- **Online/Offline Support** - Seamless experience with cached data for offline reading.
- **Smart Caching** - Hive database integration for storing news articles.
- **Automatic Refresh** - Fetches fresh content when the connection is restored.

### 🎨 Beautiful UI
- **Custom Carousel** - Interactive banner slider for featured news.
- **Gradient Overlays** - Enhanced readability in article details with stylish gradients.
- **Responsive Design** - Adapts perfectly to all screen sizes.

## 📦 Packages Used

| Package                | Version  | Purpose                     |
|------------------------|----------|-----------------------------|
| flutter_bloc          | ^8.1.3   | State Management            |
| dio                   | ^5.3.3   | HTTP Requests                |
| retrofit              | ^4.0.1   | API Client                  |
| hive                  | ^2.2.3   | Local Database              |
| hive_flutter          | ^1.1.0   | Hive Flutter Integration    |
| cached_network_image  | ^3.2.3   | Image Caching               |
| carousel_slider       | ^4.2.1   | Banner Carousel             |
| json_annotation       | ^4.8.1   | JSON Serialization          |

## 🛠️ Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/newshub-flutter.git
   cd newshub-flutter
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Generate required files**
   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

4. **Run the app**
   ```bash
   flutter run
   ```

## 🚀 Getting Started

### Prerequisites
- Flutter SDK (>=3.16.0)
- Dart (>=3.2.0)
- Android Studio/VSCode

### Configuration
1. Update API endpoints in `lib/core/networking/api_constants.dart`.
2. Modify app theme in `lib/core/theme/` (e.g., `app_colors.dart`, `app_text_styles.dart`).
3. Adjust Hive settings in `lib/features/home/data/local/hive_service.dart` if needed.

## 🤝 Contributing

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

Distributed under the MIT License. See `LICENSE` for more information.

## 📧 Contact

Your Name - engahmed.maher28@gmail.com

Project Link: [https://github.com/Elwazer20/newshub-flutter](https://github.com/yourusername/newshub-flutter)