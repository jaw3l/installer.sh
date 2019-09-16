# installer.sh

## Running The Script

Just run the following code in the terminal.

```shell
bash core.sh
```

# Installation with WGet

```shell
sudo apt install unzip &
wget -qO- https://github.com/jaw3l/installer.sh/archive/master.zip &
unzip installer.sh-master.zip && rm installer.sh-master.zip &
cd installer.sh-master/ &
sudo chmod +x core.sh &
bash core.sh &
```

# Installation with Curl

```shell
sudo apt install unzip &
curl -L https://github.com/jaw3l/installer.sh/archive/master.zip &
unzip installer.sh-master.zip && rm installer.sh-master.zip &
cd installer.sh-master/ &
sudo chmod +x core.sh &
bash core.sh &
```
