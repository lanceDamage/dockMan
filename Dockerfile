# Use a base image with the desired OS and Python version
FROM continuumio/anaconda3:latest

# Set the working directory
WORKDIR /app

# Install additional Python packages and tools
RUN conda install -y pandas scikit-learn matplotlib seaborn

# Add your custom scripts or notebooks
COPY . /app

# Expose the necessary ports (if applicable)
EXPOSE 8888

# Command to run when the container starts
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--no-browser", "--allow-root"]