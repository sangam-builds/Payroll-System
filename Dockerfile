# ==============================================================================
# Multi-stage Dockerfile for PayrollPro (C++17 + Crow REST API + Frontend)
# Optimized for Render, Railway, Fly.io, or standard Docker deployments
# ==============================================================================

# ------------------------------------------------------------------------------
# Stage 1: Build the C++ Application
# ------------------------------------------------------------------------------
FROM ubuntu:22.04 AS builder

ENV DEBIAN_FRONTEND=noninteractive

# Install build prerequisites
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    cmake \
    git \
    ninja-build \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Copy project source code
COPY . .

# Configure and compile with CMake using Ninja in Release mode
RUN cmake -B build -S . \
    -DCMAKE_BUILD_TYPE=Release \
    -G Ninja \
    && cmake --build build --config Release --target payroll_server

# ------------------------------------------------------------------------------
# Stage 2: Minimal Runtime Container
# ------------------------------------------------------------------------------
FROM ubuntu:22.04 AS runner

ENV DEBIAN_FRONTEND=noninteractive
# Render defaults web services to port 10000 or provides $PORT dynamically
ENV PORT=10000

# Install runtime standard C++ libraries & certificates
RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates \
    libstdc++6 \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Copy compiled executable from builder stage
COPY --from=builder /app/build/payroll_server /app/payroll_server

# Copy frontend static assets and initial data files
COPY --from=builder /app/frontend /app/frontend
COPY --from=builder /app/data /app/data

# Ensure runtime directories exist and have proper read/write permissions
RUN mkdir -p /app/data/photos && chmod -R 777 /app/data && chmod +x /app/payroll_server

# Expose service port
EXPOSE 10000

# Start server listening on Render's dynamic $PORT (fallback to 10000)
CMD ["sh", "-c", "./payroll_server ${PORT:-10000}"]

