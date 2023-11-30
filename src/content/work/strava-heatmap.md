---
title: Strava Heatmap Animation
publishDate: 2023-03-02 00:00:00
img: /assets/strava-heatmap-screenshot.png
img_alt: Screenshot of Strava heatmap animation web app.
description: |
  A web app, allowing users to create custom animations of strava activities.
tags:
  - React
  - FastAPI
  - Strava API
  - Leaflet
---

## Strava Heatmap Animation App
This app is inspired by a <a href='https://www.reddit.com/r/dataisbeautiful/comments/f8nu0c/oc_this_is_how_londons_street_grid_reveals_using/'>reddit post</a> from a couple of years ago, in which a London-based cyclist, mapped all of his bike rides over the course of 5 years and displayed them chronologically in a video. As a passionate runner and avid Strava user, I had the idea of developing a web app, that allows Strava users to do the same thing without technical knowledge of programs like QGIS.

- try it out yourself on <a href='https://heatmap.kevinsommer.com'>heatmap.kevinsommer.com</a>
- or check out the <a href='https://github.com/kevsommer/strava-procedural-heatmap'>GitHub repo</a>

### Strava API
Conveniently, Strava allows developers to use a public API, which can be seamlessly integrated into any kind of project. Using OAuth2 users can authenticate themselves and the web app can get all of the activities with the corresponding polylines.

### Experiments using GIF Generation
My first idea was to implement the app as a GIF generator, which would produce a GIf that you could download, modify, and use in whichever way you wanted. Unfortunately, I hit a bunch of problems during the implementation of this idea. I needed a box selection on a map so that the application would know the latitude and longitude bounds of the GIF map. This required implementing the selection in mapbox and then sending those bounds to the server. Here, I relied on simple polyline mapping using matplotlib and cartopy, which did not work well out of the box. Eventually, I got it work but the app performance was abhorrent. It took 30s for my 200+ runs to produce the GIF, it could only be used by a single user at a time and the server crashed quite a lot. I didn't revisit the idea for a while.

### Leaflet
Then I had the idea of using a web-based mapping tool like leaflet, which would sequentially draw the polylines. And this worked perfectly, the performance was a million times better. It didn't require a big server, because it was only used for authentication. It also solved the bounding box problem, because I could just move the camera when a run outside the current bounds was shown. Additionally, I added the run title, date, and distance to the page. This way it can almost feel like a journey through past times.