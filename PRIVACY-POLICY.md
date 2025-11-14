# Privacy Policy for Fliplang

**Last Updated: November 14, 2025**

## Introduction

Fliplang ("we", "our", or "the extension") is committed to protecting your privacy. This Privacy Policy explains how we handle your information when you use our Chrome extension.

**Our Core Principle: Privacy First**

Fliplang is designed with privacy as a fundamental feature, not an afterthought. We offer dual translation engines to give you complete control over your data.

---

## What Data We Collect

### When Using Google Translate Engine

When you choose to use Google Translate as your translation engine:

- **Text Content**: The text you request to translate is sent to Google's translation API
- **Target Language**: Your selected target language preference
- **No Personal Information**: We do NOT send any personal identifiers, browsing history, or other personal data to Google

**Google's Privacy Policy**: https://policies.google.com/privacy

### When Using Ollama (Local AI) Engine

When you choose to use Ollama as your translation engine:

- **Zero Data Transmission**: All translation happens locally on your computer
- **Complete Privacy**: Your text never leaves your device
- **No Cloud Services**: No data is sent to any external servers

### Extension Settings

We store the following settings **locally on your device** using Chrome's sync storage:

- Your selected translation engine (Google Translate or Ollama)
- Target language preferences (reading and writing languages)
- Ollama API endpoint URL (if using local AI)
- Ollama model name (if using local AI)
- Usage statistics (for Freemium limits - stored locally only)

**Important**: These settings are synced across your Chrome browsers using Chrome's built-in sync functionality, which is controlled by Google's privacy policy.

---

## What Data We Do NOT Collect

We do NOT collect, store, or transmit:

- ❌ Your browsing history
- ❌ Personal identifiable information (name, email, address, etc.)
- ❌ Websites you visit
- ❌ Credit card or payment information
- ❌ Your translated content (when using Ollama)
- ❌ Analytics or tracking data
- ❌ Cookies for tracking purposes

---

## How We Use Your Data

### Google Translate Mode
- Text is sent to Google's API solely for translation purposes
- We do not store, log, or process your translated content
- Translation results are cached locally in your browser session for performance

### Ollama Mode
- All processing happens on your local computer
- Zero data leaves your device
- Complete offline capability

### Usage Tracking (Freemium Model)
- Translation count is stored **locally only** to enforce the 50 translations/day limit for free users
- This counter resets daily at midnight (local time)
- No usage data is sent to external servers

---

## Third-Party Services

### Google Translate API
When using Google Translate engine, your text is processed by Google's translation service. Please review Google's privacy policy: https://policies.google.com/privacy

### Ollama (Local AI)
When using Ollama, all processing is local. Ollama does not collect or transmit data. Learn more: https://ollama.com

**No Other Third Parties**: We do not integrate with any other third-party services, analytics providers, or advertising networks.

---

## Data Storage and Security

### Local Storage Only
- All extension settings are stored locally using Chrome's `chrome.storage.sync` API
- Translation cache is stored in browser memory (session storage)
- No data is stored on external servers

### Security Measures
- All communication with Google Translate API uses HTTPS encryption
- Local Ollama communication uses HTTP over localhost (secure by default)
- We follow Chrome extension security best practices
- Manifest V3 compliance for enhanced security

---

## Your Privacy Rights

You have the right to:

- **Choose Your Engine**: Select between Google Translate (fast) or Ollama (private)
- **Delete Your Data**: Uninstall the extension to remove all local data
- **Clear Settings**: Reset extension settings via the popup interface
- **Request Information**: Contact us about your privacy concerns

### How to Delete Your Data

1. **Remove Extension**: Uninstalling the extension deletes all local data
2. **Clear Settings**: Open extension popup → Reset to defaults
3. **Clear Cache**: Browser restart clears translation cache

---

## Children's Privacy

Fliplang does not knowingly collect information from children under 13 years of age. The extension is designed for general audiences and does not target children.

---

## Changes to This Privacy Policy

We may update this Privacy Policy from time to time. Changes will be posted on:
- This document in our GitHub repository
- Chrome Web Store extension listing

**Notification**: Major changes will be communicated via extension update notes.

---

## Compliance

### GDPR Compliance (European Users)
- **Lawful Basis**: User consent and legitimate interest
- **Data Minimization**: We collect only essential data
- **Right to Access**: You can export your settings at any time
- **Right to Deletion**: Uninstall the extension to delete all data
- **Data Portability**: Settings are stored in JSON format (easily exportable)

### CCPA Compliance (California Users)
- We do not sell personal information
- We do not share personal information with third parties (except Google Translate API when explicitly chosen)
- You have the right to opt-out by using Ollama engine instead

---

## Contact Information

For privacy questions or concerns:

- **GitHub Issues**: https://github.com/lmanchu/fliplang/issues
- **Email**: (Add your contact email here)
- **Repository**: https://github.com/lmanchu/fliplang

---

## Open Source Transparency

Fliplang is committed to transparency:

- **Source Code**: Available at https://github.com/lmanchu/fliplang
- **Audit**: You can review our code to verify our privacy claims
- **Community**: We welcome privacy audits and feedback

---

## Summary

**In Simple Terms:**

- **Google Translate Mode**: Your text goes to Google for translation (fast but uses Google's servers)
- **Ollama Mode**: Everything stays on your computer (private but requires local setup)
- **Your Choice**: You control which engine to use
- **No Tracking**: We don't track you, collect analytics, or sell data
- **Local Storage**: Settings stay on your device
- **Open Source**: Our code is public and auditable

**Privacy is not just a feature—it's our foundation.**

---

## Consent

By installing and using Fliplang, you agree to this Privacy Policy. If you do not agree, please do not use the extension.

You can withdraw consent at any time by uninstalling the extension.

---

**Version**: 1.0.0
**Effective Date**: November 14, 2025
**Last Reviewed**: November 14, 2025
