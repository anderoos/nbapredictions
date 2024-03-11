# NBA Game Prediction Model

## Introduction
This document aims to record decisions and reflections as I navigate this project. This document will be used to record, track, and guide during different stages of the project. Using this comprehensive dataset from Kaggle, this project aims to develop a prediction model for future games. Given players and historical game data, this project aims to:
* Accurately predict scores of home and opposing teams
* Evaluate inputs and determine the likelihood score based on past defensive and offensive plays.
* From score, evaluate winner and losers given two teams and its players.

## Planning (Phase 1 -- DEADLINE: MARCH 15)
1. Data Collection and Preprocessing
* Collect data on teams and player statistics
  * Limit to active teams only (team table)
  * Use games table with select features to evaluate scores
* Clean features and handle missing data


Two models:
- Based on historical games, determine if it is able to predict the correct winner
  - From game table, limit 25 years
- Use historical games to predict score outcome
- Individual player metrics,


## Analayze (Phase 2 -- DEADLINE: ------)
1. Exploratory data Analysis
* Explore and evaluate key characteristics of the dataset
* Identify relationships between variables and associations that influence score and game outcome.


## Construct
1. Model Development
* Establish baseline model performance using a simplified model
* Feature selection/ reduction
* Cross Validation

2. Model Evaluation and Tuning
* MSE/ MAE for score evaluation
* Hyperparameter tuning
* Ensemble methods to improve scores

* Deep learning with Keras

* Monte Carlo Simulations

## Execution
1. Backtesting

1. Improvement with new data
