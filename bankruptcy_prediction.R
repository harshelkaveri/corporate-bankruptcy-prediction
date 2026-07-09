library(randomForest)
library(caret)
library(caTools)

df<- read.csv("bankruptcy.csv")
nrow(df)
# Convert target to factor
df$Bankrupt. <- as.factor(df$Bankrupt.)

# Train-test split
set.seed(1)
split <- sample.split(df$Bankrupt., SplitRatio = 0.7)

train <- subset(df, split == TRUE)
test <- subset(df, split == FALSE)

# Balance training data
bankrupt <- train[train$Bankrupt. == 1, ]
non_bankrupt <- train[train$Bankrupt. == 0, ]

set.seed(1)
non_sample <- non_bankrupt[
  sample(nrow(non_bankrupt), nrow(bankrupt)),
]

train_balanced <- rbind(bankrupt, non_sample)


# Random Forest model
rf_model <- randomForest(
  Bankrupt. ~ .,
  data = train_balanced,
  ntree = 200,
  mtry =3,
  importance = TRUE
)

print(rf_model)

# Predictions
pred <- predict(rf_model, test, type = "class")

# Evaluation
confusionMatrix(pred, test$Bankrupt., positive = "1")
varImp(rf_model)
