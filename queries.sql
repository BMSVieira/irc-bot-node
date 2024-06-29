SELECT *
FROM clones
WHERE HOST IN (
    SELECT HOST
    FROM clones
    GROUP BY HOST
    HAVING COUNT(*) > 1
)
AND nick NOT IN ('AsuZ', 'EpiC');

SELECT * FROM bot_meiaspalavras ORDER BY id DESC
SELECT * FROM bot_palavrasproibidas ORDER BY id DESC
SELECT * FROM clones


-- Log types:

-- multicon
-- prohibited
-- capslock
-- invalid

-- IPs

-- Unica           - Brazink.uqc10p.dsl.telepac.pt
-- EnigmaTica      - Brazink.92fotr.netvisao.pt
-- Mel3            - Brazink.4it.bdc.251.188.IP
-- CaLorina        - Brazink.h8i.4lk.69.148.IP
-- Nacho           - Brazink.puc4an.rev.vodafone.pt
-- Devyl           - Brazink.rcp.db3.69.148.IP
-- She		   - Brazink.fk5rd5.dsl.telepac.pt
-- Morena          - Brazink.c2g.hvu.250.188.IP
-- Inga            - Brazink.4h3.dcp.50.46.IP


SELECT * FROM bot_logs WHERE description LIKE '%Brazink.c2g.hvu.250.188.IP%'

SELECT * FROM bot_logs WHERE log_type = 'multicon' ORDER BY id_log DESC;

-- Total de kicks por tipo
SELECT COUNT(id_log), log_type FROM bot_logs WHERE DATE > '2024-06-28 00:00:00' AND DATE < '2024-06-28 23:59:59' GROUP BY log_type

-- Total de nicks que entram
SELECT COUNT(id_entrada), nick , HOST FROM bot_entradas GROUP BY HOST
SELECT * FROM bot_entradas WHERE HOST = 'Brazink.42981s.netvisao.pt'







































