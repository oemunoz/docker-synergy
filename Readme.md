# Docker for synapsys
(dockerhub)[https://hub.docker.com/r/oems/docker-synergy/]

Mouse And Keyboard Sharing

**This is the 1.6.2 version, is old and insecure.** You must to use on a secure environment or build VPN, Firewall and by you own.

There is a new pay version, https://symless.com/synergy if you want to use not for test only.

Synergy is an open-source software that enables you to share a single mouse and keyboard with multiple other machines that are connected via a TCP/IP network. You can simply move your mouse off the edge of your main screen to enter the screen of a secondary computer to the left or right of you. While your mouse remains on the other PCs desktop you can control it with your main mouse and keyboard, and to return control to your main computer, simply move the mouse back.
Synergy allows you to configure multiple computers, it needs to be installed on each of the computers to be controlled. The initial configuration can be a little confusing, and the docs are mostly aimed at technical users. Basically you have to tell the program what to do when the mouse passes the designated edge of your screen, and also how to get back on your main screen.

## How to build this image.

```bash
docker build -t "synergy:0.0.1" .
```

## How to run this image

This include this configuration. (note the host name on the compose file.)

```bash
docker-compose up -d
```

or whit line command

```bash
docker run -ti --rm \
       -e "DISPLAY=$DISPLAY" \
       -e "QT_X11_NO_MITSHM=1" \
       -v /tmp/.X11-unix:/tmp/.X11-unix \
       synergy:0.0.1
```
