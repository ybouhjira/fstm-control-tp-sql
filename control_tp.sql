# 1 -
SELECT id_article
FROM gclients.article
WHERE prix_unite between 100 and 150;

# 2 - 
SELECT numfourni 
FROM gclients.Fourni
WHERE date LIKE '%-08-%' ; 

# 3 - 
SELECT DISTINCT fs.nom
FROM Fourni f, Fournisseurs fs
WHERE f.numfourni = fs.numfourni
AND f.idarticle NOT IN(
  SELECT f.idarticle
  FROM Fourni 
  WHERE f.date LIKE '%-08-%');

# 4 -
SELECT designation
FROM gclients.Fourni f, article a
WHERE f.idarticle = a.id_article
GROUP BY f.idarticle 
HAVING COUNT(f.numfourni) > 1;

# 5 -
SELECT *, COUNT(idarticle) 
FROM gclients.Fourni
GROUP BY numfourni
HAVING COUNT(idarticle) = (
  SELECT COUNT(id_article)
  FROM gclients.article;
);

# 6 - 
SELECT c.nom
FROM commandes cc, clients c
WHERE cc.id_client = c.id_client
  AND cc.date_com LIKE '%-01-%'
GROUP BY cc.id_client
HAVING COUNT(num_com) >= ALL (
 SELECT COUNT(num_com) 
 FROM commandes
 WHERE date_com LIKE '%-01-%'
 GROUP BY id_client
)