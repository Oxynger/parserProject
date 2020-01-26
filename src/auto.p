@auto[]

@main[]
<html>
   ^head[]
   <body>
      ^header[]
      ^content[]
      ^footer[]
   </body>
</hmlt>

@content[]
<div class="content">
   ^body_main[]
</div>

@head[]
<head>
   <meta charset="UTF-8" />
   <meta name="viewport" content="width=device-width, initial-scale=1.0" />
   <meta http-equiv="X-UA-Compatible" content="ie=edge" />
   <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,400i,700,700i&display=swap&subset=cyrillic" rel="stylesheet">
   <link rel='stylesheet' type='text/css' media='screen' href='/css/main.css'>
   <title>Тестовый сайт Parser3</title>
</head>

@header[]
<div class="header">
   <a href="/" class="header-title">Новости</a>
   <div class="header-menu">
      <a href="/offer">Предложить статью</a>
      <a href="/contacts">Контакты</a>
   </div>
</div>

@footer[]
<div class="footer">
   $now[^date::now[]]
   Powered by
   <a href="https://www.parser.ru/"><strong>Parser3</strong></a>
   — 1997-$now.year
</div>

@refresh[redirect_url]
$response:refresh[
   $.value(0)
   $.url[$redirect_url]
]
@dbconnect[code]
$user[$env:REDIRECT_POSTGRES_USER]
$password[$env:REDIRECT_POSTGRES_PASSWORD]
$connect_string[pgsql://oxynger:12345@178.128.35.206:5432/p3test]
^connect[$connect_string]{$code}
