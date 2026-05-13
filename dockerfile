# Step 1: Python ki image use karo (Nginx ki jagah)
FROM python:3.9-slim

# Step 2: Container ke andar 'app' folder banao
WORKDIR /app

# Step 3: Saari files (app.py aur templates folder) copy karo
COPY . .

# Step 4: Flask aur MySQL connector install karo
RUN pip install flask mysql-connector-python

# Step 5: Port 80 kholo (Nginx bhi isi par chalta tha)
EXPOSE 80

# Step 6: App ko start karo
CMD ["python", "app.py"]
