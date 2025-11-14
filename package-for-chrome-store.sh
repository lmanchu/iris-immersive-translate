#!/bin/bash

# Chrome Web Store Package Builder for Fliplang
# This script creates a clean ZIP package ready for Chrome Web Store submission

set -e  # Exit on any error

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${BLUE}🎁 Fliplang - Chrome Web Store Package Builder${NC}"
echo ""

# Get version from manifest.json
VERSION=$(grep '"version"' manifest.json | sed -E 's/.*"version": "([^"]+)".*/\1/')
echo -e "${GREEN}📌 Version:${NC} $VERSION"

# Define output filename
OUTPUT_ZIP="fliplang-v${VERSION}.zip"

# Clean up old package if exists
if [ -f "$OUTPUT_ZIP" ]; then
    echo -e "${YELLOW}🗑️  Removing old package: $OUTPUT_ZIP${NC}"
    rm "$OUTPUT_ZIP"
fi

echo ""
echo -e "${BLUE}📦 Creating package...${NC}"

# Create temporary directory for clean packaging
TEMP_DIR=$(mktemp -d)
PACKAGE_DIR="$TEMP_DIR/fliplang"
mkdir -p "$PACKAGE_DIR"

echo -e "${GREEN}✓${NC} Created temp directory: $TEMP_DIR"

# Copy necessary files
echo ""
echo -e "${BLUE}📋 Copying files...${NC}"

# Core files
cp manifest.json "$PACKAGE_DIR/"
echo -e "${GREEN}✓${NC} manifest.json"

cp background.js "$PACKAGE_DIR/"
echo -e "${GREEN}✓${NC} background.js"

cp content.js "$PACKAGE_DIR/"
echo -e "${GREEN}✓${NC} content.js"

cp popup.html "$PACKAGE_DIR/"
echo -e "${GREEN}✓${NC} popup.html"

cp popup.js "$PACKAGE_DIR/"
echo -e "${GREEN}✓${NC} popup.js"

# Copy directories
cp -r icons "$PACKAGE_DIR/"
echo -e "${GREEN}✓${NC} icons/ (icon16.png, icon48.png, icon128.png)"

cp -r styles "$PACKAGE_DIR/"
echo -e "${GREEN}✓${NC} styles/"

# Optional: Copy any other necessary files
if [ -f "options.html" ]; then
    cp options.html "$PACKAGE_DIR/"
    echo -e "${GREEN}✓${NC} options.html"
fi

if [ -f "options.js" ]; then
    cp options.js "$PACKAGE_DIR/"
    echo -e "${GREEN}✓${NC} options.js"
fi

# Create ZIP from package directory
echo ""
echo -e "${BLUE}🗜️  Creating ZIP archive...${NC}"
cd "$TEMP_DIR"
zip -r "$OUTPUT_ZIP" fliplang/ -q

# Move ZIP to original directory
mv "$OUTPUT_ZIP" "$OLDPWD/"
cd "$OLDPWD"

# Clean up temp directory
rm -rf "$TEMP_DIR"

# Get file size
FILE_SIZE=$(du -h "$OUTPUT_ZIP" | cut -f1)

echo -e "${GREEN}✓${NC} Package created: $OUTPUT_ZIP"
echo -e "${GREEN}✓${NC} Size: $FILE_SIZE"

# Verify ZIP contents
echo ""
echo -e "${BLUE}📂 Package contents:${NC}"
unzip -l "$OUTPUT_ZIP" | grep -E "fliplang/" | tail -n +4 | head -n -2 | awk '{print $NF}' | sed 's/fliplang\//  - /'

echo ""
echo -e "${GREEN}✅ Package ready for Chrome Web Store submission!${NC}"
echo ""
echo -e "${BLUE}📝 Next steps:${NC}"
echo "  1. Go to: https://chrome.google.com/webstore/devconsole"
echo "  2. Click 'Add a new item'"
echo "  3. Upload: $OUTPUT_ZIP"
echo "  4. Fill in store listing (see CHROME-WEB-STORE-SUBMISSION.md)"
echo "  5. Upload promo images from promo-assets/"
echo "  6. Submit for review"
echo ""
echo -e "${BLUE}📖 Full guide:${NC} CHROME-WEB-STORE-SUBMISSION.md"
echo ""
