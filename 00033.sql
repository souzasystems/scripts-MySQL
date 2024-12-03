-- Verifica se o índice existe
SELECT COUNT(1)
  INTO @indexExists
  FROM information_schema.statistics 
 WHERE table_schema = DATABASE()
   AND table_name   = 'USUARIOS' 
   AND index_name   = 'idx_NOME_USUARIO';

-- Se o índice não existe, cria o índice
SET @sql := IF(@indexExists = 0, 'CREATE INDEX idx_NOME_USUARIO ON USUARIOS (NOME_USUARIO);', 'SELECT "ÍNDICE JÁ EXISTE.";');
PREPARE stmt FROM @sql;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
