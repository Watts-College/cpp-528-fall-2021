# cpp-528-spr-2021

## How to update course website

Welcome to CPP 528! To update the course website to reflect the current semester, please update two files:

* [`index.md`](index.md): to reflect who is teaching CPP 528 and other essential logistics
    + update the `info` section
    + update the `instructor` section
* [`_config.yml`](_config.yml): to ensure the course website points to the correct GitHub repo
    + update the `author` section
    + update the `GitHub Configuration` section
        + specifically the `baseurl` and `course_url`
            + i.e. from `...-fall-2020` to `...-spr-2021`
    + update the `github_info` section:
        + specifically the `website-repo` and `course-repo`
            + i.e. from `...-fall-2020` to `...-spr-2021`
            
## How to obtain necessary `R` packages

Thanks to the [`renv`](https://rstudio.github.io/renv/index.html) package, you can install the necessary `R` packages by running this line of code:

```r
# restore a project's dependencies from the renv.lock file (located in the root directory)
renv::restore(here::here())
```

For more context, here's what happens under the hood when [`renv::restore()`](https://rstudio.github.io/renv/reference/restore.html#library) is called:

> When `renv::restore()` is called, packages from the lockfile are compared against packages currently installed in the library paths specified by library. Any packages which have changed will then be installed into the default library. If clean = TRUE, then packages that exist within the default library, but aren't recorded in the lockfile, will be removed as well.
