# Research Project Guide

This guide explains how to use the research project template effectively for comparative research, technical investigations, and analysis projects.

## What is This Template For?

This template is designed for research projects like:

- **Product Research**: "Best home theater options for 2025"
- **Technical Comparisons**: "Best HTPC computer build"
- **Technology Evaluation**: "Comparing cloud providers for our use case"
- **Market Research**: "Analysis of CRM solutions"
- **Academic Research**: Literature reviews, technical investigations

The template provides structure for documentation-heavy projects focused on gathering information, comparing options, and making recommendations.

## Project Structure

```
your-project/
├── README.md                          # Project overview (update first!)
├── research/                          # Core research workspace
│   ├── notes/                        # Raw research notes
│   ├── findings/                     # Synthesized discoveries
│   ├── comparisons/                  # Comparative analysis
│   ├── recommendations/              # Final recommendations
│   └── sources/                      # Citations and references
├── reports/                           # Polished outputs
│   ├── executive-summary.md          # Quick summary
│   └── final-report.md              # Comprehensive report
├── data/                             # Data files (for quantitative research)
└── assets/                           # Images, diagrams, screenshots
```

## Research Workflow

### Phase 1: Setup (Day 1)

1. **Define Your Research Question**
   - Edit `README.md` with your research objective
   - What are you trying to decide or understand?
   - What criteria matter for this decision?

2. **Identify Sources**
   - Where will you get information?
   - Expert reviews, documentation, community feedback?
   - Start a list in `research/sources/urls.md`

### Phase 2: Collection (Days 2-7)

3. **Gather Information**
   - Take notes in `research/notes/`
   - Create files like `option1-notes.md`, `option2-notes.md`
   - Or use date-based files like `2025-01-02-research.md`

4. **Document Sources**
   - Add sources to `research/sources/` as you find them
   - Include URL, date accessed, and key takeaways
   - Rate credibility and relevance

### Phase 3: Analysis (Days 8-10)

5. **Synthesize Findings**
   - Review your notes
   - Identify patterns and key discoveries
   - Document in `research/findings/summary.md`
   - Create detailed findings in `detailed.md`

6. **Build Comparisons**
   - Define evaluation criteria in `research/comparisons/matrix.md`
   - Rate each option against criteria
   - Document trade-offs in `analysis.md`

### Phase 4: Decision (Days 11-12)

7. **Develop Recommendations**
   - What's the best choice given your findings?
   - Document in `research/recommendations/final.md`
   - Include alternatives for different scenarios

8. **Create Reports**
   - Write `reports/executive-summary.md` first (for quick sharing)
   - Then `reports/final-report.md` (comprehensive details)

### Phase 5: Delivery (Day 13+)

9. **Review and Refine**
   - Check all claims are sourced
   - Verify comparisons are accurate
   - Ensure recommendations are clear

10. **Share and Update**
    - Share executive summary with stakeholders
    - Update as new information emerges
    - Track changes in CHANGELOG.md

## How to Use Each Directory

### research/notes/

**Purpose**: Capture everything as you research

**Best Practices**:
- Don't worry about organization initially
- Create separate files for different topics or sessions
- Date-stamp your notes
- Link to sources immediately
- Note questions and uncertainties

**Example Files**:
- `samsung-qn90d-notes.md` - Notes on specific product
- `2025-01-02-session.md` - Daily research log
- `reddit-discussions.md` - Community feedback summary

### research/findings/

**Purpose**: Synthesize what you've learned

**Best Practices**:
- Distinguish findings from opinions
- Support claims with sources
- Rate confidence level
- Update as you learn more

**Example Findings**:
- "OLED provides better black levels than LED"
- "Mini-LED offers brightness advantage over OLED"
- "Gaming features vary significantly by brand"

### research/comparisons/

**Purpose**: Evaluate options systematically

**Best Practices**:
- Define criteria before comparing
- Use objective measures when possible
- Weight criteria by importance
- Include pros/cons for each option

**Example Matrix**:

| Criteria | Weight | Samsung QN90D | LG C3 OLED | Sony X95L |
|----------|--------|---------------|------------|-----------|
| Price    | High   | $1,800        | $2,000     | $2,200    |
| HDR Peak | High   | 2,000 nits    | 800 nits   | 1,500 nits|
| Gaming   | Medium | 4K/144Hz      | 4K/120Hz   | 4K/120Hz  |

### research/recommendations/

**Purpose**: Make clear, actionable recommendations

**Best Practices**:
- State recommendation clearly
- Explain why it's the best choice
- Acknowledge trade-offs
- Provide alternatives for different scenarios
- Include implementation steps

**Example**:
- Primary: Samsung QN90D for bright rooms
- Alternative: LG C3 OLED for dark rooms
- Budget: TCL 6-Series

### research/sources/

**Purpose**: Track all references and citations

**Best Practices**:
- Record source info immediately
- Rate credibility and relevance
- Note access dates for web sources
- Link sources to findings

**Categories**:
- Official documentation
- Expert reviews (RTings, Consumer Reports)
- Community feedback (Reddit, forums)
- Technical specifications
- User testimonials

### reports/

**Purpose**: Polished final deliverables

**Best Practices**:
- Executive summary: Start with conclusion
- Final report: Tell the complete story
- Link to supporting research
- Make recommendations actionable
- Update date when you revise

