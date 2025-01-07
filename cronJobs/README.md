## Cron schedule syntax

```plaintext
+------------+------------+------------+------------+--------------+
|  Minute    |  Hour      |  Day of    |  Month     |  Day of      |
| (0 - 59)   | (0 - 23)   |  the Month | (1 - 12)   |  the Week    |
|            |            | (1 - 31)   |            | (0 - 6)      |
|            |            |            |            | (Sunday = 0) |
+------------+------------+------------+------------+--------------+
```

```plaintext
+---------------------+------------------------------------------------------------------------------+
|       Campo         |                       Descrição                                              |
+---------------------+------------------------------------------------------------------------------+
| Minute (0 - 59)     | Define o minuto (0 a 59) em que o comando será executado                     |
| Hour (0 - 23)       | Define a hora (0 a 23) em que o comando será executado                       |
| Day of Month (1-31) | Define o dia do mês (1 a 31) em que o comando será executado                 |
| Month (1-12)        | Define o mês (1 a 12) em que o comando será executado                        |
| Day of Week (0-6)   | Define o dia da semana (0 a 6) em que o comando será executado (0 é Domingo) |
+---------------------+------------------------------------------------------------------------------+
```

```plaintext
+--------------+-----------------------------------------------------+
|       Campo  |                        Exemplo                      |
+--------------+-----------------------------------------------------+
| * * * * *    | Executa todo minuto, hora, dia, mês e dia da semana |
| * 10 * * *   | Executa no 10º minuto de cada hora                  |
| 0 * * * *    | Executa no minuto 0 de cada hora                    |
| 0 12 * * *   | Executa ao meio-dia (12:00) de cada dia             |
| 0 0 1 * *    | Executa à meia-noite do primeiro dia de cada mês    |
| 0 0 1 1 *    | Executa à meia-noite do primeiro dia de janeiro     |
| 0 0 * * 0    | Executa à meia-noite todo domingo                   |
| 0 6 * * 1-5  | Executa às 6:00 de segunda a sexta-feira            |
| 0 */15 * * * | Executa a cada 15 minutos                           |
+--------------+-----------------------------------------------------+
