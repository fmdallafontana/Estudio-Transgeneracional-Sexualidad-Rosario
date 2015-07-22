Muestra de Fracciones Censales Markdown
=======================================

1- Vamos a tomar cada zona de la Ciudad de Rosario de acuerdo a la
definición establecida por la Municipalidad.

Here, I'm going to load some data:

```{r}
library(datasets)
data(airquality)
summary(airquality)
```

Let's first make a pairs plot of the data:

```{r}
pairs(airquality)
```

Here's a regression model of ozone on wind, solar radiation and temperature:

```{r}
fit <- lm(Ozone ~ Wind + Solar.R + Temp, data=airquality)
summary(fit)
```

Here's an unordered list:

* First element
* Second element
