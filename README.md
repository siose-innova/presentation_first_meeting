# presentation_first_meeting

Presentation used in the first meeting of the research team.


## How to build this presentation

All the files you need to produce this presentation using Pandoc and Beamer.


### Dependencies

You need to have [docker](https://docs.docker.com/) and [docker-compose](https://docs.docker.com/compose/overview/) correctly installed.

All the dependencies you need are packaged in a docker container and are easily deployed using a single command (`docker-compose up`). However, if you want to know more, you can check these links:

- [Pandoc](http://johnmacfarlane.net/pandoc/)
- [Beamer](http://en.wikipedia.org/wiki/Beamer_%28LaTeX%29)
- [Texlive](https://www.tug.org/texlive/)


### Usage

1. `git clone` this repository
2. Edit [slides.md](slides.md)
3. If you need to change the compilation options, edit the [Makefile](Makefile)
4. `docker-compose up`
5. `docker-compose down`
6. `git add -i` and `commit` your changes
7. `git push` to this GitHub repository
