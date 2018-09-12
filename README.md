# fake-s3
Fake S3 Container

Installs & runs the latest (built weekly) version of [fake-s3 gem](https://github.com/jubos/fake-s3).

## Usage

The latest version of fake-s3 requires a license, [obtain one](https://supso.org/projects/fake-s3) and set the LICENSE_KEY variable. Without license the container will fail to start.

```yaml
s3:
  image: damacus/fake-s3:latest
  volumes:
    - /fakes3
  environment:
    - LICENSE_KEY="YOUR_LICENSE_HERE"
```


## Overriding the port

```yaml
environment:
  - PORT:1234
```
