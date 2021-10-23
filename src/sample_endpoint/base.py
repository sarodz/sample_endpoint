from pydantic import BaseModel

class CaliData(BaseModel):
    MedInc: float
    HouseAge: int
    AveRooms: float
    AveBedrms: float
    Population: int
    AveOccup: float
    Latitude: float
    Longitude: float
