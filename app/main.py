from fastapi import FastAPI

app = FastAPI()

@app.get("/healthz")
def health_check():
    return {"status": "ok"}

@app.get("/hello")
def say_hello(name: str = "World"):
    return {"message": f"Hello, {name}!"}

