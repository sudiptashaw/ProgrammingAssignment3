# Code Book

### The variables in the tidy data
Tidy data contains 180 rows and 68 columns. Each row has averaged variables for each subject and each activity.

### All the variables estimated from mean and standard deviation only are retained in the tidy set.

* mean(): Mean value
* std(): Standard deviation

### The data are averaged based on subject and activity group.

Subject column is numbered sequentially from 1 to 30.
Activity column has 6 types as listed below.
1. LAYING
2. SITTING
3. STANDING
4. WALKING
5. WALKING_DOWNSTAIRS
6. WALKING_UPSTAIRS

### The tidy data contains 6 rows (averaged based on activity) and 68 columns (66 variables and activity labels).
1. 	"subject"
2. 	"activity"
3. 	"timeBodyAccelerometer-mean()-X"
4. 	"timeBodyAccelerometer-mean()-Y"
5. 	"timeBodyAccelerometer-mean()-Z"
6. 	"timeBodyAccelerometer-std()-X"
7. 	"timeBodyAccelerometer-std()-Y"
8. 	"timeBodyAccelerometer-std()-Z"
9. 	"timeGravityAccelerometer-mean()-X"
10. 	"timeGravityAccelerometer-mean()-Y"
11. 	"timeGravityAccelerometer-mean()-Z"
12. 	"timeGravityAccelerometer-std()-X"
13. 	"timeGravityAccelerometer-std()-Y"
14. 	"timeGravityAccelerometer-std()-Z"
15. 	"timeBodyAccelerometerJerk-mean()-X"
16. 	"timeBodyAccelerometerJerk-mean()-Y"
17. 	"timeBodyAccelerometerJerk-mean()-Z"
18. 	"timeBodyAccelerometerJerk-std()-X"
19. 	"timeBodyAccelerometerJerk-std()-Y"
20. 	"timeBodyAccelerometerJerk-std()-Z"
21. 	"timeBodyGyroscope-mean()-X"
22. 	"timeBodyGyroscope-mean()-Y"
23. 	"timeBodyGyroscope-mean()-Z"
24. 	"timeBodyGyroscope-std()-X"
25. 	"timeBodyGyroscope-std()-Y"
26. 	"timeBodyGyroscope-std()-Z"
27. 	"timeBodyGyroscopeJerk-mean()-X"
28. 	"timeBodyGyroscopeJerk-mean()-Y"
29. 	"timeBodyGyroscopeJerk-mean()-Z"
30. 	"timeBodyGyroscopeJerk-std()-X"
31. 	"timeBodyGyroscopeJerk-std()-Y"
32. 	"timeBodyGyroscopeJerk-std()-Z"
33. 	"timeBodyAccelerometerMagnitude-mean()"
34. 	"timeBodyAccelerometerMagnitude-std()"
35. 	"timeGravityAccelerometerMagnitude-mean()"
36. 	"timeGravityAccelerometerMagnitude-std()"
37. 	"timeBodyAccelerometerJerkMagnitude-mean()"
38. 	"timeBodyAccelerometerJerkMagnitude-std()"
39. 	"timeBodyGyroscopeMagnitude-mean()"
40. 	"timeBodyGyroscopeMagnitude-std()"
41. 	"timeBodyGyroscopeJerkMagnitude-mean()"
42. 	"timeBodyGyroscopeJerkMagnitude-std()"
43. 	"frequencyBodyAccelerometer-mean()-X"
44. 	"frequencyBodyAccelerometer-mean()-Y"
45. 	"frequencyBodyAccelerometer-mean()-Z"
46. 	"frequencyBodyAccelerometer-std()-X"
47. 	"frequencyBodyAccelerometer-std()-Y"
48. 	"frequencyBodyAccelerometer-std()-Z"
49. 	"frequencyBodyAccelerometerJerk-mean()-X"
50. 	"frequencyBodyAccelerometerJerk-mean()-Y"
51. 	"frequencyBodyAccelerometerJerk-mean()-Z"
52. 	"frequencyBodyAccelerometerJerk-std()-X"
53. 	"frequencyBodyAccelerometerJerk-std()-Y"
54. 	"frequencyBodyAccelerometerJerk-std()-Z"
55. 	"frequencyBodyGyroscope-mean()-X"
56. 	"frequencyBodyGyroscope-mean()-Y"
57. 	"frequencyBodyGyroscope-mean()-Z"
58. 	"frequencyBodyGyroscope-std()-X"
59. 	"frequencyBodyGyroscope-std()-Y"
60. 	"frequencyBodyGyroscope-std()-Z"
61. 	"frequencyBodyAccelerometerMagnitude-mean()"
62. 	"frequencyBodyAccelerometerMagnitude-std()"
63. 	"frequencyBodyAccelerometerJerkMagnitude-mean()"
64. 	"frequencyBodyAccelerometerJerkMagnitude-std()"
65. 	"frequencyBodyGyroscopeMagnitude-mean()"
66. 	"frequencyBodyGyroscopeMagnitude-std()"
67. 	"frequencyBodyGyroscopeJerkMagnitude-mean()"
68. 	"frequencyBodyGyroscopeJerkMagnitude-std()"

### variable units
Activity variable is factor type.
Subject variable is integer type.
All the other variables are numeric type.
