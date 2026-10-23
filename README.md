# Sand Spike

**Play:** https://muhammadalims.github.io/sand-spike/

2v2 beach volleyball in a clay 3D diorama, built with Three.js in a single HTML file. Fourth game in the street-sport family (Galli Cricket, Panna Cage, Block Hoops).

## Beaches
- **Copacabana, Rio**: black-and-white wave mosaic promenade, kiosks, palms, kites. A rally of 8+ touches makes the crowd chant ALTINHA! and the rally winner scores a bonus point.
- **Santa Monica**: pier with a ferris wheel, lifeguard tower. A sea breeze (flag + wind chip) pushes high balls and serves.
- **Bondi Sunset, Sydney**: golden hour, surf club, surfboards in the sand, big waves. A ball that lands in the water is a point to the other team (IN THE SURF!).

## Rules
Rally scoring to 15, win by 2, capped at 19. Three touches a side; four touches, net contact, a ball outside the antenna or out is a fault (point against the last team to touch it). The team that wins the rally serves, and the serve alternates between the two partners.

## Controls
One action button does the right thing: SERVE (hold to power, release; aim with the stick), BUMP (pass / set / free ball), SPIKE (jump and hit a high ball near the net, aim with the stick), BLOCK (jump at the net as they swing). Press timing gives PERFECT / GOOD / LATE touches. Your partner is AI and sets you, and spikes when you set.
- **1 player:** WASD or arrows to move and aim, Space or Enter for the action.
- **2 players (one keyboard):** P1 WASD + Space, P2 arrows + Enter, each with an AI partner.
- **Phone (landscape):** floating left stick, one big action button (label changes), pause button. 2 players needs a keyboard.
- T cycles time of day, M mutes, P toggles the pixel look, Esc pauses, R returns to the menu.

## Testing hooks
`window.__spike` exposes `state, score, ball, players, setLocation, setTime, startGame, bot, speed, sim(seconds), step(n)`. Set `__spike.bot = true` to let a scripted player drive your side.

## Development
Edit `game.html`, then run `./build.sh` to regenerate `index.html`.
