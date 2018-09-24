# static-http__system

## versions

### 1.0.0 base case

- definition at root
    - references service definition at gregbanks/static-http/definition/www.yaml
    - uses remote Dockerfile and build context

### 1.1.0 override

- definition at root
    - points to remote Dockerfile and build context in local service definition

### 1.2.0 override

- definition at root
    - points to local Dockerfile using defaults
    - points at remote build context in local service definition
- Dockerfile at root

### 1.3.0 override

- definition at root
    - points to local build context using defaults
    - points at remote Dockerfile in local service definition
- build context at root

### 1.4.0 override

- definition at root
    - points to remote Dockerfile and build context in local service definition
    - sets build arg `HTML_DIR` to `html2`

