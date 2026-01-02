# Research Project Template

The `--research` flag creates documentation-focused projects optimized for comparative research, technical investigations, and analysis work.

## Quick Start

```bash
cproj MyResearch --research
```

## Project Structure

Research projects include:

### Core Directories

- **research/** - Main research workspace
  - **notes/** - Raw research notes and observations
  - **findings/** - Synthesized discoveries and conclusions
  - **comparisons/** - Comparative analysis and evaluation matrices
  - **recommendations/** - Final recommendations and alternatives
  - **sources/** - Citations, references, and bibliography

- **reports/** - Polished outputs
  - **executive-summary.md** - High-level summary for decision-makers
  - **final-report.md** - Comprehensive detailed report

- **data/** - Data files (for quantitative research)
  - **raw/** - Original unmodified data
  - **processed/** - Cleaned and transformed data
  - **analysis/** - Analysis scripts and notebooks

- **assets/** - Images, diagrams, screenshots

### Included Files

- **README.md** - Project overview and objectives
- **RESEARCH_GUIDE.md** - Comprehensive usage guide (11KB)
- **CHANGELOG.md** - Research progress log
- 22+ markdown template files with guides

## Research Workflow

1. **Setup** - Define research objective in README.md
2. **Collection** - Take notes in `research/notes/`
3. **Analysis** - Document findings in `research/findings/`
4. **Comparison** - Build matrices in `research/comparisons/`
5. **Decision** - Draft recommendations in `research/recommendations/`
6. **Delivery** - Write reports in `reports/`

## Use Cases

### Product Research
```bash
cproj HomeTheater2025 --research
# Research best home theater options for 2025
```

### Technical Comparison
```bash
cproj BestHTPCBuild --research
# Compare components for HTPC build
```

### Market Analysis
```bash
cproj CRMComparison --research
# Evaluate CRM solutions for business
```

### Academic Research
```bash
cproj LiteratureReview --research
# Systematic literature review
```

## Key Features

### Documentation-Focused
- No development scaffolding (no Ansible, DevContainer, etc.)
- Lightweight .gitignore (OS files, data, temp files)
- Simple pre-commit hooks (markdown linting)

### Guided Structure
- Extensive README files in every directory
- Templates for common document types
- Examples and best practices included
- RESEARCH_GUIDE.md with detailed workflow

### Flexible
- Adapt structure to your needs
- Remove unused directories
- Add custom sections
- Works with any research domain

## Comparison: Research vs Default Projects

| Feature | Default Project | Research Project |
|---------|----------------|------------------|
| Focus | Software development | Documentation & analysis |
| Structure | Ansible, DevContainer, CI/CD | research/, reports/, data/ |
| Files | ~30+ config files | ~25 markdown templates |
| .gitignore | Comprehensive (secrets) | Minimal (data, temp) |
| Pre-commit | Secret detection, linting | Markdown linting |
| Best For | Apps, infrastructure | Comparisons, investigations |

## Template Customization

The research template is located at:
```
templates/research/
├── template.sh           # Template generator
└── RESEARCH_GUIDE.md     # Full usage guide
```

After installation, active templates are at:
```
~/dev/projects/templates/research/
```

To modify the template:
1. Edit files in the repo's `templates/research/`
2. Test with: `newproj TestProject --research`
3. Reinstall: `./install.sh`

## Examples

### Home Theater Research Structure
```
HomeTheater2025/
├── research/
│   ├── notes/
│   │   ├── samsung-qn90d.md
│   │   ├── lg-c3-oled.md
│   │   └── sony-x95l.md
│   ├── findings/summary.md
│   ├── comparisons/matrix.md
│   └── recommendations/final.md
└── reports/executive-summary.md
```

### Laptop Comparison Structure
```
BestLaptops2025/
├── research/
│   ├── notes/
│   │   ├── business-laptops.md
│   │   ├── gaming-laptops.md
│   │   └── ultrabooks.md
│   ├── comparisons/
│   │   ├── matrix.md          # Feature comparison
│   │   └── analysis.md        # Detailed analysis
│   └── recommendations/
│       ├── final.md           # Primary recommendation
│       └── alternatives.md    # By use case
└── reports/final-report.md
```

## Additional Resources

Every research project includes a comprehensive `RESEARCH_GUIDE.md` file with:
- Detailed workflow guidance
- Document templates
- Best practices
- Examples and tips
- Troubleshooting

## Questions?

See the main project README at the repository root for installation and general usage.
