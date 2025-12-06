<!DOCTYPE html>
<html>

<head>
    @vite('resources/js/app.js')
</head>

<body>
    <div id="app">
        <button v-on:click="count++">Click me</button>
        <p>Count: @{{ count }}</p>
    </div>
</body>

</html>
