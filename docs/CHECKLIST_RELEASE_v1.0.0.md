# Checklist da release v1.0.0

## Antes do merge final
- [ ] `main` atualizado
- [ ] backup criado
- [ ] branches finais criadas
- [ ] branches antigas triadas
- [ ] PRs finais abertos
- [ ] conflitos resolvidos
- [ ] documentação revisada
- [ ] README principal conferido

## Antes da tag
- [ ] `git status` limpo
- [ ] `main` sincronizado com `origin/main`
- [ ] smoke tests básicos executados
- [ ] changelog revisado
- [ ] versão definida como `v1.0.0`

## Comandos
```powershell
git checkout main
git pull origin main
git tag v1.0.0
git push origin v1.0.0
```

## Texto-base da release

**Título:** `Programming Language Course Codes v1.0.0`

**Resumo sugerido:**
- reorganização do repositório;
- criação de trilhas por linguagem;
- documentação e templates GitHub;
- scripts de validação e saneamento;
- base estável pronta para expansão futura.
