# Git – Tipps, Tricks & sinnvolle Konfiguration

## Nützliche Aliases

Beispiel für `.gitconfig`:

```ini
[alias]
  s = status -sb
  co = checkout
  br = branch -vv
  lg = log --oneline --graph --decorate --all
  st = status
  ci = commit
  last = log -1 HEAD
  undo = reset --soft HEAD~1

  # Häufig genutzte Rebase-Variante
  rb = rebase
  rbi = rebase -i
```

## Sinnvolle globale Einstellungen

```ini
[core]
  editor = code --wait

[merge]
  conflictstyle = diff3

[rerere]
  enabled = true

[pull]
  rebase = true
```

## Allgemeine Best Practices

- **Rebase nur auf eigener / nicht geteilter History** verwenden.
- Vor dem Push: `git log --oneline --graph` checken – passt die Story?
- Feature-Branches klein halten und früh mergen.
- `git reflog` kennen: fast alles lässt sich damit retten.
- Häufige Commits mit klaren Messages sind besser als ein „Final final fix“.
