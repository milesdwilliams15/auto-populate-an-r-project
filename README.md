# Auto-populate an R Project

The R script file `pop_dir.R` creates a function called `pop_dir()` that automatically populates an R project with a custom file structure.

To access it:

```{r}
source("https://raw.githubusercontent.com/milesdwilliams15/auto-populate-an-r-project/refs/heads/main/pop_dir.R")
```

Then, to run it, either use its default setting, or give it a custom set of file paths.

```{r}
## default
pop_dir()

## custom
pop_dir(c("01_code/_clean_data.R", "02_report/_manuscript.qmd"))
```
