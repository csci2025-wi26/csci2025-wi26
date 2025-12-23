# GEMINI.md: Project Overview and Contributor Guide

This file provides a comprehensive overview of the `csci2025-wi26` project, which is the course website for CSCI 2025: Data Manipulation and Visualization at the College of Idaho, Winter 2026. This guide is intended for developers, instructors, and teaching assistants who will be contributing to or maintaining the course materials.

## Project Overview

This is a [Quarto](https://quarto.org/) website project. Quarto is an open-source scientific and technical publishing system that allows for the creation of dynamic content with R, Python, Julia, and Observable. This project uses Quarto to generate a course website from a collection of Quarto markdown (`.qmd`) files and other resources.

The website contains all course-related materials, including:
- Course syllabus, schedule, and policies
- Lecture slides
- Homework assignments
- Project descriptions
- Computing resources and cheatsheets

The schedule is dynamically generated from a Google Sheet, as seen in `index.qmd`.

## Directory Overview

- **`/` (Root)**: Contains the main configuration file `_quarto.yml` and top-level pages like the course overview, syllabus, and the main schedule page (`index.qmd`).
- **`slides/`**: Contains the source files for all lecture slides, organized into subdirectories by lecture number.
- **`hw/`**: Contains the Quarto markdown files for homework assignments.
- **`project/`**: Holds materials and descriptions for the course projects.
- **`computing/`**: Contains pages related to computational resources, access, and troubleshooting.
- **`student-work/`**: A place to showcase selected student work.
- **`images/`**: Contains images used throughout the website.
- **`_site/`**: This directory is automatically generated when the website is rendered. It contains the complete static HTML, CSS, and JavaScript files for the live website. **Do not edit files in this directory directly.**
- **`_quarto.yml`**: The primary Quarto configuration file. It defines the project type, website structure, navigation, formatting, and other settings.

## Key Files

- **`_quarto.yml`**: The main configuration file for the Quarto project. It defines the website's structure, navigation, and overall appearance.
- **`index.qmd`**: The homepage of the website, which contains the course schedule.
- **`course-syllabus.qmd`**: The course syllabus.
- **`hw/*.qmd`**: Homework assignments. These files contain a mix of instructions, questions, and R code chunks for students to complete.
- **`slides/**/*.qmd`**: Lecture slide decks, written in Quarto markdown.

## Development Workflow

Contributions to the course website generally involve editing the `.qmd` files.

- **To edit a page or slides**: Find the relevant `.qmd` file in the appropriate directory, make your changes, and then preview the site to see your changes reflected.
- **For homeworks**: The homework `.qmd` files in the `hw/` directory serve as the source.

The typical workflow is:
1.  Edit one or more `.qmd` files.
2.  Preview the website locally to check your changes.
3.  Commit your changes to Git.
4.  Push your changes to the remote repository.

## Building and Running the Project

To work on this project, you will need to have Quarto installed. You can download it from the [Quarto website](https://quarto.org/docs/get-started/).

### Previewing the Website

To render and preview the website locally, run the following command in your terminal from the project's root directory:

```bash
quarto preview
```

This will start a local web server and open the site in your browser. The site will automatically refresh when you save changes to any of the source files.

### Rendering the Website

To render the entire website without previewing it, use the following command:

```bash
quarto render
```

This will generate all the static files and place them in the `_site/` directory. This is typically done for deployment.
