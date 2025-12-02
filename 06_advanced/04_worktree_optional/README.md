# 06.04 – `git worktree` (optional)

Ziel: Mehrere Arbeitsverzeichnisse für dasselbe Repository nutzen, z. B. um gleichzeitig an einem Feature und einem Hotfix zu arbeiten.

## Mini-Demo

1. In einem bestehenden Repo:

   ```bash
   git worktree add ../repo-hotfix hotfix-branch
   ```

2. Nun kannst du in zwei Ordnern parallel arbeiten:
   - ursprüngliches Repo z. B. für `main`
   - neues Worktree-Verzeichnis für `hotfix-branch`

3. Am Ende Worktree wieder entfernen:

   ```bash
   git worktree remove ../repo-hotfix
   ```

Für den Workshop reicht in der Regel eine kurze Live-Demo.
