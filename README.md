# data-retrieval-script
Develop modular shell scripts that automate data retrieval from a web endpoint 

This is a project that downloads and stores data in a directory, and then deletes old copies of that data.

# Getting Started

Before you begin, make sure you have Docker installed on your machine.

# Installation

***1: Clone this repository:

```
git clone <repository-url>
```
***2: Navigate to the project directory:***

```
cd <project-directory>
```

***3: Build the Docker image:***

```
docker build -t <image-name> .
```

# Usage

***1: Run the Docker container:***

```
docker run -it -v <data-directory>:/app/data <image-name>
```
Note: Replace <data-directory> with the path to the directory where you want to store the downloaded data, and replace <image-name> with the name you gave the Docker image when you built it.


