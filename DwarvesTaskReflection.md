Ответы первого и второго заданий совпадают за небольшими отличиями в формате вывода.

Ответ 3 задания расходится с моим. Решение из ответа в подзапросе делает дополнительную фильтрацию по статусу, что в итоге
делает расчёт максимального статус только среди задач в статусе 'pending'. Я же иначе воспринял задание и в подзапросе 
максимальный статус определял на основе всех имеющихся задач, что и вызвало расхождение моего решения и ответа задачи.

Ответ и решение 4 задания расходятся незначительно. Ответ объединяет таблицы гномов и предметов, когда я сделал обратный порядок.
В данном случае разницы нет, ответ будет одинаковый, хотя семантически правильно всё жы было объединять гномов и предметы 
поскольку фокус задания именно на гномах.

Ответ 5 задания совпадает с решением.

Ответ 6 задания почти совпадает с моим решением. Есть небольшое различие в агрегации задач - в ответе находят сумму по 
конкретному полю T.task_id, в то время как я использовал обобщение и суммирую по количеству записей в группе. В данном 
случае это эквивалентные выражения.

Ответ 7 задания совпадает с решением.

Ответ 8 задания расходится с моим решением. В ответе предлагается использовать выборку с 2 подзапросами. Первый подзапрос
определяет средний возраст гномов, а второй предоставляет список предметов и логически проверяется, что в этом списке 
нет ссылок к указанному гному. Моё решение использует объединение INNER JOIN и выборку из результата объединения тех записей,
для которых не нашлось ItemID. Несмотря на расхождение оба решения достигают одного результата. В данный момент они для меня
выглядят эквивалентными так как я еще не разбираюсь в тонкостях оптимальности выполнения запросов и не могу сравнить какой из
этих запросов быстрее и менее нагружен.