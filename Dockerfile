# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set environment variables
ENV APP_HOME /app
#ENV USER_NAME flaskuser

# Create the application directory
RUN mkdir -p $APP_HOME

# -------------------
RUN mkdir -p $APP_HOME/.cache
RUN mkdir -p ./.cache

#--------------------

# Create a non-root user to run the application
#RUN useradd -m -d $APP_HOME -s /bin/bash $USER_NAME
#RUN chown -R $USER_NAME:$USER_NAME $APP_HOME

# Change to the application directory
WORKDIR $APP_HOME

# Copy the local Flask application to the container
COPY app.py .

# Install Flask
RUN pip install Flask

# Switch to the non-root user
#USER $USER_NAME

# Expose the port on which the application will run
EXPOSE 5000
#EXPOSE 80

# Command to run the application
CMD ["python", "app.py"]
#CMD [ "python", "-m" , "flask", "run", "--host=0.0.0.0"]

