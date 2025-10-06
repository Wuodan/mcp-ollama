FROM python:3-alpine

WORKDIR /app

RUN --mount=type=bind,source=dist/,target=/tmp/dist \
    pip install --no-cache-dir /tmp/dist/*.whl \
    && adduser -D -u 10001 appuser

USER appuser

CMD ["python", "-m", "mcp_ollama"]
