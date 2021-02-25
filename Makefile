IMG_NAME := jupyter/scipy-notebook

.PHONY: jupyter
jupyter:
	docker run -i --network host \
		-v "$(shell pwd):/work" -w /work \
		$(IMG_NAME) \
		jupyter notebook \
			--notebook-dir=/work \
			--ip='0.0.0.0' --port=8888 \
			--no-browser --allow-root \
			--NotebookApp.token='' --NotebookApp.password=''

