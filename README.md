# IMS Data Journalism training

One-day Data Analysis and Data Storytelling training for International Media Support (IMS).

## Brief

The Moldovan media sector needs to strengthen its capacity to work with data, datasets, open-source intelligence (OSINT), and data-driven storytelling in order to produce more evidence-based, credible, and impactful journalism. As public discourse becomes increasingly influenced by complex social, economic, political, and information-related trends, journalists require the skills to collect, analyze, verify, and interpret data from a wide range of sources, including public institutions, open databases, satellite imagery, social media platforms, corporate registries, procurement portals, and other open-source resources. Enhanced competencies in data journalism and OSINT would enable media organizations to uncover hidden patterns, investigate issues of public interest, track influence networks, verify online content, and identify coordinated disinformation campaigns. At the same time, journalists would be better equipped to transform complex datasets into compelling, audience-friendly stories through data visualization and interactive formats. Building these capabilities is particularly important in Moldova's evolving information environment, where robust data analysis and OSINT methodologies can strengthen investigative reporting, improve fact-checking and verification processes, increase transparency and accountability, and enhance media resilience against misinformation and foreign information manipulation and interference (FIMI).

In practice, this means journalists and media organizations would be able to:

- **Analyze government datasets** (budgets, procurement records, election results, demographic statistics) to identify trends, irregularities, or policy impacts rather than simply reporting official statements.
- **Investigate ownership and influence networks** by using company registries, beneficial ownership databases, court records, and public procurement portals to uncover links between businesses, politicians, and media outlets.
- **Verify online content** by geolocating images and videos, checking metadata, reverse image searching, and comparing content with satellite imagery or maps to determine whether a claim is true.
- **Monitor and expose disinformation campaigns** by tracking coordinated social media activity, identifying bot-like behavior, mapping narrative amplification, and analyzing how false information spreads across platforms.
- **Create data-driven stories** that explain complex issues such as inflation, migration, elections, climate impacts, or public spending through interactive charts, maps, dashboards, and visualizations.
- **Use AI and digital tools responsibly** to clean, analyze, and visualize large datasets, making investigative work more efficient while maintaining editorial standards.
- **Strengthen fact-checking and investigative reporting** by combining traditional reporting techniques with data analysis and OSINT methodologies.

Especially on:

- **Verify online content** by geolocating images and videos, checking metadata, reverse image searching, and comparing content with satellite imagery or maps to determine whether a claim is true.
- **Create data-driven stories** that explain complex issues such as inflation, migration, elections, climate impacts, or public spending through interactive charts, maps, dashboards, and visualizations.
- **Use AI and digital tools responsibly** to clean, analyze, and visualize large datasets, making investigative work more efficient while maintaining editorial standards.

## Setup instructions

To render the Quarto notebook, run `quarto render` on your `.qmd` file in `notebooks`.

## SAMIZDATA report styling

- This template includes `brand.yml` and PDF styling hooks for Quarto.
- PDF reports use SAMIZDATA colors and typography by default.
- `logo.png` is already included at project root and used in PDF output.

## Tracking time

This project uses [klog](https://klog.jotaen.net/) to track time spent on it.

You can start tracking time by running:

```bash
klog start hours.klg
```

To stop tracking time, run:

```bash
klog stop hours.klg
```

Or to take a break:

```bash
klog pause --summary 'Lunch break' hours.klg
```
