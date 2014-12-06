
Programming-Paradigms-DD1361.F1
===============================
Uppvärmning
Problem ID: kth:progp:warmupTime limit: 1 secondMemory limit: 1024 MB
My Submissions
I denna labb ska du konstruera några enkla funktioner i Haskell. Alla funktioner du definierar i denna labb ska ligga i en modul som heter F1. Följande är ett kodskelett som man kan utgå ifrån, det innehåller triviala kodstubbar (som såklart inte gör rätt) för samtliga deluppgifter i labben.

module F1 where

-- Vad ska de andra funktionernas typsignaturer vara?
fib :: Integer -> Integer
fib n = 0
rovarsprak s = s
karpsravor s = s
medellangd s = 1.0
skyffla s = s
1 Fibonacci-talen
Fibonacci-talen är en talföljd som definieras så här:

F(n)=⎧⎩⎨⎪⎪01F(n−1)+F(n−2)om n=0om n=1om n>1
Uppgift

Skriv en funktion fib som tar ett heltal n och returnerar F(n). Du behöver inte hantera negativa tal. Funktionen ska klara att beräkna F(n) för n upp till 30 på en bråkdel av en sekund. Hur lång tid tar det att beräkna F(35)? F(40)?

Tips

Lättast är att definiera funktionen med flera ekvationer (analogt med definitionen ovan).

Exempel
fib(7) ska returnera 13

fib(17) ska returnera 1597

2 Rövarspråket
I rövarspråket dubblerar man alla konsonanter och lägger ett “o” emellan, se exempel nedan. (För den här uppgiften ignorerar vi de specialfall som ibland tillämpas där t.ex. “x” behandlas som “ks”.)

Uppgift

Skriv en funktion rovarsprak som tar en sträng och returnerar en ny sträng där varje konsonant x har ersatts av strängen xox. Skriv också en funktion karpsravor som gör det omvända, dvs tar en sträng på rövarspråk och “avkodar” den.

Funktionerna behöver bara hantera strängar med gemener (inga mellanslag, siffror, stora bokstäver, eller andra tecken), och behöver inte hantera åäö. Funktionen karpsravor behöver bara fungera på strängar som verkligen tillhör rövarspråket, ingen felhantering behövs för felaktig indata.

Funktionerna ska gå i linjär tid och hantera strängar på upp till 100000 tecken inom en bråkdel av en sekund.

Tips

Ni vill antagligen skriva en funktion som avgör om ett givet tecken är vokal eller konsonant. Funktionen elem kan vara en praktisk byggsten för detta.

Exempel
rovarsprak("progp") ska returnera poprorogogpop

rovarsprak("cirkus") ska returnera cocirorkokusos

karpsravor("hohejoj") ska returnera hej

karpsravor("fofunonkoktotionon") ska returnera funktion

3 Medellängd
Uppgift

Skriv en funktion medellangd som tar en text (String) som indata och returnerar ett tal (Double) med medellängden på orden i texten.

Ett ord definierar vi som en sammanhängande delsträng av bokstäver ur alfabetet, stora eller små. Alla blanka tecken, kommatering, siffror, etc, är ord-delande.

Funktionen ska gå i linjär tid och hantera texter på upp till 100000 tecken inom en bråkdel av en sekund.

Tips

Funktionen isAlpha : Char -> Bool returnerar sant på just de tecken som finns i alfabetet. För att komma åt isAlpha måste du importera modulen Data.Char.

En möjlig ansats är att först stycka upp texten i ord och sedan beräkna antal ord samt totala längden på orden.

Exempel
medellangd("No, I am definitely not a pie!") ska returnera 3.14285714...

medellangd("w0w such t3xt...") ska returnera 1.8

4 Listskyffling
Vi är intresserade av att kasta om elementen i en lista enligt följande: först tar vi varannat element (första, tredje, femte, etc). Vi upprepar sedan detta på elementen som återstår (dvs tar andra, sjätte, tionde, etc). Detta upprepas så länge det fortfarande finns element kvar. Om vi t.ex. börjar med listan (1, 2, 3, 4, 5, 6, 7, 8, 9) kommer vi i första vändan få (1, 3, 5, 7, 9), och elementen (2, 4, 6, 8) återstår. I andra vändan lägger vi till (2, 6), och bara (4, 8) återstår. I tredje vändan lägger vi bara till 4, och bara 8 återstår. I fjärde och sista vändan lägger vi slutligen till 8, och slutresultatet blir listan (1, 3, 5, 7, 9, 2, 6, 4, 8).

Uppgift

Skriv en funktion skyffla som tar en lista som indata och returnerar en omkastad lista enligt beskrivningen ovan.

Funktionen ska fungera på alla typer av listor.

Funktionen ska kunna hantera listor på upp till 5000 element inom en bråkdel av en sekund.

Exempel
skyffla(["kasta", "ord", "om"]) ska returnera ["kasta", "om", "ord"]

skyffla([3.4, 2.3, 5, 185, 23]) ska returnera [3.4, 5, 23, 2.3, 185]

skyffla([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]) ska returnera [1, 3, 5, 7, 9, 11, 2, 6, 10, 4, 12, 8]
