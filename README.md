# Dev Test Mobile App

A Flutter mobile application built with clean architecture principles, featuring a plant shop and salon services platform.

## 📱 Features

### 🏠 Home Screen
- **Header Section**: Logo, next appointment details, and user credits/points/package information
- **Main Banner**: Promotional image display
- **Navigation Buttons**: Shop, Services, and Posts quick access
- **Category Icons**: Plants, Seedlings, Potted, Trees, and Care categories
- **Discoveries Section**: Trending discoveries with masonry grid layout
- **Location Section**: Interactive map and location listings

### 🛍️ Mall Screen
- **Search Functionality**: Search salon services with filter options
- **Product Grid**: 2-column grid layout displaying plant products
- **Product Cards**: 
  - Product images with discount badges
  - Product titles and descriptions
  - Pricing with discount support (original price strikethrough)
  - 50% discount circular badges

### 🧭 Navigation
- **Bottom Navigation Bar**: Home, Mall, Discover, Inbox, and Account tabs
- **Tab-based Navigation**: Seamless switching between main sections

## 🏗️ Architecture

### Clean Architecture Pattern
```
lib/
├── app/
│   ├── modules/
│   │   ├── home/           # Home module
│   │   ├── mall/           # Mall/Shopping module
│   │   ├── discover/       # Discover module
│   │   ├── inbox/          # Inbox module
│   │   ├── account/        # Account module
│   │   └── main/           # Main navigation module
│   ├── routes/             # App routing configuration
│   └── di.dart             # Dependency injection setup
├── core/
│   ├── base/               # Base classes and controllers
│   ├── config/             # App configuration
│   ├── exceptions/         # Error handling
│   ├── networking/         # API and network layer
│   ├── services/           # Core services
│   ├── ui/                 # UI components and themes
│   └── utils/              # Utility functions
└── main.dart               # App entry point
```

### Module Structure
Each module follows a consistent structure:
```
module/
├── domain/
│   └── entities/           # Business entities
├── presentation/
│   ├── controllers/        # GetX controllers
│   ├── views/             # UI screens
│   └── bindings/          # Dependency bindings
├── widgets/               # Reusable UI components
├── routes/                # Module-specific routes
└── di.dart                # Module dependency injection
```

## 🛠️ Tech Stack

### Core Framework
- **Flutter**: Cross-platform mobile development
- **Dart**: Programming language

### State Management
- **GetX**: Reactive state management, dependency injection, and routing

### UI & Styling
- **Material Design**: Google's design system
- **Custom UI Components**: Reusable atomic design components
- **Google Fonts**: Typography management
- **Custom Color Palette**: Brand-specific color scheme

### Additional Packages
- **flutter_staggered_grid_view**: Masonry grid layout for discoveries
- **device_preview**: Device preview for development
- **alice**: HTTP inspector for debugging

## 🎨 Design System

### Colors
- **Primary**: Green theme (`#244B3A`)
- **Secondary**: Yellow accent (`#FFC527`)
- **Success**: Green (`#2A8D36`)
- **Text Colors**: Various shades for hierarchy
- **Background**: Light gray (`#F8F8F8`)

### Typography
- **Primary Font**: Roboto
- **Font Weights**: 300, 400, 500, 600, bold
- **Responsive Sizing**: Fixed pixel values for consistency

### Components
- **Atomic Design**: Atoms, molecules, organisms structure
- **Custom Widgets**: Reusable UI components
- **Consistent Spacing**: 4px, 8px, 12px, 16px, 24px grid system

## 📦 Project Structure

### Key Directories
- `assets/`: Images, icons, and fonts
- `lib/app/modules/`: Feature modules
- `lib/core/`: Shared core functionality
- `environments/`: Environment configuration files
- `scripts/`: Build and deployment scripts

### Build Scripts
- `build-apk-dev.sh`: Development APK build
- `build-apk-prod.sh`: Production APK build
- `build-apk-stag.sh`: Staging APK build
- `build-bundle-dev.sh`: Development bundle build
- `build-bundle-prod.sh`: Production bundle build
- `build-ios-dev.sh`: iOS development build
- `build-ios-dev-ipa.sh`: iOS development IPA build

## 🚀 Getting Started

### Prerequisites
- Flutter SDK (latest stable version)
- Dart SDK
- Android Studio / VS Code
- iOS development tools (for iOS builds)

### Installation
1. Clone the repository
2. Navigate to the project directory
3. Install dependencies:
   ```bash
   flutter pub get
   ```
4. Run the app:
   ```bash
   flutter run
   ```

### Environment Setup
The app supports multiple environments:
- **Development**: `main.dev.dart`
- **Staging**: `main.staging.dart`
- **Production**: `main.dart`

Configure environment variables in the `environments/` directory.

## 🏗️ Build Instructions

### Android
```bash
# Development build
./scripts/build-apk-dev.sh

# Production build
./scripts/build-apk-prod.sh

# Staging build
./scripts/build-apk-stag.sh
```

### iOS
```bash
# Development build
./scripts/build-ios-dev.sh

# Development IPA
./scripts/build-ios-dev-ipa.sh
```

## 📱 Screenshots

### Home Screen
- Header with appointment details
- Main banner image
- Navigation buttons (Shop, Services, Posts)
- Category icons
- Discoveries section with masonry grid
- Location section with map

### Mall Screen
- Search bar with filter
- Product grid (2 columns)
- Product cards with images, titles, descriptions, and pricing
- Discount badges for promotional items

## 🔧 Development

### Code Style
- Follows Flutter/Dart conventions
- Clean architecture principles
- Consistent naming conventions
- Proper error handling

### State Management
- GetX for reactive state management
- Controllers for business logic
- Bindings for dependency injection

### UI Components
- Atomic design pattern
- Reusable components
- Consistent styling
- Responsive design (fixed values)

---

**Note**: This is a development/test application. Some features may be in development or testing phases.
