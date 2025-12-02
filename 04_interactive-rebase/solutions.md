# Lösungen & Hinweise – Interactive Rebase

## Mögliche Ziel-History

Aus den WIP/„fix“/„really final“-Commits könnte z. B. folgende History werden:

- `Add basic payment model`
- `Add payment service`
- `Add validation for payment amount`

Dazu im Interactive Rebase Editor z. B.:

```text
pick 1234567 WIP payment model
reword 89abcde WIP: add service
squash fedcba9 fix
squash 6543210 really final
reword 0f0f0f0 another fix
```

Dann beim Rebase die Commit-Messages sinnvoll anpassen.

## Typische Schritte

1. `git rebase -i HEAD~6`
2. `pick` bei wichtigen Meilensteinen lassen.
3. Mehrere technische/kleine Fix-Commits via `squash` / `fixup` zusammenfassen.
4. Mit `reword` Commit-Messages klar umschreiben.
5. Optional einen Commit mit `edit` aufsplitten und mit `git add -p` in zwei neue Commits teilen.

Wichtig: Nur auf Branches machen, die noch niemand anderes verwendet (History-Um-schreiben!).
