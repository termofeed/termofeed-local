# termofeed-local

Sobe o Termofeed completo na sua máquina com Docker, compilando o código local do back-end e do front-end.

## Requisitos

- Docker com Docker Compose, com o engine em execução.
- GNU Make.
- `termofeed-back` e `termofeed-front` clonados ao lado deste repositório:

```
termofeed/
  termofeed-back/
  termofeed-front/
  termofeed-local/
```

## Comandos

| Comando | O que faz |
|---|---|
| `make up` | Compila as imagens, sobe os serviços e espera os dois ficarem saudáveis. |
| `make down` | Para e remove os contêineres e a rede. |

Depois do `make up`, abra <http://localhost:5173>. Rode `make up` de novo para aplicar alterações feitas no código.

O back-end guarda as salas em memória, então elas são perdidas no `make down`.

## Configuração

Para mudar os valores padrão, copie `.env.example` para `.env` e edite o arquivo.

| Variável | Padrão | Descrição |
|---|---|---|
| `FRONT_PORT` | `5173` | Porta local da aplicação. |
| `LOG_LEVEL` | `info` | Nível de log do back-end: `debug`, `info`, `warn` ou `error`. |
