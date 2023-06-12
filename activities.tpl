<!DOCTYPE html>
<html>
<head>
    <title>Activity Tracker</title>
</head>
<body>
    <h1>Activity Tracker</h1>
    <form action="/add" method="post">
        Activity: <input name="name" type="text" />
        Type: <select name="type">
                <option value="Uczenie">Uczenie</option>
                <option value="Cwiczenie">Cwiczenie</option>
                <option value="czytanie">czytanie</option>
                <option value="kodowanie">kodowanie</option>
              </select>
        Hours: <input name="godziny" type="number" step="0.1" min="0" />


        <input value="Add" type="submit" />
    </form>
    <h2>Total points: {{total_points}}</h2>
    <table>
         <tr>
            <td>|Aktywnosc</td>
            <td>|Typ</td>
            <td>|Puntky*</td>
            <td>|Godziny</td>
            <td>|suma</td>
        </tr>
        % for row in rows:
        <tr>
            <td>|{{row['name']}}</td>
            <td>|{{row['type']}}</td>
            <td>|{{row['points']}}</td>
            <td>|{{row['godziny']}}</td>
            <td>|{{row['suma']}}</td>
        </tr>
        % end
    </table>
</body>
</html>
