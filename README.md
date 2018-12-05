# Containerized Mozilla Firefox - firefox-icedtea

Very simple Docker image for Firefox with Java IcedTea plugin.

## WHY ?
WTF is this good for ? 

When you are SysAdmin and it comes to connecting to old unsupported management interfaces, often packed with Java technology it's propably broken with modern standards.

## How it works ?
Simply, only thing you need is configured docker and right permissions in your system for your user for docker.
If your user cannot run docker add your user to docker group in the system.

`# sudo usermod -aG docker <youruser>`

## Run the Fox ;)

```
# git clone https://github.com/rvojcik/firefox-icedtea.git firefox-icedtea
# cd firefox-icedtea
# ./firefox-docker --help
```
# Releases

* iceweasel, Debian Wheezy + Iceweasel from Distribution
* trusty, Ubuntu Trusty 14.04 + Firefox 51.0 
* trusty-stable, Ubuntu Trusty 14.04 + Firefox 63.0.3
