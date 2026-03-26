#!/bin/bash
cd /home/kavia/workspace/code-generation/phd-notes-and-knowledge-hub-249403-249417/phd_notes_frontend
npm run lint
ESLINT_EXIT_CODE=$?
npm run build
BUILD_EXIT_CODE=$?
if [ $ESLINT_EXIT_CODE -ne 0 ] || [ $BUILD_EXIT_CODE -ne 0 ]; then
   exit 1
fi

