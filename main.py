from bottle import Bottle, run, template, request, redirect

# Store activities in a list for simplicity
activities = []
points = 0

# Points assigned to each activity type
activity_points = {'Uczenie': 5, 'Cwiczenie': 5, 'czytanie': 2, 'kodowanie': 5}

app = Bottle()

@app.route('/')
def activity_list():
    return template('activities', rows=activities, total_points=points)

@app.route('/add', method='POST')
def add_activity():
    global points
    godziny = request.forms.get('godziny')
    name = request.forms.get('name')
    type_ = request.forms.get('type')
    suma = activity_points[type_] * float(godziny)
    if name and type_:
        activities.append({'name': name, 'type': type_, 'points': activity_points[type_], 'godziny': godziny,'suma':suma})

        points += activity_points[type_] * float(godziny)
    redirect('/')

if __name__ == '__main__':
    run(app, host='localhost', port=8080)

    #placek
