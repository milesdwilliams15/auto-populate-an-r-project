# Auto-populate an R Project

The R script file `pop_dir.R` creates a function to automatically populate an R project with a tidy file structure.

To use it run:

```{r}
source()
```

Then, to run it, either use it's default setting, or give it a custom set of file paths.

```{r}
## default
pop_dir()

## custom
pop_dir(c("01_code/_clean_data.R", "02_report/_manuscript.qmd"))
```
