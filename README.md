# weatherCLI
### Project to fetch weather data for user specified city with a Bash script
#### How to use
1: Download latest release version and place it in any folder.

2: Make it globally accessible by putting a function in your .bashrc file that calls the script with 1 input.

```
weather () {
  source storage_drive:/folder/weather.sh
}
```
3: Use script by opening a bash shell and typing ```weather <city>```
