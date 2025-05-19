#!/bin/bash

set -e

echo "🔧 Whisper 설치를 시작합니다..."

sudo apt update
sudo apt install -y python3 python3-pip ffmpeg

pip3 install --upgrade pip setuptools wheel
pip3 install git+https://github.com/openai/whisper.git

echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

echo "✅ Whisper 설치 완료!"
