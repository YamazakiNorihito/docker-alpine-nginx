```bash
$ docker build -t alpine_nginx .
[+] Building 5.9s (11/11) FINISHED
 => [internal] load build definition from Dockerfile                                                                                                                 0.1s
 => => transferring dockerfile: 828B                                                                                                                                 0.1s
 => [internal] load .dockerignore                                                                                                                                    0.0s
 => => transferring context: 2B                                                                                                                                      0.0s
 => [internal] load metadata for docker.io/library/alpine:3.13.6                                                                                                     4.8s
 => [auth] library/alpine:pull token for registry-1.docker.io                                                                                                        0.0s
 => [1/5] FROM docker.io/library/alpine:3.13.6@sha256:2582893dec6f12fd499d3a709477f2c0c0c1dfcd28024c93f1f0626b9e3540c8                                               0.0s
 => [internal] load build context                                                                                                                                    0.1s
 => => transferring context: 296B                                                                                                                                    0.0s
 => CACHED [2/5] RUN apk -U add --no-cache nginx                                                                                                                     0.0s
 => CACHED [3/5] RUN mkdir -p /run/nginx                                                                                                                             0.0s
 => [4/5] ADD default.conf /etc/nginx/conf.d/default.conf                                                                                                            0.1s
 => [5/5] COPY index.html /usr/share/nginx/html/                                                                                                                     0.2s
 => exporting to image                                                                                                                                               0.2s
 => => exporting layers                                                                                                                                              0.1s
 => => writing image sha256:0bcf9df445a94764b061f7ae7ce69d8ae406144a5f092bcf92efc60d7cf17470                                                                         0.0s
 => => naming to docker.io/library/alpine_nginx                                                                                                                      0.0s

Use 'docker scan' to run Snyk tests against images to find vulnerabilities and learn how to fix them


$ docker images
REPOSITORY                        TAG               IMAGE ID       CREATED          SIZE
alpine_nginx                      latest            0bcf9df445a9   12 seconds ago   7.03MB


$ docker run --rm -itd -p 8080:80 --name AL03  alpine_nginx
6756a08138a4bb22eb87a9679bc172f52c24f9cff2627fd5174e7c97bbc1100e


$ docker stop AL03
AL03
```
