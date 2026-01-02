#!/usr/bin/env bash
# Research Project Template
# Creates a documentation-focused structure for research projects

create_research_project() {
  local PROJECT_DIR="$1"
  local PROJECT_NAME="$2"

  # -----------------------------
  # CREATE BASE FILES
  # -----------------------------
  cat << 'EOF' > README.md
# Research Project

## Research Objective

[Describe the main research question or objective here]

## Methodology

[Brief overview of your research approach]

## Key Findings

[To be filled in as research progresses]

## Quick Links

- [Research Notes](research/notes/)
- [Findings](research/findings/summary.md)
- [Comparisons](research/comparisons/matrix.md)
- [Final Recommendations](research/recommendations/final.md)
- [Executive Summary](reports/executive-summary.md)
- [Sources](research/sources/urls.md)

## Project Structure

- `research/` - Core research workspace organized by activity
- `reports/` - Polished outputs and final deliverables
- `data/` - Raw and processed data (for data science research)
- `assets/` - Images, diagrams, and supporting materials

## Getting Started

1. Define your research objective (update this README)
2. Start collecting notes in `research/notes/`
3. Document sources in `research/sources/`
4. Record findings in `research/findings/`
5. Build comparisons in `research/comparisons/`
6. Draft recommendations in `research/recommendations/`
7. Create final report in `reports/`

For detailed guidance, see [RESEARCH_GUIDE.md](RESEARCH_GUIDE.md)
EOF

  cat << 'EOF' > LICENSE
MIT License
EOF

  cat << 'EOF' > CHANGELOG.md
# Research Progress Log

## [Unreleased]

### Research Activities
- Project initialized

### Key Findings
- [Document major findings with dates]

### Decisions
- [Track important research decisions]
EOF

  # -----------------------------
  # SIMPLIFIED .gitignore
  # -----------------------------
  cat << 'EOF' > .gitignore
# OS / Editor
.DS_Store
Thumbs.db
.vscode/
.idea/
*.swp
*~

# Data (large files)
data/raw/*.csv
data/raw/*.xlsx
data/raw/*.json
*.zip
*.tar.gz
*.7z

# Temporary files
*.tmp
~$*
.~*

# Python (if using scripts)
__pycache__/
*.pyc
.ipynb_checkpoints/

# R (if using R)
.Rhistory
.RData

# Build artifacts
*.pdf
!reports/*.pdf
EOF

  # -----------------------------
  # DOCUMENTATION-FOCUSED PRE-COMMIT
  # -----------------------------
  cat << 'EOF' > .pre-commit-config.yaml
repos:
  - repo: https://github.com/pre-commit/pre-commit-hooks
    rev: v4.6.0
    hooks:
      - id: check-yaml
      - id: check-json
      - id: end-of-file-fixer
      - id: trailing-whitespace
      - id: check-merge-conflict
      - id: check-added-large-files
        args: ['--maxkb=10000']

  - repo: https://github.com/igorshubovych/markdownlint-cli
    rev: v0.39.0
    hooks:
      - id: markdownlint
        args: ['--fix']
EOF

  # -----------------------------
  # RESEARCH DIRECTORY STRUCTURE
  # -----------------------------
  mkdir -p research/notes research/findings research/comparisons research/recommendations research/sources

  cat << 'EOF' > research/README.md
# Research Workspace

This directory contains the core research work organized by activity type.

## Directory Structure

- **notes/** - Raw research notes, observations, and daily logs
- **findings/** - Synthesized findings and discoveries
- **comparisons/** - Comparative analysis and evaluation matrices
- **recommendations/** - Final recommendations and alternatives
- **sources/** - Citations, references, and source materials

## Research Workflow

1. **Collect** - Gather information and take notes
2. **Analyze** - Identify patterns and findings
3. **Compare** - Evaluate options against criteria
4. **Synthesize** - Develop recommendations
5. **Document** - Record sources and references

## Best Practices

- Date-stamp all notes and findings
- Link to sources for all claims
- Update findings as new information emerges
- Keep comparisons objective and criteria-based
- Document decision rationale in recommendations
EOF

  cat << 'EOF' > research/notes/README.md
# Research Notes

Store raw research notes, observations, and daily research logs here.

## Organization

Create separate markdown files for different topics or research sessions:

- `topic-name.md` - Notes on specific topics
- `YYYY-MM-DD-session.md` - Daily research session notes
- `sources-exploration.md` - Notes from exploring sources

## Template for Notes

```markdown
# [Topic/Session Name]

**Date**: YYYY-MM-DD
**Focus**: [What you're researching]

## Key Points

- Point 1
- Point 2

## Questions Raised

- Question 1
- Question 2

## Sources Reviewed

- [Source 1](URL)
- [Source 2](URL)

## Next Steps

- [ ] Action item 1
- [ ] Action item 2
```

## Tips

- Capture everything, filter later
- Link to sources immediately
- Note uncertainties and questions
- Cross-reference related notes
EOF

  touch research/notes/.gitkeep

  cat << 'EOF' > research/findings/README.md
# Research Findings

Document synthesized findings and discoveries here.

## Files

- **summary.md** - High-level findings overview
- **detailed.md** - In-depth findings with evidence

## Template for Findings

```markdown
# Finding: [Title]

**Status**: [Confirmed | Tentative | Needs Validation]
**Date**: YYYY-MM-DD

## Summary

[One paragraph summary of the finding]

## Evidence

1. Source 1: [Description and link]
2. Source 2: [Description and link]

## Implications

[What this finding means for the research objective]

## Confidence Level

[High | Medium | Low] - [Rationale]
```

## Best Practices

- Distinguish findings from assumptions
- Rate confidence levels
- Link to supporting evidence
- Update as new information emerges
EOF

  cat << 'EOF' > research/findings/summary.md
# Findings Summary

## Overview

[Brief overview of research findings]

## Key Findings

### Finding 1: [Title]

**Status**: [Confirmed | Tentative | Needs Validation]

[Brief description]

### Finding 2: [Title]

**Status**: [Confirmed | Tentative | Needs Validation]

[Brief description]

## Areas Requiring Further Research

- [Area 1]
- [Area 2]

## Last Updated

[Date]
EOF

  cat << 'EOF' > research/findings/detailed.md
# Detailed Findings

## Finding 1: [Title]

**Date**: [Date]
**Status**: [Confirmed | Tentative | Needs Validation]
**Confidence**: [High | Medium | Low]

### Summary

[Detailed description of the finding]

### Supporting Evidence

1. **Source 1**: [Citation and link]
   - [Key points from source]

2. **Source 2**: [Citation and link]
   - [Key points from source]

### Analysis

[Your analysis of what this finding means]

### Implications

[How this impacts the research objective]

---

## Finding 2: [Title]

[Repeat structure above]
EOF

  cat << 'EOF' > research/comparisons/README.md
# Comparative Analysis

Compare and evaluate different options against defined criteria.

## Files

- **matrix.md** - Comparison matrix/table
- **analysis.md** - Detailed comparative analysis

## Creating Effective Comparisons

1. **Define Criteria** - What matters for this decision?
2. **Weight Criteria** - Which criteria are most important?
3. **Gather Data** - Collect objective information
4. **Rate Options** - Evaluate each option against criteria
5. **Synthesize** - Identify patterns and trade-offs

## Comparison Matrix Template

| Criteria | Weight | Option 1 | Option 2 | Option 3 |
|----------|--------|----------|----------|----------|
| Price    | High   | $X       | $Y       | $Z       |
| Feature A| Medium | Rating   | Rating   | Rating   |
| Feature B| Low    | Rating   | Rating   | Rating   |

## Tips

- Use objective criteria when possible
- Document rating rationale
- Include both pros and cons
- Consider total cost of ownership
- Note any deal-breakers
EOF

  cat << 'EOF' > research/comparisons/matrix.md
# Comparison Matrix

## Evaluation Criteria

Define the criteria and their relative importance:

| Criterion | Weight | Description |
|-----------|--------|-------------|
| [Criterion 1] | High/Medium/Low | [What this criterion evaluates] |
| [Criterion 2] | High/Medium/Low | [What this criterion evaluates] |

## Options Comparison

| Criteria | Weight | Option 1 | Option 2 | Option 3 | Option 4 |
|----------|--------|----------|----------|----------|----------|
| [Criterion 1] | H/M/L | [Value/Rating] | [Value/Rating] | [Value/Rating] | [Value/Rating] |
| [Criterion 2] | H/M/L | [Value/Rating] | [Value/Rating] | [Value/Rating] | [Value/Rating] |
| [Criterion 3] | H/M/L | [Value/Rating] | [Value/Rating] | [Value/Rating] | [Value/Rating] |

## Rating Scale

- 5 - Excellent
- 4 - Good
- 3 - Adequate
- 2 - Below Average
- 1 - Poor

## Summary

[Brief summary of how options compare]

## Last Updated

[Date]
EOF

  cat << 'EOF' > research/comparisons/analysis.md
# Comparative Analysis

## Option 1: [Name]

### Overview

[Brief description]

### Strengths

- Strength 1
- Strength 2

### Weaknesses

- Weakness 1
- Weakness 2

### Best For

[Use cases where this option excels]

### Sources

- [Source 1](URL)
- [Source 2](URL)

---

## Option 2: [Name]

[Repeat structure above]

---

## Trade-offs

### Option 1 vs Option 2

[Discussion of key trade-offs between options]

## Recommendations by Use Case

### Use Case A

Recommended: [Option X]
Rationale: [Why this option is best for this use case]

### Use Case B

Recommended: [Option Y]
Rationale: [Why this option is best for this use case]
EOF

  cat << 'EOF' > research/recommendations/README.md
# Recommendations

Document final recommendations and alternative options.

## Files

- **final.md** - Primary recommendations with rationale
- **alternatives.md** - Alternative options and when to choose them

## Recommendation Framework

A good recommendation includes:

1. **Clear Statement** - What you recommend
2. **Rationale** - Why this is the best choice
3. **Evidence** - Data supporting the recommendation
4. **Trade-offs** - What you're optimizing for and giving up
5. **Alternatives** - When to choose differently
6. **Implementation** - How to act on the recommendation

## Template

```markdown
## Recommendation: [Title]

### The Recommendation

[Clear, concise statement of what you recommend]

### Rationale

[Why this is the best choice given the research]

### Supporting Evidence

- Finding 1: [Link to finding]
- Finding 2: [Link to finding]

### Trade-offs

**Optimizing for**: [What this choice prioritizes]
**Giving up**: [What this choice sacrifices]

### When NOT to Follow This

[Situations where alternatives might be better]

### Implementation

1. Step 1
2. Step 2
```
EOF

  cat << 'EOF' > research/recommendations/final.md
# Final Recommendations

## Primary Recommendation: [Option Name]

### The Recommendation

[Clear statement of what you recommend]

### Rationale

[Detailed explanation of why this is the best choice]

### Key Strengths

1. Strength 1
2. Strength 2
3. Strength 3

### Trade-offs Made

**Optimizing for**: [Primary value/benefit]
**Accepting**: [Compromises or limitations]

### Supporting Evidence

- [Finding 1](../findings/detailed.md#finding-1)
- [Finding 2](../findings/detailed.md#finding-2)
- [Comparison Results](../comparisons/analysis.md)

### Implementation

#### Option A: [Specific Configuration/Choice]

1. Step 1
2. Step 2

#### Option B: [Alternative Configuration/Choice]

1. Step 1
2. Step 2

### Budget/Cost

[Cost breakdown and considerations]

### Timeline

[When to implement or purchase]

## When NOT to Follow This

This recommendation may not be suitable if:

- Scenario 1
- Scenario 2

In those cases, see [alternatives](alternatives.md).

## Last Updated

[Date]
EOF

  cat << 'EOF' > research/recommendations/alternatives.md
# Alternative Recommendations

## Alternative 1: [Option Name]

### When to Choose This

[Scenarios where this alternative is better than the primary recommendation]

### Description

[What this alternative involves]

### Pros

- Pro 1
- Pro 2

### Cons

- Con 1
- Con 2

### vs Primary Recommendation

[How this compares to the primary recommendation]

---

## Alternative 2: [Option Name]

[Repeat structure above]

---

## Budget Alternatives

### Budget Option: [Name]

[Description of budget-friendly alternative]

**Saves**: [Amount or percentage]
**Sacrifices**: [What you give up]

### Premium Option: [Name]

[Description of premium alternative]

**Additional Cost**: [Amount or percentage]
**Additional Benefits**: [What you gain]

## Decision Matrix

| Scenario | Recommended Option | Rationale |
|----------|-------------------|-----------|
| [Use Case 1] | [Option] | [Why] |
| [Use Case 2] | [Option] | [Why] |
| [Use Case 3] | [Option] | [Why] |
EOF

  cat << 'EOF' > research/sources/README.md
# Research Sources

Document all sources, citations, and references here.

## Files

- **bibliography.md** - Formal citations and bibliography
- **urls.md** - Web sources and online resources
- **datasets.md** - Data sources (for data science research)

## Citation Best Practices

- Record source information immediately when found
- Include access dates for web sources
- Note key takeaways from each source
- Rate source credibility and relevance
- Link sources to specific findings and claims

## Source Quality Checklist

- [ ] Author/organization identified
- [ ] Publication date verified
- [ ] Claims supported by evidence
- [ ] Potential bias acknowledged
- [ ] Cross-referenced with other sources
EOF

  cat << 'EOF' > research/sources/bibliography.md
# Bibliography

## Primary Sources

### [Source Title 1]

- **Author**: [Author Name]
- **Date**: [Publication Date]
- **Type**: [Article | Book | Report | Study]
- **URL**: [Link]
- **Accessed**: [Date]

**Key Takeaways**:
- Takeaway 1
- Takeaway 2

**Credibility**: [High | Medium | Low]
**Relevance**: [High | Medium | Low]

---

### [Source Title 2]

[Repeat structure above]

---

## Secondary Sources

[Sources that reference or analyze primary sources]

## Expert Opinions

[Expert reviews, opinions, analysis]

## Community Feedback

[User reviews, community discussions, forums]
EOF

  cat << 'EOF' > research/sources/urls.md
# Web Sources

## Official Documentation

- [Source 1 Name](URL) - [Brief description]
- [Source 2 Name](URL) - [Brief description]

## Reviews and Comparisons

- [Review 1](URL) - [Brief description]
- [Review 2](URL) - [Brief description]

## Expert Analysis

- [Expert Analysis 1](URL) - [Brief description]
- [Expert Analysis 2](URL) - [Brief description]

## Community Resources

- [Forum Discussion 1](URL) - [Brief description]
- [Reddit Thread 1](URL) - [Brief description]

## Videos

- [Video 1](URL) - [Brief description]
- [Video 2](URL) - [Brief description]

## Data Sources

- [Dataset 1](URL) - [Brief description]
- [Dataset 2](URL) - [Brief description]

## Tools and Utilities

- [Tool 1](URL) - [Brief description]
- [Tool 2](URL) - [Brief description]

## Last Updated

[Date]
EOF

  # -----------------------------
  # REPORTS DIRECTORY
  # -----------------------------
  mkdir -p reports

  cat << 'EOF' > reports/README.md
# Research Reports

Polished outputs and final deliverables.

## Files

- **executive-summary.md** - High-level summary for quick consumption
- **final-report.md** - Comprehensive final report with all details

## Report Writing Tips

1. **Executive Summary** - Start with conclusions and key recommendations
2. **Methodology** - Briefly explain research approach
3. **Findings** - Present key findings with evidence
4. **Analysis** - Interpret what findings mean
5. **Recommendations** - Clear, actionable recommendations
6. **Appendices** - Supporting details and data

## Audience Considerations

- Executive Summary: Decision-makers with limited time
- Final Report: Stakeholders who want full details

## Review Checklist

- [ ] Recommendations are clear and actionable
- [ ] Findings are supported by evidence
- [ ] Sources are properly cited
- [ ] Trade-offs are acknowledged
- [ ] Alternative options are presented
- [ ] Implementation guidance is provided
EOF

  cat << 'EOF' > reports/executive-summary.md
# Executive Summary: [Research Topic]

**Date**: [Date]
**Prepared by**: [Your Name]

## Bottom Line

[One paragraph answer to the research question]

## Primary Recommendation

**Recommended**: [Option/Solution]

**Rationale**: [One paragraph explanation]

**Key Benefits**:
- Benefit 1
- Benefit 2
- Benefit 3

## Alternative Options

For different scenarios or constraints, consider:

- **[Alternative 1]**: Best if [condition]
- **[Alternative 2]**: Best if [condition]

## Investment Required

- **Cost**: [Amount/Range]
- **Time**: [Implementation time]
- **Effort**: [Complexity level]

## Next Steps

1. Step 1
2. Step 2
3. Step 3

## Risk Factors

[Key risks or limitations to be aware of]

---

For detailed analysis, see [Final Report](final-report.md)
EOF

  cat << 'EOF' > reports/final-report.md
# Final Report: [Research Topic]

**Date**: [Date]
**Prepared by**: [Your Name]

---

## Executive Summary

[Brief summary - copy from executive-summary.md or condense]

---

## 1. Research Objective

### Primary Question

[The main research question you set out to answer]

### Scope

[What was included and excluded from this research]

### Success Criteria

[How you determined if options meet requirements]

---

## 2. Methodology

### Research Approach

[How you conducted the research]

### Sources Consulted

- [Number] primary sources
- [Number] expert reviews
- [Number] user testimonials
- [Number] comparative analyses

See [Sources](../research/sources/) for complete list.

### Evaluation Criteria

[The criteria used to evaluate options]

---

## 3. Key Findings

### Finding 1: [Title]

[Description and implications]

**Evidence**: [Link to detailed finding]

### Finding 2: [Title]

[Description and implications]

**Evidence**: [Link to detailed finding]

### Finding 3: [Title]

[Description and implications]

**Evidence**: [Link to detailed finding]

---

## 4. Options Analysis

### Option 1: [Name]

**Overview**: [Brief description]

**Strengths**:
- Strength 1
- Strength 2

**Weaknesses**:
- Weakness 1
- Weakness 2

**Best For**: [Use cases]

**Cost**: [Price range]

---

### Option 2: [Name]

[Repeat structure above]

---

### Comparison Summary

[Link to comparison matrix](../research/comparisons/matrix.md)

---

## 5. Recommendations

### Primary Recommendation: [Option Name]

**The Recommendation**: [Clear statement]

**Rationale**: [Detailed explanation]

**Implementation**:
1. Step 1
2. Step 2
3. Step 3

**Expected Outcomes**:
- Outcome 1
- Outcome 2

**Investment Required**:
- Cost: [Amount]
- Time: [Timeframe]
- Complexity: [Level]

### Alternative Recommendations

See [Alternatives](../research/recommendations/alternatives.md) for scenarios where different options may be preferred.

---

## 6. Trade-offs and Limitations

### What This Optimizes For

[What the recommendation prioritizes]

### What This Sacrifices

[What the recommendation gives up or compromises on]

### Risks and Mitigations

| Risk | Impact | Likelihood | Mitigation |
|------|--------|------------|------------|
| [Risk 1] | H/M/L | H/M/L | [How to mitigate] |

---

## 7. Conclusion

[Final thoughts and summary]

---

## 8. Appendices

### Appendix A: Detailed Comparison Data

[Link or include detailed comparison tables]

### Appendix B: Source Credibility Assessment

[How you evaluated source reliability]

### Appendix C: Glossary

[Define technical terms if needed]

---

## References

See [Bibliography](../research/sources/bibliography.md) for complete source list.

---

**Last Updated**: [Date]
EOF

  # -----------------------------
  # DATA DIRECTORY (OPTIONAL)
  # -----------------------------
  mkdir -p data/raw data/processed data/analysis

  cat << 'EOF' > data/README.md
# Data Directory

For data science and quantitative research projects.

## Structure

- **raw/** - Original, unmodified data files
- **processed/** - Cleaned and transformed data
- **analysis/** - Analysis scripts and notebooks

## Data Management Best Practices

1. **Never modify raw data** - Keep originals pristine
2. **Document transformations** - Record all data processing steps
3. **Version data** - Track changes to datasets
4. **Large files** - Use .gitignore for large data files
5. **Data dictionary** - Document what each field means
6. **Source attribution** - Track where data came from

## Data Pipeline

```
raw/ → [cleaning/processing] → processed/ → [analysis] → results
```

## Scripts

If using analysis scripts (Python, R, etc.), store them in `analysis/`:

- `01_data_cleaning.py` - Clean and prepare data
- `02_exploratory_analysis.ipynb` - Explore and visualize
- `03_statistical_analysis.R` - Statistical tests
- `requirements.txt` or `renv.lock` - Dependency tracking

## Tips

- Use descriptive file names with dates
- Compress large CSV/Excel files
- Export analysis results to `findings/`
- Link data sources in `sources/datasets.md`
EOF

  # -----------------------------
  # ASSETS DIRECTORY
  # -----------------------------
  mkdir -p assets

  cat << 'EOF' > assets/README.md
# Assets Directory

Store images, diagrams, screenshots, and supporting materials here.

## Organization

Organize assets by type or topic:

```
assets/
├── screenshots/          # Product screenshots, UI captures
├── diagrams/            # Architecture, flow charts, decision trees
├── charts/              # Data visualizations, graphs
└── reference/           # Reference images, examples
```

## File Naming

Use descriptive names with dates:
- `option1-screenshot-2025-01-02.png`
- `comparison-chart-v2.png`
- `architecture-diagram.svg`

## Best Practices

- Use PNG for screenshots
- Use SVG for diagrams (editable, scales well)
- Optimize images before committing
- Reference assets in markdown: `![Description](../assets/filename.png)`

## Tools

- **Screenshots**: Built-in OS tools, ShareX (Windows), Flameshot (Linux)
- **Diagrams**: draw.io, Excalidraw, Mermaid (in markdown)
- **Charts**: Excel, Google Sheets, Plotly, matplotlib
EOF

  touch assets/.gitkeep

  echo "Research project template created successfully!"
}
