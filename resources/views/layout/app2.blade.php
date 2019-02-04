<!DOCTYPE html>
<html>
<head>
    <meta charset='UTF-8'>
    <meta name="csrf-token" content="{{ csrf_token() }}">


</head>

<body>
<h1>Bienvenu sur ce super site</h1>
<nav>
    <a href="/">Home</a>
    <a href="/personnes">Les personnes</a>
    <a href="/films">Les films</a>
    <a href="/ajouterFilm">Ajoutez un film</a>
    
</nav>

<div class="container">
    @yield("content")
</div>
</body>
</html>