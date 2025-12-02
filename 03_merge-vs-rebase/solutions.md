# Lösungen & Hinweise – Merge vs Rebase

## Erwartete History nach Setup

- `main` hat 3 Commits (Initial, Second, Change on main (C)).
- `feature` hat 2 zusätzliche Commits (Feature A, Feature B), die von einem früheren Commit auf `main` abzweigen.

## Variante 1 – Merge

Auf `main`:

```bash
git merge feature
git log --oneline --graph --all
```

- Du solltest einen Merge-Commit sehen, der zwei Eltern hat.
- Die History bleibt „verzweigt“.

## Variante 2 – Rebase

Auf `feature`:

```bash
git checkout feature
git rebase main
```

Danach:

```bash
git log --oneline --graph --all
```

- Die `feature`-Commits wurden „oben auf“ die `main`-Commits gesetzt.
- Nun kannst du auf `main` einen Fast-Forward-Merge machen:

  ```bash
  git checkout main
  git merge --ff-only feature
  ```

## Diskussion

- **Merge** bewahrt die echte Zeitlinie und ist immer sicher (wenn der Branch bereits geteilt ist).
- **Rebase** schreibt History um und eignet sich gut, bevor man den Branch pusht, um die History aufzuräumen.
- Merksatz: „Rebase nur lokale, noch nicht geteilte Branches.“
