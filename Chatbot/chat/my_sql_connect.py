import mysql.connector
import json
from json2html import *

def database_fetch(query):
  mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="root",
    database="chatbot"
  )

  mycursor = mydb.cursor()
  mycursor.execute(query)
  row_headers=[x[0] for x in mycursor.description] #this will extract row headers
  rv = mycursor.fetchall()
  mycursor.close()
  mydb.close()
  json_data=[]
  for result in rv:
      json_data.append(dict(zip(row_headers,result)))
  return json_data

def json_html(json_data):
  jsonfile = json.dumps(json_data)
  infoFromJson = json.loads(jsonfile)
  if len(infoFromJson) == 0:
      return "No Results to Display."
  return json2html.convert(json = infoFromJson)
