### Boston-House-Pricing

### Software and Tools Requirement

1. [Github Account](https://github.com)
2. [VS Code IDE](https://code.visualstudio.com/)
3. [Heroku Account (optional)](https://heroku.com) 
4. [Git CLI](https://git-scm.com/)
5. [Python](https://www.python.org/downloads/)
5. [PIP](https://pip.pypa.io/en/stable/installation/)
6. [Docker](https://www.docker.com/products/docker-desktop/)

## OPTION 1 :

### Create a new environment

```
python -m venv venv
```

### Activate the environment

```
venv\scripts\activate
```

### To install libraries in requirements.txt
```
pip install -r requirements.txt
```

### To run 
```
python app.py
```

## OPTION 2 :

## Build Docker image
```
docker build -t house-pricing .
```

### Run the container
```
docker run -p 8000:8000 -e PORT=8000 house-pricing 
```   