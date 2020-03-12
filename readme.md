# Tidying Data

Example files for examples from [Tidying Data](https://research.computing.yale.edu/training/tidying-data) workshop for the Yale Center for Research Computing.

Slides are here: [bit.ly/ycrc-tidy](bit.ly/ycrc-tidy)

## Docker

``` bash
git clone https://github.com/ycrc/tidying_data.git
docker run -dPp 8888:8888 -v $(pwd)/tidying_data:/home/rstudio/tidying_data rocker/binder:3.6.0
```

I'll probably make an image for this class at some pint based on `rocker/binder`, but 'till then just install pandas when you first run Jupyter:

``` bash
!pip install pandas
```
