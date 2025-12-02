# Lösungen & Hinweise – `rerere`

## Erwartetes Verhalten

1. Erster Merge von `feature-b` in `feature-a`:

   - Es entsteht ein Konflikt in `story.txt`.
   - Du löst ihn manuell, z. B. wählst du eine kombinierte Variante.
   - Nach dem Commit merkt sich Git diese Auflösung (dank `rerere`).

2. Zurücksetzen:

   ```bash
   git reset --hard before-merge
   ```

3. Zweiter Merge:

   ```bash
   git merge feature-b
   ```

   - Git sollte nun automatisch (oder mit minimaler Interaktion) dieselbe Auflösung setzen.
   - Du musst nur noch committen.

## Wichtige Punkte

- `rerere.enabled` am besten global setzen, wenn du häufig mit Branches und Konflikten arbeitest.
- Funktioniert besonders gut, wenn derselbe Konflikt in leicht variierenden Situationen wieder auftritt (z. B. bei Rebases auf lange lebenden Branches).
