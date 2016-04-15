# [ASD_KARBALA](https://telegram.me/joinchat/C3vJiT3S817HdIPjZpFXHg)


*******************************************************************
```sh

# Let's install the bot.

git clone https://github.com/SAJJAD94/ASD_KARBALA.git

cd ASD_KARBALA

chmod +x launch.sh

./launch.sh install

./launch.sh 

# Enter a phone number & confirmation code.
```
### One command
To install everything in one command (useful for VPS deployment) on Debian-based distros, use:
```sh

git clone https://github.com/SAJJAD94/ASD_KARBALA.git && cd ASD_KARBALA && chmod +x launch.sh && ./launch.sh install && ./launch.sh
```

* * *

### Realm configuration

After you run the bot for first time, send it `!id`. Get your ID and stop the bot.

Open ./data/config.lua and add your ID to the "sudo_users" section in the following format:
```
  sudo_users = {
    18293081,
    0,
    YourID
  }
```