## Tips for Effective Research

### 1. Start with the End in Mind

Before you begin researching, ask:
- What decision needs to be made?
- What would a good answer look like?
- What criteria matter most?

### 2. Capture Everything, Filter Later

During collection phase:
- Take notes on everything
- Don't self-censor
- You'll synthesize later

### 3. Use Objective Criteria

When comparing options:
- Prefer measurable criteria
- Document subjective ratings
- Explain your reasoning

### 4. Acknowledge Uncertainty

Research is iterative:
- Mark tentative findings as such
- Note what you don't know
- Update as you learn more

### 5. Source Everything

Build credibility:
- Link claims to sources
- Rate source quality
- Cross-reference when possible

### 6. Consider Use Cases

Different scenarios may need different solutions:
- Document recommendations by use case
- Provide decision matrix
- Explain when to choose alternatives

## Example: Home Theater Research

Here's how you might structure a "Best Home Theater 2025" project:

### research/notes/

- `oled-technology.md` - OLED pros/cons research
- `mini-led-technology.md` - Mini-LED research
- `rtings-reviews.md` - Notes from RTings reviews
- `reddit-hometheater.md` - Community recommendations

### research/findings/

- `summary.md`:
  - Finding: OLED best for dark rooms
  - Finding: Mini-LED best for bright rooms
  - Finding: Gaming features now standard on mid-tier+

### research/comparisons/

- `matrix.md`:
  - Criteria: Price, HDR Performance, Gaming, Motion Handling
  - Options: Samsung QN90D, LG C3, Sony X95L, TCL 6-Series

### research/recommendations/

- `final.md`:
  - Primary: Samsung QN90D for most users
  - Alternative: LG C3 if budget allows and dark room
  - Budget: TCL 6-Series QM8

### reports/

- `executive-summary.md`:
  - Bottom line: Samsung QN90D recommended
  - $1,800, excellent all-around, great for gaming
  - See alternatives for different budgets/rooms

## Working with Data

For quantitative research (data science, technical benchmarks):

### data/raw/

- Store original data files
- Never modify these
- Use .gitignore for large files

### data/processed/

- Cleaned and transformed data
- Document transformations

### data/analysis/

- Python/R scripts
- Jupyter notebooks
- Export findings to `research/findings/`

## Version Control Tips

### What to Commit

- All markdown files
- Small data files (< 1MB)
- Analysis scripts
- Diagrams (prefer SVG)

### What to Ignore

- Large data files (use .gitignore)
- PDF exports (regenerate from markdown)
- Temporary files

### Commit Messages

- "Add notes on OLED technology"
- "Complete comparison matrix"
- "Update recommendations based on new pricing"

## Collaboration

### Working with Others

- Use branches for major revisions
- Pull requests for peer review
- Link to specific findings in discussions
- Document dissenting opinions

### Sharing Results

- Executive summary for quick decisions
- Final report for stakeholders
- Link to GitHub repo for transparency

## When Research is Done

### Completion Checklist

- [ ] Research objective clearly answered
- [ ] All findings supported by sources
- [ ] Comparison matrix complete
- [ ] Primary recommendation documented with rationale
- [ ] Alternatives provided for different scenarios
- [ ] Executive summary ready to share
- [ ] Final report comprehensive and clear
- [ ] CHANGELOG.md updated

### Archiving

- Tag release: `git tag v1.0 -m "Final recommendations"`
- Export reports to PDF if needed
- Document any follow-up needed

### Future Updates

- Track new information in CHANGELOG.md
- Update findings as market changes
- Revise recommendations when appropriate

## Getting Help

### Common Questions

**Q: How detailed should notes be?**
A: Capture enough to understand later. Include quotes and links.

**Q: How many sources do I need?**
A: Enough to validate findings. 5-10 quality sources often sufficient.

**Q: Should I include negative findings?**
A: Yes! Document what doesn't work and why.

**Q: How do I handle conflicting information?**
A: Document both views, assess credibility, note uncertainty.

**Q: When is research "done"?**
A: When you can confidently answer your research question.

## Template Customization

Feel free to modify this template:

- Remove `data/` if not doing quantitative research
- Add directories for specific needs
- Customize templates in README files
- Add your own checklists and frameworks

## Additional Resources

### Markdown Tools

- VS Code with Markdown Preview
- Obsidian for note-taking
- Typora for WYSIWYG editing
- Mermaid for diagrams in markdown

### Research Methods

- Systematic reviews
- SWOT analysis
- Decision matrices
- Cost-benefit analysis
- Risk assessment frameworks

### Data Analysis

- Jupyter notebooks (Python/R)
- Google Sheets for simple analysis
- Tableau/Plotly for visualization
- pandas for data manipulation

---

## Quick Start Checklist

Starting a new research project? Follow this:

1. [ ] Update README.md with research objective
2. [ ] Create first note file in `research/notes/`
3. [ ] Start collecting sources in `research/sources/urls.md`
4. [ ] Define evaluation criteria
5. [ ] Begin researching options
6. [ ] Document findings as you go
7. [ ] Build comparison matrix
8. [ ] Draft recommendations
9. [ ] Write executive summary
10. [ ] Share and iterate

Good luck with your research!
