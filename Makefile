.PHONY: up down

# As receitas chamam apenas o docker, sem recursos de shell, para funcionar
# igual no Windows (PowerShell e cmd), no Linux e no macOS.
up:
	docker compose up -d --build --wait
	docker compose ps front --format "Termofeed no ar: http://localhost:{{(index .Publishers 0).PublishedPort}}"

down:
	docker compose down
