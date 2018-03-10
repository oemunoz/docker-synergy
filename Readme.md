# Docker for synapsys

```bash
docker build -t "synergy:0.0.1" .
```

```bash
docker run -ti --rm \
       -e "DISPLAY=$DISPLAY" \
       -e "QT_X11_NO_MITSHM=1" \
       -v /tmp/.X11-unix:/tmp/.X11-unix \
       synergy:0.0.1
```
