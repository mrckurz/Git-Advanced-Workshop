# Lösungen & Hinweise – `git bisect`

## Typische Befehle

```bash
git bisect start
git bisect bad
git bisect good <GOOD_COMMIT_HASH>
git bisect run ./test.sh
```

- `git bisect` springt nun automatisch durch die History und führt `./test.sh` aus.
- Sobald der „first bad commit“ gefunden ist, wird er angezeigt.

Danach:

```bash
git bisect reset
```

## Erwartetes Ergebnis

- Der Commit mit der Message „Introduce subtle bug“ ist der fehlerhafte.
- Diesen Commit könntest du nun z. B. mit `git revert` rückgängig machen.
