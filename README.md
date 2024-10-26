# Deep Link Testing in Flutter with GoRouter
This project is a Flutter application created to test deep link handling using the go_router package. It was developed in conjunction with the Medium post [Handling Deep Links in Flutter Without Losing Navigation: Using app_links over go_router](https://medium.com/@pinky.hlaing173/handling-deep-links-in-flutter-without-losing-navigation-using-app-links-over-go-router-45845bc07373 "Handling Deep Links in Flutter Without Losing Navigation: Using app_links over go_router") The article discusses preserving the navigation stack when deep links are used, showcasing how app_links can be an alternative to go_router in some cases.

### Project Overview
The project demonstrates:

- Configuring `go_router` for routing and handling deep links.
- Issues faced when using `go_router` alone for deep linking (navigation stack clearing).
- Solutions to preserve the navigation stack by using the `app_links` package.

### Getting Started
#### Prerequisites
Ensure you have the following installed:

- Flutter
- Dart


#### Key Features
- Deep Link Routing with `go_router`: Demonstrates using go_router to route deep links to specific pages in the app.
- Navigation Stack Preservation: Shows how to maintain the navigation stack with `app_links`, ensuring users can navigate back to previous screens after a deep link is opened.

#### Usage
To test deep links:

1. Modify the `Info.plist` (iOS) or `AndroidManifest.xml` (Android) with appropriate deep link configurations.
2. Run the app and open a deep link URL to observe the navigation behavior.

### Medium Article
For detailed insights, check out the Medium article: [Handling Deep Links in Flutter without Losing Navigation Using app_links over GoRouter](https://medium.com/@pinky.hlaing173/handling-deep-links-in-flutter-without-losing-navigation-using-app-links-over-go-router-45845bc07373 "Handling Deep Links in Flutter without Losing Navigation Using app_links over GoRouter").
