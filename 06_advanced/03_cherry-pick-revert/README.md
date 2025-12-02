# 06.03 – `git cherry-pick` & `git revert`

Ziel: Einzelne Commits aus einem Branch herausgreifen oder einen Commit rückgängig machen.

## Vorschlag für Demo/Übung

1. Erstelle ein Repo mit einem Branch `main` und einem Branch `feature`.
2. Auf `feature` gibt es mehrere Commits, von denen **nur einer** ein Bugfix ist, der auch auf `main` benötigt wird.
3. `git cherry-pick <hash>` auf `main`, um nur diesen Commit zu übernehmen.
4. Zeige `git revert <hash>` auf `main`, um einen Commit rückgängig zu machen, ohne History umzuschreiben.

Optional kannst du dir hier selbst ein Setup-Script ergänzen – für den Workshop reicht meist ein improvisiertes Live-Beispiel.
