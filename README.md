# Resume Project Setup

This repository contains LaTeX source files for building versioned resumes.

## Setup Steps

1. **Install VS Code LaTeX Extension**
   - Recommended: [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop)

2. **Install TeX Toolchain (macOS)**
   - Install Homebrew if not already installed: https://brew.sh/
   - Install BasicTeX (minimal TeX Live):
     ```zsh
     brew install --cask basictex
     ```
   - Add TeX binaries to your PATH:
     ```zsh
     echo 'export PATH=/Library/TeX/texbin:$PATH' >> ~/.zshrc
     source ~/.zshrc
     ```
   - Install required LaTeX packages as needed (e.g., latexmk, enumitem, lipsum, subfiles):
     ```zsh
     sudo tlmgr update --self
     sudo tlmgr install latexmk enumitem lipsum subfiles
     ```

3. **Initialize Git Repository**
   - Run:
     ```zsh
     git init
     ```
   - A `.gitignore` is included to exclude build artifacts and exported PDFs.

## Building Your Resume

- Run:
  ```zsh
  make
  ```
  This will build your resume and save a timestamped PDF in the `exports/` folder (e.g., `main_20251018_1742.pdf`).

- To open the latest exported PDF:
  ```zsh
  make open
  ```

- To clean build artifacts:
  ```zsh
  make clean
  ```

## Versioning Resumes
- Every build creates a uniquely named PDF in `exports/` for easy version tracking.
- Only source files and the `Makefile` are tracked in git by default.

## Troubleshooting
- If you see missing package errors, install them with tlmgr:
  ```zsh
  sudo tlmgr install <package-name>
  ```

## Folder Structure
- `main.tex` — Main LaTeX file
- `sections/` — Section `.tex` files (education, skills, experience, projects)
- `exports/` — Timestamped PDFs (not tracked by git)
- `Makefile` — Automated build and export
- `.gitignore` — Excludes build artifacts

---
Feel free to customize the Makefile or README for your workflow!
