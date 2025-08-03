FROM ghcr.io/lisp-stat/cl-jupyter:latest

# Set working directory
WORKDIR /home/jovyan

# Create IPS directory and copy notebooks there
RUN mkdir -p IPS
COPY ["Chapter 1 Looking at Data.ipynb", "./IPS/"]
COPY ["Chapter 2 Data Relationships.ipynb", "./IPS/"]

# Equivalent to a README for notebooks
COPY index.ipynb ./

# Copy other essential files
COPY data/ ./data/
COPY src/ ./src/

# Ensure proper ownership
USER root
RUN chown -R jovyan:jovyan /home/jovyan/
USER jovyan

# Remove dotfiles directory if it exists
RUN rm -rf ~/dotfiles ./dotfiles

