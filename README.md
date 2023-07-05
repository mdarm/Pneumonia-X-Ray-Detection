## Pneumonia Detection from Chest X-Ray Images using classical Machine Learning and Deep Learning                                             

<pre>
Domain             : Computer Vision, Machine Learning
Sub-Domain         : Deep Learning, Image Recognition
Techniques         : Deep Convolutional Neural Network, ImageNet, Inception
Application        : Image Recognition, Image Classification, Medical Imaging
</pre>

### Description
<pre>
1. Detected Pneumonia from Chest X-Ray images using Custom Deep Convololutional Neural Network and by retraining pretrained model “InceptionV3” with 5856 images of X-ray (1.15GB).
2. For retraining removed output layers, freezed first few layers and fine-tuned model for two new label classes (Pneumonia and Normal).
3. With Custom Deep Convololutional Neural Network attained testing accuracy 89.53% and loss 0.41.
</pre>

#### Code
<pre>
GitHub Link      : <a href=https://github.com/mdarm/Pneumonia-X-Ray-Detection>Detection of Pneumonia from Chest X-Ray Images(GitHub)</a>
</pre>

#### Dataset
<pre>
Dataset Name     : Chest X-Ray Images (Pneumonia)
Dataset Link     : <a href=https://www.kaggle.com/paultimothymooney/chest-xray-pneumonia>Chest X-Ray Images (Pneumonia) Dataset (Kaggle)</a>
                 : <a href=https://data.mendeley.com/datasets/rscbjbr9sj/2>Chest X-Ray Images (Pneumonia) Dataset (Original Dataset)</a>
Original Paper   : <a href=https://www.cell.com/cell/fulltext/S0092-8674(18)30154-5>Identifying Medical Diagnoses and Treatable Diseases by Image-Based Deep Learning</a>
                   (Daniel S. Kermany, Michael Goldbaum, Wenjia Cai, M. Anthony Lewis, Huimin Xia, Kang Zhang)
                   https://www.cell.com/cell/fulltext/S0092-8674(18)30154-5
</pre>

<pre>
<b>Dataset Details</b>
Dataset Name            : Chest X-Ray Images (Pneumonia)
Number of Class         : 2
Number/Size of Images   : Total      : 5856 (1.15 Gigabyte (GB))
                          Training   : 5216 (1.07 Gigabyte (GB))
                          Validation : 320  (42.8 Megabyte (MB))
                          Testing    : 320  (35.4 Megabyte (MB))

<b>Model Parameters</b>

</pre>

##### Sample Output: 


##### Confusion Matrix: 


#### Tools / Libraries


#### Dates
<pre>
Duration                : June 2023 - July 2023
Current Version         : v1.0.0.3
Last Update             : 05.07.2023
</pre>
