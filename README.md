## Pneumonia Detection from Chest X-Ray Images using classical Machine Learning and Deep Learning                                             

<pre>
Domain             : Computer Vision, Machine Learning
Sub-Domain         : Deep Learning, Image Recognition
Techniques         : Deep Convolutional Neural Network, Feature Extraction, Classical ML Aglorithms 
Application        : Image Recognition, Image Classification, Medical Imaging
</pre>

### Description
<pre>
1. Detected Pneumonia from Chest X-Ray images using a Custom Convolutional Neural Network model and Classical ML Aglorithms.
2. The best of the classical ML Algoriths, Logistic Regression, attained testing accuracy of 89.21%.
2. Convololutional Neural Network attained testing accuracy 88.41% (+-1.1%) and a loss of 0.41.
</pre>

#### Code
<pre>
GitHub Link      : <a href=https://github.com/mdarm/Pneumonia-X-Ray-Detection>Detection of Pneumonia from Chest X-Ray Images</a>
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
                          Validation : 16   ( 2.8 Megabyte (MB))
                          Testing    : 624  (75.4 Megabyte (MB))

  
<b>Best Classical Machine Learning Model Parameters</b>
Machine Learning Library: Keras 
Best Model              : Logistic Regression
Loss Function           : categorical_crossentropy

Training Parameters
Max iterations          : 100 
Penalty                 : Manhattan (l1)
C Hyperparameter        : 0.01
Solver                  : Saga
Training Time           : 1 minutes 

Output (Prediction/ Recognition / Classification Metrics)
Testing
Accuracy (F-1) Score    : 89.21% 
Precision               : 83.78%
Recall (Pneumonia)      : 95.38% 


<b>CNN Parameters</b>
Machine Learning Library: PyTorch 
Base Model              : Custom Convolutional Neural Network
Optimizers              : Adam
Loss Function           : categorical_crossentropy

Training Parameters
Batch Size              : 256 
Number of Epochs        : 10 
Training Time           : 110 minutes 

Output (Prediction/ Recognition / Classification Metrics)
Testing
Accuracy (F-1) Score    : 88.4% (+-1.1%)
Loss                    : 0.41
Precision               : 88.37% (+-0.8%)
Recall (Pneumonia)      : 95.48% (+-1.8%)
</pre>

#### Tools / Libraries
<pre>
Languages               : Python
Tools/IDE               : Kaggle API 
Libraries               : Keras, PyTorch
</pre>

#### Dates
<pre>
Duration                : June 2023 - July 2023
Current Version         : v1.0
Last Update             : 09.07.2023
</pre>
