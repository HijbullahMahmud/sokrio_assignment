# 🏗️ Sokrio Assignment

A **production-ready Flutter app** built with:

- 🧱 Clean Architecture (Data, Domain, Presentation)
- 💡 SOLID Principles
- 🪄 Riverpod + Code Generation (`riverpod_annotation`)
- 🔌 Dio Networking with Interceptors
- 💾 Isar Database + SharedPreferences
- 🌍 Localization (ARB files)
- 🧭 GoRouter Navigation
- 🧠 Dependency Injection (GetIt or Riverpod-based)
- 🎨 Theming, Dimensions, Colors, and Common Widgets

---

## 📂 Folder Structure

```

lib/
├── app/
│ ├── config/
│ │ ├── di/ # Dependency Injection setup
│ │ ├── env/ # Environment config (dev, prod)
│ │ ├── router/ # GoRouter setup
│ │ ├── localization/ # ARB files and localization delegate
│ │ └── theme/ # Theme, colors, dimensions, text styles
│ │
│ ├── core/
│ │ ├── constants/ # Endpoints, keys, assets, strings
│ │ ├── errors/ # Exception and failure handling
│ │ ├── utils/ # Formatters, extensions, validators, logger
│ │ └── widgets/ # Generic reusable widgets
│ │
│ ├── data/
│ │ ├── datasources/ # Local (Isar/SharedPref) and Remote (Dio)
│ │ ├── repositories_impl/ # Repository implementations
│ │
│ ├── domain/
│ │ ├── entities/ # Core business entities
│ │ ├── repositories/ # Abstract repositories
│ │ └── usecases/ # Application-specific use cases
│ │
│ ├── presentation/
│ │ ├── common/
│ │ │ ├── providers/ # Global providers (auth, theme)
│ │ │ ├── widgets/ # App-level widgets (AppBar, BottomNav)
│ │ │ └── pages/ # Shared pages (splash, 404)
│ │ ├── features/ # Feature modules (auth, home, etc.)
│ │
│ ├── main.dart # Root entry point
│ ├── bootstrap.dart # Initialization logic
│ └── app.dart # Root widget setup
│
├── main_dev.dart # Dev entry point
└── main_prod.dart # Prod entry point
```

---

## 💡 Layer Responsibilities

### `core/`

Framework-independent utilities, constants, and widgets. These are pure and reusable.

### `data/`

Implements APIs, databases, and repositories. Converts raw data to domain entities.

### `domain/`

Contains pure business logic — entities, repositories (abstract), and use cases.

### `presentation/`

UI layer — widgets, screens, providers, and GoRouter navigation.

---

## 🌍 Global Architecture Rules

| Layer        | Depends On   | Example              |
| ------------ | ------------ | -------------------- |
| core         | —            | logger, validators   |
| domain       | core         | login_usecase        |
| data         | domain, core | auth_repository_impl |
| presentation | domain, core | home_page, providers |

---

## 🧩 Common Features

- **Localization:** ARB-based, easy to extend for multiple languages
- **Routing:** GoRouter with named paths and modular setup
- **Theming:** Centralized colors, typography, spacing, and dimensions
- **Networking:** Dio with custom interceptors for auth and error handling
- **Storage:** Isar (complex data) + SharedPreferences (lightweight cache)
- **State Management:** Riverpod (generated with `build_runner`)
- **Auth:** Ready-to-use login/logout flow with global provider

---

## ⚙️ Getting Started

```bash
# Clone template
git clone https://github.com/HijbullahMahmud/flutter_template_app.git

# Install dependencies
flutter pub get

# Generate Riverpod code
flutter pub run build_runner build --delete-conflicting-outputs

# Run
flutter run -t lib/main_dev.dart

```

## ⚙️ Example Global Provider

```bash
@riverpod
class GlobalAuthNotifier extends _$GlobalAuthNotifier {
  @override
  FutureOr<bool> build() async {
    return await ref.watch(userCacheRepositoryProvider).hasToken();
  }

  Future<void> logout() async {
    await ref.read(userCacheRepositoryProvider).deleteToken();
    state = const AsyncData(false);
  }
}
```

## ⚙️ Utilities
    1.  app_snackbar.dart: Global snackbar helper
    2.  logger.dart: Pretty log output
    3.  validators.dart: Common input validations
    4.  extensions.dart: String/date helpers

## 🧭 Routing Structure Example

```bash
@riverpod
class GlobalAuthNotifier extends _$GlobalAuthNotifier {
  @override
  FutureOr<bool> build() async {
    return await ref.watch(userCacheRepositoryProvider).hasToken();
  }

  Future<void> logout() async {
    await ref.read(userCacheRepositoryProvider).deleteToken();
    state = const AsyncData(false);
  }
}
```
