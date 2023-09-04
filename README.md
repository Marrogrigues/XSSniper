# XSSniper

XSSniper é um script de shell projetado para monitorar e analisar logs do servidor Apache em busca de padrões comuns usados em ataques XSS (Cross-Site Scripting). Este utilitário simples foi desenvolvido para ajudar administradores de sistemas e profissionais de segurança a identificar possíveis vulnerabilidades e atividades maliciosas em seus servidores web. Utilize-o como um ponto de partida para um monitoramento mais robusto dos seus logs de servidor.

Requisitos

Servidor Apache
Bash
Acesso root ou suficientes permissões para ler logs do Apache

Instalação

Faça o clone do repositório:
```
git clone https://github.com/Marrogrigues/XSSniper.git
```
Torne o script executável:
```
cd XSSniper
chmod +x xss_sniper.sh
```

Uso

Execute o script em um terminal:

```
sudo ./xss_sniper.sh /caminho/para/o/arquivo/log
```

Características

Rápido e leve
Facilidade de uso
Pode ser integrado a outros sistemas de monitoramento
O script identifica vários tipos de ataques XSS, incluindo Refletido, Armazenado e DOM-based.
