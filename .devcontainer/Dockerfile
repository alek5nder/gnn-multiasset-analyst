FROM node:22-bookworm-slim

# Instalacja pakietów systemowych, LaTeX, klienta Postgresa i narzędzi CLI
RUN apt-get update && apt-get install -y --no-install-recommends \
    git openssh-client curl make jq python3 python3-pip python3-venv \
    postgresql-client \
    texlive-latex-base texlive-latex-extra texlive-fonts-recommended \
    texlive-science latexmk chktex \
    && rm -rf /var/lib/apt/lists/*

# Instalacja lintera stylometrycznego Vale
RUN curl -sfL https://install.goreleaser.com/github.com/errata-ai/vale.sh | sh -s -- -b /usr/local/bin

# Instalacja agentów CLI oraz serwera MCP dla PostgreSQL
RUN npm install -g @google/gemini-cli \
    @modelcontextprotocol/server-postgres
RUN curl -fsSL https://antigravity.google/cli/install.sh | bash

# Dodanie agy do PATH
ENV PATH="/root/.local/bin:${PATH}"

WORKDIR /workspace