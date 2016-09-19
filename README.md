# Create the image

```docker build -t dotnet_web .```

# Create the container based on previous image
```docker run --name myapp -d -p 5004:5004 -v $PWD/app:/opt/webapp dotnet_web```

You can open http://127.0.0.1:5004 on your browser

# Running container without docker file, run it in the same app/ folder level
``` docker run --name webapp -p 4040:5004 --env ASPNETCORE_URLS=http://*:5004 -v $PWD/app:/opt/webapp -d  microsoft/dotnet /bin/bash -c  "cd /opt/webapp/ ; dotnet restore; dotnet run"```
