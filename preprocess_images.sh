
# Build the TFRecords version of the image data.
ls -1 /home/admin-user/tensor_img/images/raw-data/train | grep -v 'LICENSE' | sed 's/\///' | sort > /home/admin-user/tensor_img/images/raw-data/labels.txt
echo `pwd`
python3 build_image_data.py \
  --train_directory="/home/admin-user/tensor_img/images/raw-data/train" \
  --validation_directory="/home/admin-user/tensor_img/images/raw-data/validate" \
  --output_directory="/home/admin-user/tensor_img/images/output/" \
  --labels_file="/home/admin-user/tensor_img/images/raw-data/labels.txt"
