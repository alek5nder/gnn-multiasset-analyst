shell:
	docker exec -it paper_workspace bash

agent-architect:
	docker exec -it paper_workspace gemini -i "$$(cat .agents/prompts/architect.md)"

agent-drafter:
	docker exec -it paper_workspace gemini -i "$$(cat .agents/prompts/drafter.md)"

agent-humanizer:
	docker exec -it paper_workspace gemini -i "$$(cat .agents/prompts/humanizer.md)"

agent-reviewer:
	docker exec -it paper_workspace gemini -i "$$(cat .agents/prompts/reviewer2.md)"

pdf-watch:
	docker exec -it paper_workspace latexmk -pdf -pvc manuscript/main.tex