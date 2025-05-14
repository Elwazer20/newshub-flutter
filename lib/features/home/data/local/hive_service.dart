import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../models/news_model.dart';

/// Service class for handling Hive database operations for news data
class HiveService {
  static const String _newsBoxName = 'newsBox';
  static const String _cachedNewsKey = 'cachedNews';

  /// Initializes Hive and registers adapters
  /// Must be called before any other Hive operations
  static Future<void> init() async {
    await Hive.initFlutter();
    HiveAdapters.registerAdapters();
    await Hive.openBox<NewsResponseModel>(_newsBoxName);
  }

  /// Caches news response data in Hive
  /// [news] - The NewsResponseModel to cache
  static Future<void> cacheNews(NewsResponseModel news) async {
    final box = Hive.box<NewsResponseModel>(_newsBoxName);
    await box.put(_cachedNewsKey, news);
  }

  /// Retrieves cached news response from Hive
  /// Returns NewsResponseModel if found, null otherwise
  static NewsResponseModel? getCachedNews() {
    final box = Hive.box<NewsResponseModel>(_newsBoxName);
    return box.get(_cachedNewsKey);
  }

  /// Clears all cached news data
  static Future<void> clearCache() async {
    final box = Hive.box<NewsResponseModel>(_newsBoxName);
    await box.clear();
  }

  /// Checks if news data exists in cache
  static bool hasCachedNews() {
    final box = Hive.box<NewsResponseModel>(_newsBoxName);
    return box.containsKey(_cachedNewsKey);
  }

  /// Closes all Hive boxes (call when done with Hive)
  static Future<void> close() async {
    await Hive.close();
  }
}

/// Helper class for registering Hive adapters
class HiveAdapters {
  /// Registers all necessary Hive adapters
  static void registerAdapters() {
    Hive.registerAdapter(NewsResponseModelAdapter());
    Hive.registerAdapter(NewsAdapter());
  }
}