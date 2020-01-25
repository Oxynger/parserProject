@auto[]
$connect_string[pgsql://oxynger:12345@178.128.35.206:5432/p3test]

@main[]
^header[]
^body[]
^footer[]

@body[]
<table width="100%" height="65%" border="0" bgcolor="#000000" cellspacing="1">
   <tr  bgcolor="#ffffff" height="100%">
      <td width="70%" valign="top" bgcolor="#f4f4f4">
         ^body_main[]
      </td>
      <td width="15%" valign="top" bgcolor="#EFEFEF">
         <b>^body_additional[]</b>
      </td>
   </tr>
</table>
<br />


@header[]
<html>
<head>

   <link rel='stylesheet' type='text/css' media='screen' href='/styles/main.css'>
   <title>Тестовый сайт Parser3</title>
</head>
<body bgcolor="#FAEBD7">

<table width="100%"border="0" bgcolor="#000000" cellspacing="1">
   <tr  bgcolor="#FFFFFF" height="60">
      <td onClick="document.location.href='/';">
         <font size="+2"> <b> <center>^greeting[]</center></b></font>
      </td>
   </tr>
</table>
<br />

@footer[]
<table width="100%" border="0" bgcolor="#000000" cellspacing="0">
   <tr>
      <td></td>
   </tr>
</table>
$now[^date::now[]]
<font size="-3">
<center>Powered by Parser3<br />1997-$now.year</center>
</font>
</body>
</html>

@dbconnect[code]
^connect[$connect_string]{$code}

@calendar[]
$calendar_locale[
   $.month_names[
         $.1[Январь]
         $.2[Февраль]
         $.3[Март]
         $.4[Апрель]
         $.5[Май]
         $.6[Июнь]
         $.7[Июль]
         $.8[Август]
         $.9[Сентябрь]
         $.10[Октябрь]
         $.11[Ноябрь]
         $.12[Декабрь]
   ]
   $.day_names[
         $.0[пн]
         $.1[вт]
         $.2[ср]
         $.3[чт]
         $.4[пт]
         $.5[сб]
         $.6[вс]
   ]
   $.day_colors[
         $.0[#000000]
         $.1[#000000]
         $.2[#000000]
         $.3[#000000]
         $.4[#000000]
         $.5[#800000]
         $.6[#800000]
   ]
]
$now[^date::now[]]
$days[^date:calendar[rus]($now.year;$now.month)]
<center>
<table bgcolor="#000000" cellspacing="1">
   <tr>
      <td bgcolor="#FFFFFF" colspan="7" align="center">
         <b>$calendar_locale.month_names.[$now.month]</b>
      </td>
   </tr>
   <tr>
      ^for[week_day](0;6){
         <td width="14%" align="center" bgcolor="#A2D0F2">
            <font color="$calendar_locale.day_colors.$week_day">
               $calendar_locale.day_names.$week_day
            </font>
         </td>
      }
   </tr>
^days.menu{
   <tr>
      ^for[week_day](0;6){
         ^if($days.$week_day){
            ^if($days.$week_day==$now.day){
            <td align="center" bgcolor="#FFFF00">
               <font color="$calendar_locale.day_colors.$week_day">
               <b>$days.$week_day</b>
               </font>
            </td>
            }{         
            <td align="center" bgcolor="#FFFFFF">
               <font color="$calendar_locale.day_colors.$week_day">
               <a href="/?day=$days.$week_day">$days.$week_day</a>
               </font>
            </td>
            }
         }{
            <td bgcolor="#DFDFDF">&nbsp</td>   
         }
      }
   </tr>
}
</table>
</center>