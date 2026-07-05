# ani-cli-anilist

Fork do [ani-cli](https://github.com/pystardust/ani-cli) com integração nativa ao [AniList](https://anilist.co).

## Funcionalidades extras

- **Autenticação AniList** — salva token pessoal localmente
- **Menu de listas** — navegue por Assistindo, Completos, Planejando, Pausados e Abandonados
- **Retoma do ponto certo** — ao selecionar um anime, começa automaticamente no próximo episódio não assistido
- **Novos Episódios** — mostra apenas animes em exibição ou finalizados há menos de 90 dias com episódios pendentes, ordenados por mais atrasados primeiro
- **Sincronização automática** — após cada episódio, pergunta se assistiu até o final e atualiza o progresso no AniList

## Dependências extras

- `jq`

## Instalação

```sh
git clone https://github.com/levyvix/ani-cli-anilist
sudo cp ani-cli-anilist/ani-cli /usr/local/bin/ani-cli
```

## Uso

```sh
# Autenticar (uma vez só)
ani-cli anilist auth

# Abrir menu AniList
ani-cli anilist

# Todos os outros comandos do ani-cli original funcionam normalmente
ani-cli "cowboy bebop"
```

### Como obter o token

1. Acesse [anilist.co/settings/developer](https://anilist.co/settings/developer)
2. Crie um cliente com Grant Type **Access Token (Implicit)**
3. Clique em "Get Token" e cole quando solicitado

## Menu Novos Episódios

Mostra animes da lista **Assistindo** que se enquadram em:

- **Em exibição** (`RELEASING`) com próximo episódio nos próximos 90 dias
- **Finalizados** há menos de 90 dias com episódios não assistidos

Formato de exibição:
```
(2 atrasados) Anime X - próximo ep (7) em 3d 5h - você assistiu 5
(0 atrasados) Anime Y - próximo ep (12) em 1d 2h - você assistiu 11
```

## Créditos

Baseado no [ani-cli](https://github.com/pystardust/ani-cli) de pystardust — licença GPLv3.
