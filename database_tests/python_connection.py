#!/usr/bin/env python3

"""
Ceci est un programme de test de connection à la base de données MySQL par un programme python.
"""

import mysql.connector


if __name__ == "__main__":
    mysql.connector.connect(host='localhost',database='test_db',user='root',password='shw96ZWZS@')