

## Build with Docker
Run:
```bash
docker build -t bytme .
docker run -v ./logs:/app/logs --name namebyteme -itp 8080:8080 bytme
```

Stop:
```bash
docker stop namebyteme
docker rm namebyteme
```
