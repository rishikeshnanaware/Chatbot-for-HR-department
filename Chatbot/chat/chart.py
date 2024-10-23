import time
import mysql.connector
import random

def chart_display(query):
    current_milli_time = lambda: int(round(time.time() * 1000))
    id = str(current_milli_time())

    mydb = mysql.connector.connect(
        host="localhost",
        user="root",
        passwd="root",
        database="chatbot"
    )

    mycursor = mydb.cursor()

    #query = "select January, February, March, April, May, June, July, August,September,October,November,December from mytable where emp_id = 5;"
    mycursor.execute(query)

    row_headers=[x[0] for x in mycursor.description]
    new_header_utf_encode = []
    for header in row_headers:
        new_header_utf_encode.append(str(header))

    str_header = str(new_header_utf_encode)
    print str_header
    #print str_header
    rv = mycursor.fetchall()
    str_val = str([i for i in rv[0]])
    print str_val
    #print str_val

    color = []
    for i in row_headers:
        bar_col = 'rgba('+str(random.randint(0,255))+', '+str(random.randint(0,255))+', '+str(random.randint(0,255))+', 0.2)'
        color.append(bar_col)
    str_color = str(color)
    mycursor.close()
    mydb.close()
    chart_html = '''
    <canvas id="myChart'''+id+'''"></canvas>
    <script>
    var ctx = document.getElementById('myChart'''+id+'''').getContext('2d');
    var myChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: '''+str_header+''',
            datasets: [{
                label:'attendance' ,
                data: '''+str_val+''',
                backgroundColor: '''+str_color+''',
                borderColor: '''+str_color+''',
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero: true
                    }
                }]
            }
        }
    });
    </script>
    '''
    #print chart_html
    return chart_html