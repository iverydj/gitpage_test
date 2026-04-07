# Dong-Joon Yi - Quarto Website

This repository contains a Quarto-based personal academic website.
The site is rendered to `docs/` and intended for GitHub Project Pages deployment.

## Project Structure

- `_quarto.yml`: Site configuration (navigation, format, output directory)
- `styles.css`: Global visual system and responsive layout styles
- `index.qmd`: Home page
- `research.qmd`: Research page entry point
- `career.qmd`: Career/CV page
- `publications.qmd`: Publications page
- `data/research_section_en.md`: Main research text source included by `research.qmd`
- `data/publications.md`: Publication list source included by `publications.qmd`
- `data/research_total.png`, `data/research_part1.png`, `data/research_part2.png`, `data/research_part3.png`: Research figures
- `assets/CV_2page.pdf`: Linked CV PDF

## Local Preview

Prerequisite: install Quarto and ensure the `quarto` command is available in your terminal.

```powershell
quarto preview
```

- Quarto starts a local preview server.
- Source edits are reflected automatically.

## Static Build

```powershell
quarto render
```

- Output is generated in `docs/`.
- Do not edit `docs/` manually; re-render from source files.

## Publish to GitHub Project Pages (Manual Flow)

1. Push this project to a GitHub repository.
2. Run `quarto render` locally so the latest files are in `docs/`.
3. Commit and push both source files and `docs/`.
4. In GitHub, open `Settings > Pages`.
5. Under **Source**, choose **Deploy from a branch**.
6. Set **Branch** to `main` and **Folder** to `/docs`, then save.
7. Wait for deployment, then open the published URL shown in Pages settings.

## Troubleshooting (Images Not Showing)

- Confirm each image path is correct and relative to the source file, for example `data/research_part1.png`.
- Confirm filename case exactly matches the file on disk.
- Re-run `quarto render` after content updates.
- Check that the rendered `docs/` output is committed and pushed before opening the live site.
