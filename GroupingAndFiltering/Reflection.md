Обнаружил несовпадение решений в задании 5.4.1. Моё решение сначала группирует по стране и уже среди одной страны 
сортирует по дате рождения начиная с молодых. Это приводит к тому, что общий порядок дат рождения не совсем убывающий, 
а только в рамках страны. Эталонное решение же сначала сортирует по дате рождения, а уже затем сортирует по стране, 
что вызывает чередование стран, но при этом даты отображаются в строго убывающем порядке. Похоже я не правильно понял то, 
что требовалось сделать. 

Поскольку задание 5.4.2 за основу берёт решение из 5.4.1, то ошибка сортировка попала и туда.

Изначально было непонятно зачем сортировка по Country, т.к. результат запроса с ним и без него не отличался. Однако, позже 
догадался, что если будут сотрудники с одинаковой датой рождения, то как раз они будут сортироваться по стране.