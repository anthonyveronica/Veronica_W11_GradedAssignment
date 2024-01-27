# Microservices
# Week 10 & 12 Graded Assignment for IIITH Software Engineering DataScience

# # Install Virtual box
1. Create VM as name  Ubuntu 
2. Install VS code in Ubuntu 

## Steps for model training
1. Go the application folder   
2.  activate virtual environment  
3.  python3 code_model_training/train.py  
4.  trained model will be saved in model directory  

## Steps for model testing via flask application
1. Go the application folder 
2.  activate virtual environment 
3.  python3 app.py
4. ubuntu curl -X GET http://localhost:5000/info
5. ubuntu curl -X GET http://localhost:5000/health
6. ubuntu curl -X Post curl -d '[{"radius_mean": 17.99, "texture_mean": 10.38, "perimeter_mean": 122.8, "area_mean": 1001.0, "smoothness_mean": 0.1184, "compactness_mean": 0.2776, "concavity_mean": 0.3001, "concave points_mean": 0.1471, "symmetry_mean": 0.2419, "fractal_dimension_mean": 0.07871, "radius_se": 1.095, "texture_se": 0.9053, "perimeter_se": 8.589, "area_se": 153.4, "smoothness_se": 0.006399, "compactness_se": 0.04904, "concavity_se": 0.05373, "concave points_se": 0.01587, "symmetry_se": 0.03003, "fractal_dimension_se": 0.006193, "radius_worst": 25.38, "texture_worst": 17.33, "perimeter_worst": 184.6, "area_worst": 2019.0, "smoothness_worst": 0.1622, "compactness_worst": 0.6656, "concavity_worst": 0.7119, "concave points_worst": 0.2654, "symmetry_worst": 0.4601, "fractal_dimension_worst": 0.1189}]' \
     -H "Content-Type: application/json" \
     -X POST http://0.0.0.0:5000/predict

## Steps to create and run container 
1. Go the application folder 
2.  docker build -t \<image ID\> .  
3. docker run -dp 5000:5000 \<image ID\>