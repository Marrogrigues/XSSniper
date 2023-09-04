#!/bin/bash

# Localização do arquivo de log do Apache
LOGFILE="/var/log/apache2/access.log"

# Palavras-chave frequentemente usadas em ataques XSS
PATTERNS=("\<script\>" "\</script\>" "alert\(" "onload=" "onerror=" "eval\(" "fromCharCode" "%3Cscript%3E" "%3C/script%3E")

# Verifica se o arquivo de log existe
if [ ! -f "$LOGFILE" ]; then
    echo "Arquivo de log $LOGFILE não encontrado."
    exit 1
fi

# Loop para procurar cada padrão XSS nos logs
for pattern in "${PATTERNS[@]}"; do
    echo "Procurando por ocorrências de '$pattern'..."
    grep -n "$pattern" "$LOGFILE" >> xss_attack_results.txt
done

# Verificar se resultados foram encontrados
if [ -s xss_attack_results.txt ]; then
    echo "Possíveis ataques XSS encontrados. Verifique xss_attack_results.txt para mais detalhes."
else
    echo "Nenhum ataque XSS potencial encontrado."
    rm -f xss_attack_results.txt
fi
