#    ___             _                  _  _    _                               
#   / _ \  ___    __| | ___  _ __ ___  (_)| |_ | |__                            
#  / /_\/ / _ \  / _` |/ __|| '_ ` _ \ | || __|| '_ \                           
# / /_\\ | (_) || (_| |\__ \| | | | | || || |_ | | | |                          
# \____/  \___/  \__,_||___/|_| |_| |_||_| \__||_| |_|                          
# 

from typing import Optional

from fastapi import FastAPI

app = FastAPI()


@app.get("/")
async def read_root():
    return {"Hello": "World"}


@app.get("/items/{item_id}")
async def read_item(item_id: int, q: Optional[str] = None):
    return {"item_id": item_id, "q": q}
