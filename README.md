# CookyCraze

A small game that lets users bake cookies and earn various rewards.

Welcome to CookyCraze! Bake and sell cookies to earn money, climb the ranks, and build the ultimate automated bakery. Start out clicking manually, then invest in upgrades, unlock minigames, and automate your production until cookies are practically baking themselves.

## Game features

- **Bake and sell cookies.** The more you bake, the higher your rank, and the more money you'll earn with every batch made. Each cookie is worth a configurable amount when sold.
- **Level up and gain rewards.** Progress through ranks based on your cookie-baking skills. Each rank rewards you with money, and milestones along the way unlock powerful new features.
- **Shop for upgrades.** Use your hard-earned money to purchase individual upgrades or bundles that boost auto cookies, manual cookies, and baking speed.
- **Automated baking.** Buy auto-baking upgrades and manage baking slots to let the game bake cookies for you while you focus on other upgrades.
- **Random events.** While you play, random baker events can give or take stats in unexpected ways. The cooky flipper has its own separate event pool.
- **Minigames.** Unlock blackjack at rank 10, the cooky flipper at rank 20, the cooky lottery at rank 30, the dice roller at rank 40, and the slot machine at rank 50. Each lets you bet various stats for a chance at big rewards.
- **Combos.** Unlocked at rank 70. Build up consecutive manual bake presses within a time window to activate a combo and multiply your cookie output. The longer you keep it going, the higher the multiplier.
- **Achievements.** Earn recognition for milestones across baking, economy, minigames, events, and more.
- **Quests and prestige.** Complete objectives to unlock the prestige option. Prestiging resets your progress and awards a permanent bonus that carries into every future run.
- **Multiple save slots.** Keep separate playthroughs going at the same time, each with its own rank, upgrades, and settings.
- **Mod support.** Nearly every game system is configurable through plain text files in the data/config folder, from rank rewards and event effects to slot payouts and prize pools.

Can you reach the highest rank and become the ultimate baker? Let's find out!

## Currency

Money is always displayed in dollars and cents throughout the game, for example 50 cents or $1.50. You will never see the word "coins" in any player-facing message. However, coins is the internal name used inside the configuration files to refer to the player's money. If you are editing config files, use the word coins exactly as the documentation specifies.

## Keyboard commands

### In game

- **F:** Announces how many cookies you can produce when baking mode is enabled.
- **J:** Announces how many cookies you can produce when baking mode is disabled.
- **C:** Announces how many cookies you currently have.
- **R:** Announces your current rank and how many cookies are required to reach the next one.
- **M:** Announces how much money you have available to spend.
- **Control plus S:** Saves your game progress.
- **Control plus L:** Reloads all configuration files and your save data without restarting.
- **Escape:** Opens a prompt asking whether you want to quit.
- **Alt plus F4:** Exits the game immediately without saving.

### Buffers

- **Comma:** Moves to the previous item in the focused buffer.
- **Period:** Moves to the next item in the focused buffer.
- **Shift plus Comma:** Jumps to the top of the focused buffer.
- **Shift plus Period:** Jumps to the bottom of the focused buffer.
- **Left Bracket:** Navigates to the previous buffer category.
- **Right Bracket:** Navigates to the next buffer category.
- **Shift plus Left Bracket:** Jumps to the first buffer category.
- **Shift plus Right Bracket:** Jumps to the last buffer category.
- **Shift plus C:** Copies the current buffer message to the clipboard.
- **Shift plus M:** Toggles mute or unmute on the focused buffer.
- **Shift plus Backslash:** Exports all buffer items to log files in the logs folder.

### Forms and menus

- **Tab:** Cycles forward through the available form controls.
- **Shift plus Tab:** Cycles backward through the available form controls.
- **Spacebar or Enter:** Activates a button or opens a menu.

## Conclusion

CookyCraze started as a simple cookie clicker and has grown into a full-featured idle game with automated production, minigames, a combo system, achievements, quests, a rank progression system, multiple save slots, and deep mod support. Every system in the game can be tuned or extended through the provided configuration files.

Thanks for playing, and happy baking!
