# Dong-Joon Yi - Quarto Website

This repository contains a Quarto-based personal academic website.
The site is rendered to `docs/` and published at https://iverydj.github.io/.
GitHub Pages serves the `main` branch's `/docs` directory.

## Project Structure

- `_quarto.yml`: Site configuration (navigation, format, output directory)
- `styles.css`: Global visual system and responsive layout styles
- `index.qmd`: Home page
- `research.qmd`: Research page, including its current text
- `career.qmd`: Career/CV page
- `publications.qmd`: Publications page
- `data/research_section_en.md`: Earlier research text; not included in the current site
- `data/publications.md`: Publication list source included by `publications.qmd`
- `data/research_total.png`, `data/research_part1.png`, `data/research_part2.png`, `data/research_part3.png`: Research figures not currently displayed
- `assets/CV_DongJoonYi.pdf`: Unfinished CV draft; not linked from the website
- `assets/cv_src/`: LaTeX source and build script for the CV
- `docs/`: Generated HTML, search index, styles, and linked resources

## Local Preview

Prerequisite: install Quarto and ensure the `quarto` command is available in your terminal.
The current output was built with Quarto 1.9.37.

```sh
quarto preview
```

- Quarto starts a local preview server.
- Source edits are reflected automatically.

## Static Build

```sh
quarto render
```

- Output is generated in `docs/`.
- Rendering also refreshes `docs/search.json` and copies linked resources.
- Do not edit `docs/` manually; re-render from source files.

## Updating Content

- Edit the corresponding `.qmd` file for Home, Research, or Career.
- Edit `data/publications.md` for publications. The main `<ol reversed>` numbers papers automatically; cover features are listed separately.
- Update the `Last updated` text in `index.qmd` when publishing content changes.
- The CV is an unfinished, separate document: website edits do not update its PDF. Keep its download link off the website until it is ready.
- To update the CV, edit `assets/cv_src/cv.tex` and run `bash assets/cv_src/build.sh` in an environment with XeLaTeX and the fonts listed in that script. Once the CV is ready for publication, add its link and render the website to copy the PDF into `docs/`.

## Publish to GitHub Pages (Manual Flow)

1. Run `quarto render` locally so the latest files are in `docs/`.
2. Preview the pages and verify navigation, search, and PDF downloads.
3. Review and commit the source files and generated `docs/` output, including new generated assets.
4. Push the reviewed commit when publication is authorized.
5. Confirm that the `pages build and deployment` workflow succeeds, then check https://iverydj.github.io/.

For initial setup, choose **Deploy from a branch** in **Settings > Pages**, with branch `main` and folder `/docs`.

## Troubleshooting (Images Not Showing)

- Confirm each image path is correct and relative to the source file, for example `data/research_part1.png`.
- Confirm filename case exactly matches the file on disk.
- Re-run `quarto render` after content updates.
- Check that the rendered `docs/` output is committed and pushed before opening the live site.
