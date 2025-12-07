<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.min.js" integrity="sha384-G/EV+4j2dNv+tEPo3++6LCgdCROaejBqfUeNjuKAiuXbjrxilcCdDz6ZAVfHWe1Y" crossorigin="anonymous"></script>
</head>

<body>
    <table class="table">
        <thead>
            <tr>
                <th>Name</th>
                <th>Count</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($nameList as $name => $count)
            <tr>
                <td>{{ $name }}</td>
                <td>{{ $count }}</td>
            </tr>
            @endforeach
        </tbody>
    </table>
    <table class="table">
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>He</th>
                <th>Kick He</th>
                <th>Bac</th>
                <th>Bac He Ko He</th>
                <th>Vang</th>
                <th>Price</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($matchs as $match)
            <tr>
                <td>
                    {{ $match['id'] }}
                </td>
                <td>
                    @foreach ($match['name'] as $name)
                    {{ $name }} <br>
                    @endforeach
                </td>
                <td>
                    @foreach ($match['he'] as $he)
                    {{ $he['name'] }} : {{ $he['soluong'] }} - {{ $he['bac'] }} <br>
                    @endforeach
                </td>
                <td>
                    @foreach ($match['kick_he'] as $kick_he)
                    {{ $kick_he['name'] }} : {{ $kick_he['soluong'] }} - {{ $kick_he['bac'] }} <br>
                    @endforeach
                </td>
                <td>
                    @foreach ($match['bac'] as $bac => $value)
                    {{ $bac }} : {{ $value }} <br>
                    @endforeach
                </td>
                <td>
                    @foreach ($match['bac_he_ko_he'] as $he => $value)
                    {{ $he }} : {{ $value }} <br>
                    @endforeach
                </td>
                <td>
                    @foreach ($match['vang'] as $vang => $value)
                    {{ $vang }} : {{ $value }} <br>
                    @endforeach
                </td>
                <td>
                    {{ $match['price'] }}
                    {{ $match['price1'] }}
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
</body>

</html>