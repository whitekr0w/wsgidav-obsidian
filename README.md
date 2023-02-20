# Why?
I got fed up with trying to configure other other WebDAV containers to work with [Remotely Save](https://github.com/remotely-save/remotely-save) on Obsidian, so I made my own.
This allegedly is how the plugin was tested with WebDAV, and lo-and-behold, when testing it magically works without errors.

I can't live without this plugin functioning.

# Building and Deploying
### Step 1: Clone the directory
```bash
git clone https://github.com/whitekr0w/wsgidav-obsidian.git
```

### Step 2: Change directories to the repo
```bash
cd wsgidav-obsidian
```

### Step 3: Build the image
```bash
docker build . -t wsgidav-obsidian
```

### Step 4: Change the config
```bash
# Using your favorite editor of choice, make necessary modifications to the config file.
nano config.yaml
```

### Step 5: Run Docker
```bash
docker run -d -v /path/to/your/config.yaml:/app/config.yaml -v /path/to/serve:/var/dav -p 8080:8080 wsgidav-obsidian
```

If you are runnning this with the default config, the username and password with be `obsidian:obsidian`.
