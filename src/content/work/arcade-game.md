---
title: Arcade Space Shoot-Em'-Up Game
publishDate: 2023-04-02 00:00:00
img: /assets/arcade-game-screenshot.png
img_alt: Screenshot from the Arcade Space Shoot-Em'-Up Game.
description: |
  A small game with using the Python library pygame, in which you control a small spaceship that has to shoot approaching enemies.
tags:
  - Game Design
  - Python
  - Pygame
---

A pixel art space shooter created with Pygame. The player takes control of a futuristic spaceship, expertly navigating through a cosmic battlefield filled with asteroids and enemy spacecraft. On the way, stronger enemies appear, the player collects power ups and tries to set a high score.

## Space Arcade Game

The inspiration for this game is the Lost Viking mini game from StarCraft II. But of course there are many shoot 'em up games like that. 
A few of the spaceships sprites I designed myself using <a href='https://www.aseprite.org/'>aseprite</a>.

- check out the <a href='https://github.com/kevsommer/ukiyo-mash'>GitHub repo</a>

#### Power-Up Mechanism
![screenshot showing the forcefield mechanism](/assets/arcade/arcade_game_forcefield.png)
The power-up mechanism in the game enhances the player's spaceship by providing special abilities or advantages. When the player collects a power-up, their spaceship gains temporary enhancements or bonuses such as increased firepower, additional lives, or a shield for protection. These power-ups can be strategically used to overcome challenging enemies and obstacles in the game.

### Guided Missile Mechanism
![screenshot showing the explosion mechanism](/assets/arcade/arcade_game_with_explosion.png)
The brown spaceship is especially challenging because it shoots guided missiles. The guided missile mechanism involves a missile fired from the spaceship that can track and follow a target, such as an enemy spacecraft. The implementation could certainly use some improvement, because it just changes the direction, based on the position of the player. More sophisticated algorithms that do path or target prediction could make these enemies harder.
