
	# Makefile for deploying the Flutter web projects to GitHub

    BASE_HREF = '/portfolio/'
    # Replace this with your GitHub username
    GITHUB_REPO = https://github.com/Ye-Yint-Aung/portfolio.git
    BUILD_VERSION := $(shell grep 'version:' pubspec.yaml | awk '{print $$2}')

    # Deploy the Flutter web project to GitHub
    deploy-web:
      @echo "Clean existing repository..."
      flutter clean

      @echo "Getting packages..."
      flutter pub get

      @echo "Building for web..."
      flutter build web --base-href $(BASE_HREF) --release

      @echo "Deploying to git repository"
      cd build/web && \
      git init && \
      git add . && \
      git commit -m "Deploy Version $(BUILD_VERSION)" && \
      git branch -M main && \
      git remote add origin $(GITHUB_REPO) && \
      git push -u -f origin main

      cd ../..
      @echo "✅ Finished deploy: $(GITHUB_REPO)"

    .PHONY: deploy