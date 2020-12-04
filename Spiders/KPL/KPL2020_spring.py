# https://www.fnscore.com/detail/league/kog-2/league-kog-647.html

import requests
from bs4 import BeautifulSoup
from sql import Sql


Sql = Sql()
db_conn = Sql.conn_db('wzmatch')

url = 'https://www.fnscore.com/detail/league/kog-2/league-kog-626.html'
responce = requests.get(url)
html = responce.text


data = []
soup = BeautifulSoup(html, 'html.parser')
matches = soup.find_all('div', 'match-panel-container')[1].find_all('div', 'match-panel-item match-table-item')
for match in matches:
    match_info = match.find_all('p')
    matchTime = match_info[0].get_text()
    teams = match.find_all('div', 'team')
    teamA = teams[0].find('p').get_text()
    teamB= teams[1].find('p').get_text()
    score = match_info[2].get_text()
    BO = match_info[4].get_text()
    data.append([matchTime,teamA,teamB,score,BO])


sql = 'insert into kpl2020_spring(matchTime,teamA,teamB,score,BO) values(%s,%s,%s,%s,%s)'
Sql.exec_sql(db_conn, sql, data)

