from fastapi import FastAPI, File, UploadFile
import os
import subprocess

app = FastAPI()

UPLOAD_DIR = "/app/uploads"
OUTPUT_DIR = "/app/output"
RVC_DIR = "/app/RVC"

os.makedirs(UPLOAD_DIR, exist_ok=True)
os.makedirs(OUTPUT_DIR, exist_ok=True)

@app.post("/convert-voice/")
async def convert_voice(file: UploadFile, model: str):
    file_path = os.path.join(UPLOAD_DIR, file.filename)
    with open(file_path, "wb") as f:
        f.write(await file.read())

    output_path = os.path.join(OUTPUT_DIR, file.filename.replace(".wav", "_converted.wav"))
    
    # Call infer-web.py inside RVC
    command = f"python {RVC_DIR}/infer-web.py --input {file_path} --output {output_path} --model {model}"
    subprocess.run(command, shell=True)

    return {"output_url": f"http://localhost:8000/static/{output_path}"}
