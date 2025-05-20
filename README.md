# web_app_demo

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Developing - make deploy-web
- flutter clean
- flutter pub get
- flutter build web --release
- Create deployment git repository
- Go flutter project => cd build/web
- flutter build web --base-href /${github repoName}/ --release
- git init
- git add .
- git commit -m "Message"
- git branch -m main
- git remote add origin [repo link]
- git push -u origin main
- Open github site
- Go to setting => page 
- Build and development => Choose [Deploy from a branch]
- Choose branch
- Click Save button


