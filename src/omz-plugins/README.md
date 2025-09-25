# OMZ Plugins (omz-plugins)

Sets up ZSH plugins

## Example DevContainer Usage

```json
{
  "features": {
    "ghcr.io/devcontainers-contrib/features/omz-plugins:1": {}
  }
}
```

## Options

| Options Id | Description                 | Type   | Default Value                                                                                             |
| ---------- | --------------------------- | ------ | --------------------------------------------------------------------------------------------------------- |
| plugins    | ZSH Plugins space separated | string | dotnet yarn nvm git-auto-fetch docker docker-compose npm zsh-autosuggestions zsh-syntax-highlighting      |
| omzPlugins | OMZ Plugins space separated | string | https://github.com/zsh-users/zsh-autosuggestions https://github.com/zsh-users/zsh-syntax-highlighting.git |
