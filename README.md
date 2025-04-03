# 🎤 VocalLM - AI Voice Conversion App

This is a monorepo for **VocalLM**, a mobile app that lets users sing and instantly convert their voice to sound like any singer using AI.

## 📱 Flutter App (`flutter-app/`)
The frontend is built with Flutter and supports:
- Recording voice
- Uploading to the backend API
- Playing back AI-generated singing voice

To run:
```bash
cd flutter-app
flutter pub get
flutter run
```

## 🧠 Backend API (`voice-backend/`)
The backend is a FastAPI app running in Docker with RVC (Retrieval-Based Voice Conversion) integrated.

To run:
```bash
cd voice-backend
docker-compose up --build
```

The API will be available at: `http://localhost:8000/convert-voice/`

## 🗂 Project Structure
```
vocallm/
├── flutter-app/        # Flutter frontend
└── voice-backend/      # FastAPI backend with RVC and Docker
```

---

## 📅 Status: MVP in progress
We're building a Minimum Viable Product that can:
1. Record voice in Flutter
2. Upload to FastAPI backend
3. Convert voice to a singer using RVC
4. Play back the result

Stay tuned!
