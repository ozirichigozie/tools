# What I Learned Today
This file will be a compilation of some of the things I learn each time I study as a Cloud and DevOps Engineer.
- (16/07/2023) So, I was trying to start a minikube cluster on my local machine and my default browser would not open up automatically. After searching on the internet, I found the following solution. To set microsoft edge as the default web browser of your ubuntu 20.04 app, run the following commands on your ubuntu terminal:
```
sudo apt install xdg-utils -y
xdg-settings set default-web-browser microsoft-edge.desktop
```

