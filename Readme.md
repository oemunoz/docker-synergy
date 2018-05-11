# Docker for synergy
[dockerhub](https://hub.docker.com/r/oems/docker-synergy/)

There is a new pay version at [https://symless.com/synergy](https://symless.com/synergy), that versions are uper 2.x. 

Mouse And Keyboard Sharing

**This is only the 1.6.2 version.** You must to use a secure environment building your  VPN, Firewall and etc. 

Synergy is an open-source software that enables you to share a single mouse and keyboard with multiple other machines that are connected via a TCP/IP network. You can simply move your mouse off the edge of your main screen to enter the screen of a secondary computer to the left or right of you. While your mouse remains on the other PCs desktop you can control it with your main mouse and keyboard, and to return control to your main computer, simply move the mouse back.
Synergy allows you to configure multiple computers, it needs to be installed on each of the computers to be controlled. The initial configuration can be a little confusing, and the docs are mostly aimed at technical users. Basically you have to tell the program what to do when the mouse passes the designated edge of your screen, and also how to get back on your main screen.

![System Try](https://github.com/oemunoz/docker-synergy/raw/master/images/SystemTryKde.png)

## How to run this image

This include this configuration. (note the host name on the compose file.)

```bash
docker pull oems/docker-synergy
```

```bash
docker-compose up -d
```
![System Try](https://github.com/oemunoz/docker-synergy/raw/master/images/SysMap.png)

or direct commnad with the line command:


```bash
docker run -ti --rm \
       -e "DISPLAY=$DISPLAY" \
       -e "QT_X11_NO_MITSHM=1" \
       -v /tmp/.X11-unix:/tmp/.X11-unix \
       synergy:0.0.1
```

## How to build this image.

```bash
docker build -t "synergy:0.0.1" .
```
Remember to edit docker-compose file to point to "synergy:0.0.1".

## FAQs and TODOs

- This docker is part of the of the original developer TEAM or have a relation with original developers?

> R: No this docker is not part of the original developers TEAM or have any relation with the original developers.

- Why to build the release 1.6.2?

> R: These release can copy and paste, some of the newer free release dont have this feacture.

- Why dont use the pay version?

> R: I have a lot of work with this tool, and the new versions cant enter on my workflow.

- How is the experence running inside the docker?

> Complete, even exceeded my initial expectations. 

- This work with bionic

> Yes, I make this becose the upgrade from xenial to bionic.

- [ ] TODO: Better documentation.
- [ ] TODO: Maybe some pre-configs.

# Powered by:
- [https://symless.com/synergy](https://symless.com/synergy) Original developers.

# References:
- [GitHub repo](https://github.com/oemunoz/docker-synergy)

