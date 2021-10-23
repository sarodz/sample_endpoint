from fastapi import FastAPI
from sample_sklearn.train import main 
from sample_sklearn.load import load_model
from sample_endpoint.base import CaliData 
import json
import numpy as np

# prepare model
main()
# load model
MODEL = load_model()
app = FastAPI()
FIELDS = list(CaliData.schema()["properties"].keys())

@app.post("/")
def welcome():
    return {"Hello": "World"}


@app.post("/predict")
def predict(data_input: CaliData):
    data = np.array([data_input.dict()[field] for field in FIELDS])  
    prediction = MODEL.predict(data.reshape(1, -1))
    return {"prediction": round(prediction[0], 4)}
