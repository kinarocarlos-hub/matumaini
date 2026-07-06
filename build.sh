#!/bin/bash
# Matumaini Build Script
# This script sets up and builds the Matumaini Flutter app
# Prerequisites: Flutter SDK 3.24+ must be installed and in PATH

set -e

echo "========================================"
echo "Matumaini - Flutter Build Script"
echo "========================================"
echo ""

# Check Flutter installation
if ! command -v flutter &> /dev/null; then
    echo "ERROR: Flutter is not installed or not in PATH."
    echo ""
    echo "To install Flutter:"
    echo "  1. Download from: https://docs.flutter.dev/get-started/install"
    echo "  2. Extract to: ~/development/flutter"
    echo "  3. Add to PATH in ~/.zshrc: export PATH=\"\$HOME/development/flutter/bin:\$PATH\""
    echo "  4. Run: source ~/.zshrc"
    echo ""
    echo "After installation, run this script again."
    exit 1
fi

echo "Flutter version:"
flutter --version
echo ""

# Check Flutter channel and version
FLUTTER_VERSION=$(flutter --version | grep "Flutter" | head -1)
echo "Detected: $FLUTTER_VERSION"
echo ""

# Initialize platform directories if missing
if [ ! -d "ios" ] || [ ! -d "android" ]; then
    echo "[0/4] Initializing platform directories..."
    flutter create .
    echo "Done."
    echo ""
fi

# Get dependencies
echo "[1/4] Getting Flutter dependencies..."
flutter pub get
echo "Done."
echo ""

# Generate Drift database code
echo "[2/4] Generating Drift database code..."
if flutter pub run build_runner build --delete-conflicting-outputs; then
    echo "Drift code generated successfully."
else
    echo "WARNING: build_runner failed. You may need to run: flutter pub run build_runner build"
fi
echo ""

# Check for generated database file
if [ ! -f "lib/core/database/database.g.dart" ]; then
    echo "WARNING: lib/core/database/database.g.dart not found!"
    echo "Run: flutter pub run build_runner build --delete-conflicting-outputs"
fi

# Analyze code
echo "[3/4] Analyzing code..."
flutter analyze
echo ""

# Build for current platform
echo "[4/4] Building app..."
echo ""
echo "Choose build target:"
echo "  1) Debug build (development)"
echo "  2) Release build APK (Android)"
echo "  3) Release build iOS (requires Xcode)"
echo "  4) Skip build, just verify setup"
echo ""
read -p "Enter choice (1-4): " choice

case $choice in
    1)
        echo "Building debug app..."
        flutter run
        ;;
    2)
        echo "Building release APK..."
        flutter build apk --release
        echo "APK location: build/app/outputs/flutter-apk/app-release.apk"
        ;;
    3)
        echo "Building release iOS..."
        flutter build ios --release
        echo "iOS build complete."
        ;;
    4)
        echo "Skipping build. Setup verified."
        ;;
    *)
        echo "Invalid choice. Skipping build."
        ;;
esac

echo ""
echo "========================================"
echo "Build script completed."
echo "========================================"
