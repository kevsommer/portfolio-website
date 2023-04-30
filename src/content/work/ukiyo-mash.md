---
title: Ukiyo Mash
publishDate: 2023-03-02 00:00:00
img: /assets/ukiyo/example_ukiyo.jpg
img_alt: Mishima Pass in Kai Provence, Katsushika Hokusai (Thirty-six Views of Mount Fuji)
description: |
  a simple web app allowing users to rank japanese wood block print artworks using ELO scores
tags:
  - React
  - FastAPI
  - SQLite
---

## Ukiyo ELO Ranking App

> Ukiyo (浮世, "floating/fleeting/transient world")

The idea for this app stems from the movie <a href="https://www.imdb.com/title/tt1285016/">The Social Network</a> where Mark builds a similar ELO ranking website. During my bachelor thesis I had used the <a href="https://metmuseum.github.io/">The Metropolitan Museum of Art Collection API</a> api a couple of times, which provides an interface to interact with the hundreds of thousands of artworks in the <a href="https://www.metmuseum.org/">metropolitan museum</a> collection.

- try it out yourself on <a href='https://ukiyo.kevinsommer.com'>ukiyo.kevinsommer.com</a>
- or check out the <a href='https://github.com/kevsommer/ukiyo-mash'>GitHub repo</a>

#### Voting Page
![screenshot showing the ukiyo mash voting page](/assets/ukiyo/ukiyo-mash-page.png)
Users are shown 2 different ukiyo-e's with the corresponding image and some meta information. Via a link to the metropolitan museum website users can read more about the artwork and can vote which of the two artworks they prefer. After each vote, the server uses the ELO ranking formula to update the ELO scores of both artworks in the database.

### ELO Ranking
![screenshot showing the ukiyo mash website](/assets/ukiyo/ukiyo-mash-screenshot.png)
On the ranking page, users can explore the available artworks, compare their scores and look them up on the metropolitan museum website.


