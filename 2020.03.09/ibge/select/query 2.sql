SELECT * 
FROM cidade
JOIN uf ON (cidade.uf_id = uf.id) 
WHERE populacao >10000 
AND uf.nome = "sao paulo"