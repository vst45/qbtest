
## Документация

<a href="/public/TZ">/public/TZ</a> - задание

<a href="/public/docs">/docs</a> - OpenAPI


## DB

qb.sql

## Комментарий
1. Не прицепил к openapi авторизацию

2. При заказе я несколько усложнил выборку - решил что если прийдется товар загружать в много помещений, то удобнее для транспортировки загружать сначала в то помещение где есть максимальное количество свободных блоков, а потом в остальные, а не случайным образом где есть свободные блоки.
