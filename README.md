# Duper

Implementação do aplicativo Duper, de demonstração OTP, como definido no
capítulo 19 do livro **Progamming Elixir** do **Dave Thomas**.

Ótimo exercício de técnicas de Supervisor e OTP e do modo Elixir de pensar um problema.

## Instalação

- Instalar as dependências com `mix deps.get`
- Alterar as linhas com **Duper.PathFinder** informando o diretório que deseja percorrer e
  **Duper.Gatherer** para o numeros de qorkers simultâneos a iniciar

```
  children = [
    Duper.Results,
    {Duper.PathFinder, "/Users/gapfranco/projetos/modelo"},
    Duper.WorkerSupervisor,
    {Duper.Gatherer, 8}
  ]
```

O programa percorre o diretório informado e seus subdiretórios em busca de arquivos com
conteúdo duplicado. Ver o capítulo 19 do livor para mais detalhes.
