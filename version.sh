#!/bin/bash

# 버전 태그 생성 및 푸시 스크립트
# 사용법: ./version.sh <버전>
# 예시: ./version.sh 1.0.0

if [ -z "$1" ]; then
    echo "버전을 입력해주세요. 예: ./version.sh 1.0.0"
    exit 1
fi

VERSION=$1

# 변경사항 스테이징
git add .

# 커밋
git commit -m "v$VERSION"

# 태그 생성
git tag v$VERSION

# 태그 푸시
git push origin v$VERSION

# 변경사항 푸시
git push origin main

echo "버전 v$VERSION 태그 생성 및 푸시 완료!"