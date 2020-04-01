# texlab

A Docker container  for LaTeX environment.

This provides a command-line-based LaTeX environment without the install of LaTeX for your own PC.
This requires Docker.

## Installation

### Build a Docker image in your own PC

- Execute the following command in the directory that there exists Dockerfile.
```
docker build -t texlab .
```

That's it.

### Download from DockerHub

```
docker pull okamumu/texlab
```

## Usage

### Commands:

- `texinit`: Generate initial files at the current directory
```
docker run -it --rm --name texlab -v (your directory):/workdir texlab texinit
```
- `texcompile`: Compile a given tex file and generate a PDF file
```
docker run -it --rm --name texlab -v (your directory):/workdir texlab texcompile [tex source file]
```
- `texdiff`: Generate a PDF file based on the difference from a given Git commit
```
docker run -it --rm --name texlab -v (your directory):/workdir texlab texdiff [tex source file] [commit id]
```



