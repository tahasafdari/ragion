#!/bin/bash

DEFAULT_MODULE_NAME="src.main"

MODULE_NAME=${MODULE_NAME:-$DEFAULT_MODULE_NAME}
VARIABLE_NAME=${VARIABLE_NAME:-app}
export APP_MODULE=${APP_MODULE:-"$MODULE_NAME:$VARIABLE_NAME"}

HOST=${HOST:-0.0.0.0}
PORT=${PORT:-8000}

echo "Starting MultimodalRAG in development mode..."
exec uvicorn --reload --proxy-headers --host $HOST --port $PORT "$APP_MODULE"
