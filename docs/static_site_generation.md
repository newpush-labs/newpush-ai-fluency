# Static Site Generation with MkDocs

This document outlines the process used to generate a static website from the course materials using MkDocs.

## 1. Installation

The first step was to install the necessary Python packages. We used a virtual environment to avoid conflicts with system packages.

```bash
python3 -m venv venv
source venv/bin/activate
python3 -m pip install mkdocs mkdocs-material
```

## 2. Configuration

A `mkdocs.yml` file was created in the project root to configure the site. This file contains the following settings:

*   **`site_name`**: "AI Fluency Course - Hungarian"
*   **`docs_dir`**: `course/hu`
*   **`theme`**: `material`
*   **`language`**: `hu` (for Hungarian localization)
*   **`extra_css`**: A custom stylesheet (`custom.css`) for theming.
*   **`nav`**: The navigation menu for the site, based on the Markdown files in the `course/hu` directory.

## 3. Theming

A custom stylesheet was created at `course/hu/custom.css` to match the visual identity of a reference website. The following styles were applied:

*   **Font**: "Roboto" (imported from Google Fonts)
*   **Header Background**: `#0D1B3F`
*   **Link Color**: `#4A90E2`

## 4. Building and Serving

The site was built and served locally using the following commands:

```bash
# To build the site
source venv/bin/activate && mkdocs build

# To serve the site locally for preview
source venv/bin/activate && mkdocs serve
```

The local server runs at `http://127.0.0.1:8000/` and automatically reloads when changes are made to the source files.