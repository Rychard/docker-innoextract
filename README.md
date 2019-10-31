# docker-innoextract

Docker container that uses `innoextract` to extract the contents from
installation files

## Build

```cmd
docker build ./docker -t rychard/innoextract
```

## Pull

```cmd
docker pull rychard/innoextract
```

## Usage

1. Place one or more innosetup installers (`.exe`) in a directory
1. Mount that directory to `/src` when running the container

   ```cmd
   docker run -it --rm -v C:\my\installer\folder:/src rychard/innoextract
   ```

1. The container will invoke `innoextract` for each file in the directory,
   extracting the contents into a new folder named `<filename>_extract`