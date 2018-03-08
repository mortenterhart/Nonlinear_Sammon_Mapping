# Load MASS library
library(MASS);

# Read the object vectors from a CSV and transform them into a matrix
vectors <- read.csv(file = "building_vectors.csv", header = FALSE, sep = ",");
vector.matrix <- as.matrix(vectors);
# Output vector matrix
vector.matrix;

# Calculate the distance matrix between all vectors and replace
# all 0 with 0.00001 to avoid conflicts in sammon() function
distance.matrix <- dist(vector.matrix);
distance.matrix[distance.matrix == 0] <- 0.00001;
# Output distance matrix
distance.matrix;

# Calculate the projection data frame using the sammon algorithm:
#   input:  distance.matrix      the distance matrix
#           y                    the initial configuration
#           k = 3                the input dimension (3d object)
projection <- sammon(distance.matrix, y = cmdscale(distance.matrix, 3), k = 3);
# Output projection data and stress
projection$points;
projection$stress;

# Plot a diagram from projection points
plot(projection$points, type = "p");

# Write the projection matrix to a file
write.matrix(projection, file = "sammon_projection.matrix", sep = " ");

