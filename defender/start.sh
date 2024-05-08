docker build -t bytme .
docker run -d -v ./logs:/app/logs --name namebyteme -itp 8080:8080 bytme
