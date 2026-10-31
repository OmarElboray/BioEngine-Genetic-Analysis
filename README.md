# BioEngine AI

BioEngine AI is an experimental multimodal biology assistant. It combines a browser camera and microphone interface with a FastAPI WebSocket backend and the Gemini Live API to discuss biological traits or structures.

## Current capabilities

- Serves the browser interface from the FastAPI application.
- Streams periodic camera frames to the backend over WebSockets.
- Sends model audio responses back to the browser.
- Exposes a `calculate_bei_score` tool to the model for experimental BioEngine Impact scoring.
- Includes a Google Cloud Translation helper for translating findings.

This repository is a research prototype. The scoring implementation and biological interpretations are placeholders and must not be treated as validated scientific or medical conclusions.

## Requirements

- Python 3.10+
- A Google Gemini API key
- Camera and microphone permissions in the browser
- Google Cloud credentials if translation is used

## Setup

```bash
git clone https://github.com/OmarElboray/BioEngine-Genetic-Analysis.git
cd BioEngine-Genetic-Analysis
python -m venv .venv
source .venv/bin/activate
pip install -r backend/requirements.txt
export GEMINI_API_KEY="your-gemini-api-key"
```

Start the backend:

```bash
python backend/agent.py
```

Open <http://localhost:8000>, allow camera and microphone access, and start a live session.

## Project structure

```text
BioEngine-Genetic-Analysis/
├── backend/
│   ├── agent.py            # FastAPI app, WebSocket, Gemini Live integration
│   └── bio_math.py        # Biology scoring utilities
├── frontend/
│   └── index.html          # Camera, microphone, and WebSocket client
├── Dockerfile
└── backend/requirements.txt
```

## Configuration and privacy

The browser sends camera frames to the local backend, which forwards images to the configured Gemini service. Do not use the prototype with sensitive samples or identifiable people without reviewing the relevant provider policies and adding appropriate safeguards. Never commit API keys or cloud credential files.

## Status

Active research and development. APIs, scoring logic, and model behavior may change.
