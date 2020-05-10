#lang datalog/sexp

(! (homem andre))
(! (homem gabriel))
(! (homem bernardo))
(! (homem nicolas))
(! (homem odeval))
(! (homem ivan))

(! (mulher livia))
(! (mulher alicia))
(! (mulher cris))
(! (mulher nicole))
(! (mulher sophia))
(! (mulher alanis))
(! (mulher isabele))
(! (mulher raquel))
(! (mulher joseli))

(! (pai andre gabriel))
(! (pai andre nicolas))
(! (pai andre bernardo))
(! (pai andre livia))
(! (pai andre alicia))

(! (pai odeval andre))
(! (pai odeval joab))
(! (pai odeval raquel))

(! (pai ivan nicole))
(! (pai ivan sophia))
(! (pai ivan isabele))
(! (pai ivan alanis))

(! (mae cris gabriel))
(! (mae cris nicolas))
(! (mae cris bernardo))
(! (mae cris livia))
(! (mae cris alicia))

(! (mae joseli cris))

(! (mae raquel nicole))
(! (mae raquel sophia))
(! (mae raquel isabele))
(! (mae raquel alanis))

(! (:- (irmao X Y)
       (pai P X)
       (pai P Y)
       (!= X Y)))

(! (:- (irmao X Y)
       (mae M X)
       (mae M Y)
       (!= X Y)))

(! (:- (irmao X Y)
       (irmao Y X)
       (!= X Y)))

(! (:- (pai X Y)
       (filho Y X)
       (homem X)))

(! (:- (filho X Y)
       (pai Y X)))

(! (:- (filho X Y)
       (mae Y X)))

(! (:- (tio X Y)
       (irmao X P)
       (pai P Y)))

(! (:- (sobrinho X Y)
       (tio Y X)))

(! (:- (avo X Y)
       (pai P Y)
       (pai X P)))

(! (:- (avo X Y)
       (mae M Y)
       (mae X M)))

(! (:- (neto X Y)
       (avo Y X)))

(? (mae X Y))
(? (pai X Y))
(? (filho X Y))
(? (irmao X Y))
(? (tio X Y))
(? (sobrinho X Y))
(? (avo X Y))
(? (neto X Y))
