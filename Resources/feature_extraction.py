# This script aims to clean and extract features from the games dataset
import pandas as pd
import sqlite3 as sql

class TeamMetrics:
    def __init__(self, data):
        self.data = data
        self.clean_data = self.data.dropna(axis=1, inplace=True)

    def get_home_teams(self):
        self.home_teams_table = self.clean_data[['season_id',
                                                 'team_id_home']]
    def get_away_teams(self):
        pass


