# docker buildx build --no-cache --platform linux/amd64 -t <REPO>/serverx:v0.0.1 .
# docker login -u <UNAME> -p <PASS> <REPO>
# docker push <REPO>/serverx:v0.0.1

deploy:
	docker buildx build --no-cache --platform linux/amd64 -t cr.selcloud.ru/test/serverx:v0.0.1 .
	docker login -u token -p CRgAAAAAsYBrOCPNnU4w5lpyWvBUqBJZc10Zx2Vk cr.selcloud.ru/test
	docker push cr.selcloud.ru/test/serverx:v0.0.1
