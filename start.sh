git pull -f -q
pip install --quiet -U -r requirements.txt
uvicorn api:app --host=0.0.0.0 --port=${PORT:-5000} & python3 -m bot
