#!/bin/bash
echo "Patching openvino..."
docker exec immich_machine_learning sed -i 's/self\.model_format == ModelFormat\.ONNX/False/' /usr/src/app/models/facial_recognition/recognition.py
echo "Restarting container..."
docker restart immich_machine_learning
echo "Done!"