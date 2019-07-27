dockerfile := "Dockerfile"
image_name := "juniorxsound/convexhull:latest"

build:
	docker build -f ./$(dockerfile) -t $(image_name) ./

build-clean:
	docker build --no-cache -f ./$(dockerfile) -t $(image_name) ./

shell:
	docker run -w /data --rm -it -v `pwd`:/data -t $(image_name) /bin/bash

jupyter:
	docker run -p 8888:8888 -w /data --rm -it -v `pwd`:/data -t $(image_name) jupyter notebook --allow-root \