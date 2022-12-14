notebook:
	pipenv run jupyter notebook

clean:
	rm -rf tutorial/mlruns/
	rm tutorial/mlflow.db

mlflow-server:
	cd tutorial && pipenv run mlflow server --backend-store-uri sqlite:///mlflow.db --default-artifact-root mlruns/ --host 0.0.0.0 --port 5000
