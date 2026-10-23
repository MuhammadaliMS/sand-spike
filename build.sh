#!/bin/sh
# Wrap game.html (artifact body) into a standalone index.html
cd "$(dirname "$0")"
FAV="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 32 32'%3E%3Crect width='32' height='32' rx='8' fill='%23f6d9a0'/%3E%3Ccircle cx='16' cy='15' r='8' fill='%23fbf8f1' stroke='%231d1a17' stroke-width='2'/%3E%3Cpath d='M8 15h16M16 7c-3 4-3 12 0 16M16 7c3 4 3 12 0 16' fill='none' stroke='%23e0523b' stroke-width='1.6'/%3E%3C/svg%3E"
{
  printf '<!doctype html>\n<html lang="en"><head><meta charset="utf-8">\n'
  printf '<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">\n'
  printf '<meta name="description" content="A clay 3D 2v2 beach volleyball game in the browser: bump, set, spike and block on Copacabana, Santa Monica and Bondi, each with its own rule twist.">\n'
  printf '<meta property="og:title" content="Sand Spike">\n<meta property="og:description" content="2v2 beach volleyball in clay. Bump, set, spike, block.">\n'
  printf '<meta name="theme-color" content="#f6d9a0">\n<link rel="icon" href="%s">\n' "$FAV"
  cat game.html
  printf '\n</html>\n'
} > index.html
