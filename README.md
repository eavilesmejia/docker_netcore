# Create the image
docker build -t kestrel .

# Create the container based on previous image
docker run --name myapp -d -p 127.0.0.1:5004:5004 kestrel

You can open http://127.0.0.1:5004 on your browser
