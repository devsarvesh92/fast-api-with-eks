from fastapi import FastAPI

app = FastAPI()

@app.get("/ht")
async def ht():
    return {"message": "hello"}
