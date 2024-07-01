-- Log types:

-- multicon
-- prohibited
-- capslock
-- invalid

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


SELECT * FROM bot_logs WHERE description LIKE '%Brazink.c2g.hvu.250.188.IP%'

SELECT * FROM bot_logs WHERE log_type = 'prohibited' ORDER BY id_log DESC;

-- Total de kicks por tipo
SELECT COUNT(id_log), log_type FROM bot_logs WHERE DATE > '2024-06-30 00:00:00' AND DATE < '2024-06-30 23:59:59' GROUP BY log_type


-- ################################################################################################################
-- ################################################################################################################


-- IPs

-- Unica           		- Brazink.uqc10p.dsl.telepac.pt
-- EnigmaTica      		- Brazink.92fotr.netvisao.pt
-- Mel3            		- Brazink.4it.bdc.251.188.IP
-- CaLorina        		- Brazink.h8i.4lk.69.148.IP | Brazink.h8i.4lk.69.148.IP
-- Nacho           		- Brazink.puc4an.rev.vodafone.pt
-- Devyl           		- Brazink.rcp.db3.69.148.IP
-- She		   		- Brazink.fk5rd5.dsl.telepac.pt | Brazink.ckpjud.dsl.telepac.pt
-- Morena          		- Brazink.c2g.hvu.250.188.IP
-- Inga            		- Brazink.4h3.dcp.50.46.IP | Brazink.va9bgd.dsl.telepac.pt | Brazink.4rj.isj.250.92.IP | Brazink.cjv.rn9.223.83.IP
-- GogoRicky       		- Brazink.9ln76n.dsl.telepac.pt
-- Coe             		- Brazink.8hrbcj.rev.vodafone.pt
-- M1980           		- Brazink.fkelu9.net.novis.pt
-- Sourcee         		- Brazink.dcqfgj.bl27.telepac.pt
-- BenQ            		- Brazink.i9c1u1.rev.vodafone.pt | Brazink.5r79nn.rev.vodafone.pt
-- SUNGAMUNGA      		- Brazink.dp59fr.net.novis.pt | Brazink.lutkim.dsl.telepac.pt
-- mare            		- Brazink.r81jm9.cpe.netcabo.pt
-- Tina            		- Brazink.7dc.ni7.250.92.IP | Brazink.fd9.bbq.69.95.IP
-- Lea             		- Brazink.bg2g0u.dsl.telepac.pt
-- Bitinha         		- Brazink.dchqrq.rev.vodafone.pt
-- Trenga          		- Brazink.vhr5ai.net.novis.pt | Brazink.67lvr7.cpe.netcabo.pt | Brazink.jng2i5.cpe.netcabo.pt | Brazink.6010cv.net.novis.pt
-- _Luazinha_      		- Brazink.d0t.1na.190.213.IP
-- Bitaites        		- Brazink.s2n.0ml.223.83.IP
-- Uma_Gata_Fina   		- Brazink.1ao.jit.182.168.IP
-- Elody/lyra      		- Brazink.p6qvnb.rev.vodafone.pt
-- Clerzinha       		- Brazink.486.lt7.154.179.IP
-- Laura--         		- Brazink.gc3sup.dsl.telepac.pt
-- Heilla          		- Brazink.cfgok9.internet58.com.br
-- Clonado         		- Brazink.e2q4f7.rev.vodafone.pt
-- tiktak          		- Brazink.hqe.p9m.214.89.IP
-- arreT           		- Brazink.usu.9e2.196.87.IP | Brazink.uemtfn.dsl.telepac.pt
-- Trifolium       		- Brazink.ec4.2r0.140.188.IP | Brazink.74u.veu.214.89.IP
-- MiudaReles      		- Brazink.tnrq95.rev.vodafone.pt | Brazink.3bhtfi.rev.vodafone.pt
-- Sage	           		- Brazink.2avo60.cpe.netcabo.pt
-- Maluma          		- Brazink.iktkmb.dsl.telepac.pt
-- SoundOfSilence  		- Brazink.ep3.ckm.223.83.IP
-- Z0F0            		- Brazink.f4j25r.dsl.telepac.pt
-- Audi            		- Brazink.enu.sre.69.148.IP | Brazink.mus937.rev.vodafone.pt
-- Filme           		- Brazink.qmo.ncb.28.104.IP | Brazink.ksq9f2.cpe.netcabo.pt
-- ORapazDoJipe   		- Brazink.d2165k.cpe.netcabo.pt | Brazink.jr92ap.rev.vodafone.pt
-- Michelle        		- Brazink.g6vhap.bl26.telepac.pt
-- Flash           		- Brazink.8rk5v6.rev.vodafone.pt | Brazink.dhu.u4a.69.148.IP
-- Le              		- Brazink.bg2g0u.dsl.telepac.pt
-- LastDream       		- Brazink.pf1qa9.dsl.telepac.pt
-- Leoa_PT                      - Brazink.42981s.netvisao.pt
-- DaBoyWhoMurderedLove         - Brazink.dpa5hs.dsl.telepac.pt 
-- somaisuma                    - Brazink.c2ch15.netvisao.pt
-- Alfazema			- Brazink.lfbpk6.rev.vodafone.pt
-- Goraz                        - Brazink.k2irmr.dsl.telepac.pt
-- proibido_tentar              - Brazink.b3rrv4.rev.vodafone.pt
 
-- Total de nicks que entram
SELECT COUNT(id_entrada) AS nr, nick , HOST FROM bot_entradas GROUP BY HOST ORDER BY nr DESC

SELECT * FROM bot_entradas WHERE HOST IN('Brazink.b3rrv4.rev.vodafone.pt');

SELECT * FROM bot_entradas WHERE nick = 'proibido_tentar'

SELECT * FROM bot_entradas ORDER BY id_entrada DESC





































