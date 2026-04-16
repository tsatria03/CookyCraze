Welcome to Cooky Craze!
In this game, you bake and sell cookies to earn coins, climb the ranks, and build the ultimate automated bakery.
Start out clicking manually, then invest your coins into upgrades, unlock minigames like blackjack, the cooky flipper, and the slot machine, and automate your production until cookies are practically baking themselves.
Every rank you reach brings a reward, and milestones along the way unlock powerful new features.
Can you reach the highest rank and become the ultimate baker? Let's find out!

Game features

Baking and selling cookies.
Bake cookies and sell them to earn coins. The more you bake, the higher your rank, and the more you earn.

You can bake manually by pressing the bake button, or let auto-baking handle it passively. Every cookie baked counts toward your rank progress.
Your earnings per bake scale with your rank, so the further you progress, the faster coins accumulate.

To sell cookies and earn coins, enter the cooky store and choose the sell option. You will be prompted to type how many cookies you want to sell, with the maximum amount already filled in.
Press enter to sell everything you have, or type a smaller number to sell only part of your supply. Each cookie sells for a fixed rate, so the more you bake before selling, the larger your payout.

Baking mode is a toggle that activates automatic cookie production. To enable it, you need at least one auto cookie.
Once active, cookies are baked automatically on a timed cycle without any input needed. You can still press the bake button manually while baking mode is running to get an extra boost on top of the automatic output.
Baking mode turns off automatically if your auto cookie count drops to zero.

If you have no baking slots yet, auto baking uses your full auto cookie value directly. Once you purchase and enable slots through the baking slots manager, production is routed through them instead, giving you finer control over how cookies are distributed.

Ranking up.
Reach new ranks by baking cookies. Every rank rewards you with coins, and milestone ranks unlock new features.

The coin reward scales with your current rank, so higher ranks pay out more.
Certain milestone ranks also award bonus stat boosts on top of the coin reward, such as extra auto cookies or manual cookies.
All rewards and unlock ranks are fully configurable in ranks.table.

Regular rank rewards are announced non-interruptively in the background and stored in the ranks buffer. Milestone rank rewards go to the critical buffer.
When baking mode is off, they show as a dismissible dialog so you don't miss them. When baking mode is on, they are delivered non-interruptively so they don't interrupt automated play.

The singles shop.
Buy individual stat upgrades using your coins. Three stats are available: auto cookies, manual cookies, and baking speed.

Auto cookies increases how many cookies are baked automatically per cycle.
Manual cookies increases how many cookies you produce per bake press.
Baking speed reduces the time between each bake.
Upgrades are organized into categories, with higher categories requiring a minimum rank to access.
Costs scale up the more you buy, so plan your purchases carefully.

There are four ways to purchase in the singles shop.

The first is buying a single item at a custom quantity. Select any item in a category and you will be prompted to enter how many you want.
Type the exact number you want and confirm to buy precisely that amount at the current price.

The second is buying a single item at the maximum quantity. When the purchase prompt appears, the maximum number you can currently afford is already filled in.
Simply press enter without typing anything and the game buys as many of that item as your coins allow in one transaction.

The third is buying all affordable items at a custom quantity. At the bottom of each category is a buy all affordable items option, which appears whenever at least one item in the category is within your budget.
Selecting it prompts you for a quantity, and the game buys that many of every affordable item in the category at once, skipping any you cannot afford.
This lets you spread a large purchase across multiple stats in a single action instead of visiting each item individually.

The fourth is buying all affordable items at the maximum quantity. The buy all affordable prompt pre-fills the maximum number you can afford across all eligible items in the category.
Pressing enter without changing it buys every affordable item to the maximum your coins allow, making it the fastest way to spend a large coin reserve across an entire category in one go.

The bundle shop.
Buy packages of multiple stat upgrades at once, often at better value than buying the same items individually.

Bundles are organized into categories by rank, spanning the full progression of the game from beginner to godlike tiers. Each bundle lists what stats it contains and how much it costs.
Like the singles shop, locked categories show their required rank.

One important thing to understand about bundle pricing: bundles do not have their own fixed prices.
Instead, the game uses the singles shop as a backend price engine, looking up the current price of each item based on how many you have already bought and adding them up.
This means bundle prices scale up naturally as you progress, just like singles do.
The advantage of bundles is that they package multiple items into one convenient purchase, so you get more total stats per transaction than buying the same items one at a time.

Bundles support the same quantity system as the singles shop. When you select a bundle, you are prompted for how many you want to buy, with the maximum you can currently afford already filled in.
You can type a specific number to buy exactly that many, or press enter to buy as many as your coins allow. The total cost shown in the menu is always per bundle, so the game multiplies that by your chosen quantity at checkout.

The key difference between bundles and the singles shop bulk buy is not price, but convenience.
Bulk buying in the singles shop lets you buy large quantities of one specific item at a time, requiring you to navigate to each item separately if you want to upgrade multiple stats.
A bundle packages a curated combination of stats into a single purchase, so you can upgrade auto cookies, manual cookies, and baking speed all at once without any extra navigation.
The cost works out the same either way, since both use the singles shop prices as the foundation.

Random events.
While you play, the game fires random events that can affect your stats in unexpected ways.

Events can give or take auto cookies, manual cookies, baking speed, and more. Some are percentage based, and others are flat amounts.
Events fire automatically during gameplay and are fully configurable in baker.event.

Blackjack. Unlocked at rank 10.
A card game where you bet an item of your choice and try to reach 21 without going over.

You can bet cookies, coins, auto cookies, manual cookies, or baking speed. A natural 21 on your opening two cards pays out at 1.5 times your bet.
A standard win pays double, and a tie returns your original bet. The dealer stands at 17 by default.
You can draw cards manually, or enable automatic drawing in the settings. All payouts, sounds, messages, and bet limits are configurable in jacks.table.
A configurable confirmation prompt can be set to appear when your bet reaches a certain threshold, protecting you from accidentally placing a large bet.
Rank ups and achievement unlocks are checked and can fire while you are playing.

Cooky flipper. Unlocked at rank 20.
Flip a coin to trigger a random event that can boost or reduce your stats.

Each flip draws from the flipper.event configuration file, which works the same way as the main event system but with its own separate event list.
Some events are positive, and others are negative, so there is an element of risk.
Before flipping, you are shown a checkbox list of all available events. You must have at least one positive and one negative event checked before you can flip.
This lets you curate your own risk pool, opting into only the events you are comfortable with, or leaving everything checked to get the full range of outcomes.
Rank ups and achievement unlocks are checked and can fire while you are playing.

Slot machine. Unlocked at rank 30.
Spin the reels and match symbols to win multiples of your bet.

Like the other minigames, you choose which item to bet and how much. Payouts depend on how many reels match and which symbols line up, with higher matches paying out larger multiples.
The symbols, payout multipliers, reel count, sounds, and bet limits are all configurable in slots.table.
A configurable confirmation prompt can be set to appear when your bet reaches a certain threshold, protecting you from accidentally placing a large bet.
Rank ups and achievement unlocks are checked and can fire while you are playing.

Baking slots manager. Unlocked at rank 40.
Manage and configure your baking slots to balance automated and manual cookie production.

There are two types of slots. Auto slots bake cookies passively without any input, scaling with your auto cookie stat.
Manual slots multiply the output of each bake press, scaling with your manual cookie stat.
You can purchase additional slots of either type, and toggle individual auto slots on or off to fine-tune how much of your production is automated versus manual.
Both submenus are locked behind a rank requirement, defaulting to rank 40. The slot manager menu itself is always accessible so you can see what is coming, but you cannot enter either submenu until you reach the required rank.

Baker info.
View a live snapshot of your current baker state. Press the Baker Info button in the main game interface to open it directly.

The baker info screen is divided into three sections.

Production.

Auto cookies: how many cookies your bakery produces automatically per bake cycle.
Manual cookies: how many cookies you produce per bake button press.
Baking speed reduction: the total number of milliseconds shaved off your bake interval through upgrades.
Bake interval: the actual time in milliseconds between each automatic bake cycle after your speed reduction is applied.

Slots.

Auto slots: the number of auto baking slots you currently own.
Manual slots: the number of manual baking slots you currently own.

Progress.

Current rank: your current rank number.
Current cookies: how many cookies you have right now.
Cookies needed for next rank: how many cookies are required to reach the next rank.
Current coins: how many coins you currently have.
Prestige level: how many times you have prestiged. Starts at 0 on a fresh save.
Prestige reward condition: describes what you need to complete to receive a reward on your next prestige, based on the require_all setting in quests.table. Mode 1 means the reward fires if any quest happens to be complete. Mode 2 means at least one quest must be complete. Mode 3 means all quests must be complete, and shows the total count.
Quests completed: how many of your active quests are currently complete.

Statistics menu.
Access the baker statistics screen and achievement statistics screen from the Statistics button in the main game interface.

Baker statistics.
View a summary of everything you have done in your current playthrough. Open it from the Statistics menu.

The statistics screen is divided into seven sections.

Baking.

Auto bakes performed: counts every time the auto baker fires a cycle.
Manual bakes performed: counts every time you press the bake button manually.

Baking slots manager.

Auto slots purchased: counts every auto baking slot you have ever bought, regardless of whether it is enabled or idle.
Auto slots enabled: counts every time an auto slot has been automated, whether individually or through the automate all option.
Auto slots idle: shows how many auto slots you currently own but have not enabled.
Unlike the other stats, this one is not saved separately because it can go up and down at any time.
It is always calculated fresh from the current state of your bakery, similar to how a stock price reflects the current value rather than a running total.
Manual slots purchased: counts every manual baking slot you have ever bought.

Economy.

Coins earned: counts the total coins you have received across all sources, including selling cookies and rank rewards.
Bundle upgrades purchased: counts every bundle shop transaction.
Single upgrades purchased: counts every singles shop transaction, whether you buy one item or a full bulk purchase.

Events.

Events fired: counts every baker event and flipper event that successfully triggered and applied its effect.
Flipper flips: counts every time you flip a cooky in the cooky flipper minigame.

Blackjack.

Hands played: counts every round where a bet was placed and cards were dealt.
Wins: counts rounds you won, including naturals, hitting 21, and dealer busts.
Losses: counts rounds where you busted, or the dealer beat you.
Pushes: counts rounds that ended in a tie, where your original bet was returned.

Slot machine.

Total spins: counts every spin of the reels.
Wins: counts spins where the payout multiplier was greater than zero, meaning you got at least something back.
Losses: counts spins where the payout multiplier was zero, meaning you lost your bet entirely.

Quests.

Quests completed: counts the total number of quests you have completed across all prestige cycles.
Rerolls performed: counts every time you have rerolled a quest.

All stats are saved with your game data and persist between sessions.

Achievement statistics.
View your progress toward every achievement grouped by category. Open it from the Statistics menu.
Each category lists complete achievements first, followed by incomplete ones showing your current value against the required threshold. This screen is read only and does not require any input to navigate.

Achievements.
Track your progress and earn recognition for milestones across every part of the game.

There are many achievements spread across all tracked statistics, including baking, baking slots manager, economy, upgrades, bundles, events, the cooky flipper, the slot machine, and blackjack.
Each achievement has a name, a description, and a hint that tells you what you need to do to unlock it.

Achievements are shown in a dedicated menu accessible from the main game interface. The menu is organised into six categories: baking, baking slots manager, economy, events, blackjack, and slot machine.
Each category label shows how many achievements it contains. The main menu shows how many you have unlocked out of the total across all categories.
Opening a category shows how many you have unlocked out of the total for that category, with unlocked ones listed first followed by locked ones.
Pressing enter on an unlocked achievement shows a dialog with its description that you can read at your own pace.
Pressing enter on a locked achievement gives you a cryptic hint about what you need to do to earn it.
When you earn an achievement during play, it is stored in the achievements buffer. If baking mode is off, it shows as a dismissible dialog. If baking mode is on, it is announced non-interruptively so automated play is not interrupted.

Quests.
Complete a set of objectives to unlock the prestige option and start a new run with a permanent bonus.

Quests are automatically assigned at the start of each prestige cycle using a difficulty based system. Each quest has a difficulty from 1 to 10, and the active slots are spread evenly across the difficulty range so you always get a balanced mix from easy to hard.
Required quests occupy their difficulty slot directly, and random quests fill the rest. Only one required quest per stat can be active at a time, so if a stat has multiple required tiers only the current one will appear.
The number of active quests is configurable in quests.table and is capped at 10. The game ships with 75 quests: 14 tiered required rank quests covering ranks 5 through 500, and 60 random quests across 12 trackable stats with 5 difficulty tiers each.
Rerolling replaces only the currently focused quest with a new one of the same difficulty, leaving the rest of your active quests untouched.

To view your quests, press the Quests button in the main game interface. The quests screen shows a list of all active quests sorted from easiest to hardest by difficulty. Completed quests are labelled with complete in the list so you can see your status at a glance without having to open each one.
Arrow to any quest and the detail box updates automatically, showing the description and current progress toward the threshold. If the quest is complete, a complete label is appended to the progress line.
The prestige button is located in the quests screen and its label updates dynamically to reflect your current status. Before reaching the minimum rank it shows unlocked at rank X. Once unlocked, if the quest requirement has not been met it shows no reward available. When the requirement is met it shows just Prestige. Whether you receive a reward depends on your quest completion status and the require_all setting in quests.table.

If you want a different quest, arrow to it in the quests menu and press the reroll button. Rerolling replaces only that quest with a new random one of the same difficulty.
The reroll button does not appear when a required quest is focused.
Rerolling deducts a cost from a configurable stat, and the cost increases each time you reroll using compounding scaling. The reroll count resets at the start of each prestige cycle so costs go back to base.

Prestige.
Reset your progress and earn a permanent bonus that carries into every future run.

The prestige option is available from the quests screen. Once you reach the minimum rank, pressing the prestige button opens a confirmation dialog explaining what resets and what carries over, and whether you will receive a reward based on your current quest completion status.

When you prestige, the following are reset: cookies, coins, rank, all upgrade purchases, baking slots, and baking and economy stats.
The following are kept: your prestige level, all achievements and achievement progress, minigame unlocks, minigame stats, and preferences.

Whether you receive a reward depends on the require_all setting in quests.table. If you have not met the quest requirement, nothing is gained.
Certain prestige levels award a milestone reward, and all other levels fall back to a default reward if one is configured.
After the prestige message you will always receive a second notification telling you what you gained, or letting you know that nothing was gained.
All prestige settings and milestone rewards are fully configurable in prestige.table.

Save slots.

The game supports multiple save slots for separate playthroughs, selected from the main menu. Each slot is completely independent, with its own rank, cookies, coins, upgrades, and settings.
You can start a new game in any slot at any time without affecting your other saves. Save slots are chosen when loading or starting a new game from the main menu.

Keyboard commands

In game.

Letter, F: Announces how many cookies you produce per bake when baking mode is active.
Letter, J: Announces how many cookies you produce per bake when baking mode is inactive.
Letter, C: Announces your current cookie count.
Letter, R: Announces your current rank and how many cookies are needed to reach the next rank.
Letter, M: Announces how many coins you currently have.
Control S: Saves your game progress.
Control L: Reloads all configuration files and your save data without restarting the game. Useful when editing config files.
Escape: Opens a prompt asking whether you want to quit.
Alt plus F4: Exits the game immediately without saving.

Buffers.

Comma: Moves to the previous item in the focused buffer.
Period: Moves to the next item in the focused buffer.
Shift plus Comma: Jumps to the top of the focused buffer.
Shift plus Period: Jumps to the bottom of the focused buffer.
Left Bracket: Navigates to the previous buffer category.
Right Bracket: Navigates to the next buffer category.
Shift plus C: Copies the current buffer message to the clipboard.
Shift plus M: Toggles mute or unmute on the focused buffer.
Shift plus Backslash: Exports all buffer items to log files in the logs folder.

Buffers are categorized message logs that keep track of everything that happens during your game.
Instead of important messages disappearing after being spoken, they are stored in a buffer so you can review them at any time.

There are six buffer categories.

Achievements holds messages for every achievement you earn during play.
Critical holds important notifications like rank ups and game milestones.
Events holds messages from random events and flipper flips.
General holds status updates and informational messages.
Misc holds things like save confirmations and other game actions.
Ranks holds regular rank up announcements.

All of the buffers, except for the all buffer, can be muted independently so they stop being spoken aloud while still logging messages for later review.
You can also export all of the buffer contents to log files in the logs folder at any time.

Forms and menus.

Tab: Moves focus forward through form controls.
Shift plus Tab: Moves focus backward through form controls.
Spacebar: Activates the focused button.
Enter: Activates the focused button or opens a menu.

Configuration files for modders

All of the configuration files are located in the data/config folder, and are split into three subfolders.
Lines starting with a semicolon, hash, or double slash are treated as comments, and ignored by the parser.

Four of the files, ranks.table, slots.table, prestige.table, and quests.table, use section headers in square brackets such as [sounds], [default], [rewards], [settings], and [quests]. These are not cosmetic.
The parser uses them to know which format to expect. Do not remove or rename these headers, or the parser will not be able to read the file correctly.
Each functional header has a warning comment placed directly below it inside the file as a reminder. That comment is cosmetic and can be removed, but the header itself must stay exactly as written.

Five of the remaining files, baker.event, flipper.event, jacks.table, baker.store, and achievements.table, do not use functional section headers. Every line in those files follows the same format throughout.
They do have commented section headers starting with a semicolon for readability, but those are purely cosmetic and can be removed or changed freely.

The sixth file, bundle.store, uses one functional section header, [bundles], which marks where the bundle definitions begin.
Aliases defined above it are always read regardless of position, but bundle lines are only read after the header appears.

baker.event

Location: data/config/events/baker.event

Defines random events that fire during normal gameplay.

Format: event_name:sound:baking_type:polarity:target:min_amount:max_amount:use_percent:chance:description

event_name
The internal name of this event. Used for identification only. Can be anything you like.

sound
The sound file or files to play when this event fires, relative to sounds/misc/. Do not include the folder path.

You can use a random range by writing the number part as (min,max). Example: burn(1,3).ogg picks randomly from burn1, burn2, or burn3.
You can also play multiple sounds by separating them with commas. Example: lose.ogg,burn(1,3).ogg

The alert sound, alert_big for positive events and alert_small for negative events, is always played automatically.
Set to none to play no additional sound.

baking_type
Controls which baking mode can trigger this event.

1 = auto baking only. The message is spoken non-interruptively in the background.
2 = manual baking only. The message appears as a dialog the player must dismiss.
3 = both modes. Delivery method depends on which mode triggered it.

polarity
Declares whether this event is good or bad for the player.

1 = positive. The event gives the player something or helps them.
2 = negative. The event takes something away or hurts them.

target
The stat this event affects when it fires.

cookies    = the player's current cookie count.
coins      = the player's current coin count.
autocooky  = the player's auto cookie production rate.
manulcooky = the player's manual cookie production rate.
cookyspeed = the player's baking speed. Positive events reduce the interval, and negative events increase it.

min_amount and max_amount
The range of values the effect can roll between. A random value between min and max is chosen each time.

Rank operators can be appended to scale the amount with the player's current rank.

*rank multiplies the amount by rank. Effect grows stronger as the player progresses.
/rank divides the amount by rank. Effect grows weaker as the player progresses.
+rank adds rank to the amount. Gentle linear growth.
-rank subtracts rank from the amount. Effect diminishes as the player progresses.

Examples: 40*rank, 10/rank, 5+rank, 100-rank

use_percent
Controls whether the rolled amount is treated as a flat value or a percentage of the player's current stat.

false = the rolled amount is applied directly. A roll of 60 gives or takes exactly 60.
true  = the rolled amount is treated as a percentage of what the player currently has.

A roll of 20 with use_percent true takes 20 percent of the player's current cookies.

chance
The probability of this event firing when it is selected, from 1 to 100.

100 means it always fires when chosen, and 50 means it fires roughly half the time.
Set to 0 to effectively disable this event without removing it from the file.

description
The message spoken to the player when this event fires.

Use %amount% as a placeholder. It is replaced with the rolled value.

For flat events, %amount% shows the exact flat amount gained or lost.
For percentage events, %amount% shows the rolled percentage, for example 10.

Use %actual% as an optional placeholder to show the real computed stat change.

For percentage events, %actual% shows the true amount gained or lost after applying the percentage.

For example, if you have 200 coins and lose 10 percent, %amount% shows 10 and %actual% shows 20.

For flat events, %actual% and %amount% show the same value, so only %amount% is needed.

flipper.event

Location: data/config/events/flipper.event

Defines events triggered by the cooky flipper minigame. Uses the same format as baker.event, except there is no baking_type field since flipper events are always shown as dialogs.
All fields work exactly the same as baker.event. Refer to the baker.event section above for full field descriptions.

Format: event_name:sound:polarity:target:min_amount:max_amount:use_percent:chance:description

baker.store

Location: data/config/stores/baker.store

Defines the singles shop categories and upgrade items.

Menu aliases.

Format: alias=Full Menu Name
Format with rank and description: alias=Full Menu Name|min_rank|Description

Define short aliases for menu names at the top of the file. Use the alias as the first field on item lines to assign items to that category.
Optionally append a pipe followed by a minimum rank, and another pipe followed by a description. Locked categories show their required rank in the shop.

Item format: menu:item_type:target:base_cost:cost_multiplier:amount:min_rank:use_percent:description

menu
The alias of the menu this item belongs to, as defined in the aliases section.

item_type
The display name of this item as it appears in the shop menu.

target
The stat this item increases when purchased.

1 = auto_cooky. Increases the player's automatic cookie production rate.
2 = manual_cooky. Increases how many cookies the player bakes per manual click.
3 = cooky_speed. Increases the player's baking speed by reducing the auto bake interval.

base_cost
The starting price of this item in coins before any purchases have been made.

cost_multiplier
How much the cost increases with each purchase. Uses compounding geometric scaling, meaning each purchase multiplies the previous price rather than adding a fixed amount to the original.

1.25 means each purchase costs 25 percent more than the last, and 1.0 means the price never changes.

Unlike a flat multiplier, a compounding multiplier grows on top of itself every time. The difference becomes dramatic very quickly.

A flat multiplier of 1.25 on a base cost of 100 always charges 125 coins no matter how many times you buy.
A compounding multiplier of 1.25 starts at 100 coins but reaches around 930 coins by purchase 10, and nearly 5 billion coins by purchase 100.

This means even values that look small are dangerous at scale. A multiplier of 1.05 feels gentle at first, but after 300 purchases the price will have grown into the quadrillions.
A multiplier of 1.1 reaches that point even sooner. Players who progress far into the game will buy certain items hundreds of times, so a multiplier that seems fine at purchase 20 will eventually make the item completely unaffordable.

This also affects bundle prices directly. Bundles calculate their cost by summing the current singles shop prices of all their items.
If any item in a bundle has an inflated price due to a high multiplier, that inflation carries over into every bundle containing it.

It is strongly recommended to keep this value at or below 1.02 for any item players are expected to buy many times.
Values above 1.05 should only be used for items with a very low purchase cap or items intentionally meant to become unaffordable after a small number of purchases.

amount
How much of the target stat is gained per purchase. For flat items this is a fixed number. For percentage items this is the percentage value.

For cooky_speed flat items, this is the number of milliseconds the bake interval is reduced by.
Use %item_count in the description as a placeholder and it will be replaced with this value.

min_rank
The minimum rank the player must reach before this item can be purchased. 0 means the item is available from the start.

Locked items still appear in the shop showing their required rank and description.

use_percent
Controls whether the amount is applied as a flat value or a percentage of the player's current stat.

false = the amount is added directly. An amount of 10 gives exactly 10 auto cookies.
true  = the amount is treated as a percentage. An amount of 5 gives 5 percent of the player's current auto cookies.

description
The text shown when the player hovers over this item in the shop. Use %item_count as a placeholder for the amount value.

bundle.store

Location: data/config/stores/bundle.store

Defines the bundle shop categories and bundles.

Category aliases.
Format: alias=Full Category Name|min_rank|Description

Defined at the top of the file, before the [bundles] section header. Works the same as baker.store menu aliases.
The min_rank and description are optional.

Bundle format: menu_alias:name:min_rank:item_type:quantity|item_type:quantity|...:description

menu_alias
The alias of the category this bundle belongs to, as defined in the aliases section.

name
The display name shown in the bundle shop menu. Must be unique across all bundles.

min_rank
The minimum rank required to purchase this bundle. Use 0 for no requirement.

items
A pipe separated list of item_type:quantity pairs. Each item_type must match an item_type from baker.store exactly.

The cost of each item in the bundle is calculated dynamically from its current shop price, so the bundle price scales naturally with your progression.

description
A short description of what this bundle contains, shown to the player in the bundle shop menu.

achievements.table

Location: data/config/tables/achievements.table

Defines all achievements in the game.

Format: id:stat:threshold:name:description:hint

id
The internal identifier for this achievement. Used by the parser only. Must be unique across all entries.

Use lowercase letters and underscores, no spaces. Example: first_spin

stat
The statistic this achievement tracks. Must be one of the following values.

cookies_baked        = total number of cookies baked, both manual and automatic.
coins_earned         = total coins received from all sources.

auto_slots_purchased = total auto baking slots ever bought.
manual_slots_purchased = total manual baking slots ever bought.
auto_slots_enabled   = total auto slots that have been automated, individually or via automate all.
auto_slots_idle      = current number of auto slots owned but not enabled. This is a live value, not a running total, so it can go up and down.

upgrades_purchased   = total singles shop transactions.
bundles_purchased    = total bundle shop transactions.

events_fired         = total baker and flipper events that successfully applied their effect.
flipper_flips        = total cooky flipper flips.

slot_spins           = total slot machine spins.
slot_wins            = total slot machine spins that returned a payout.
slot_losses          = total slot machine spins that returned nothing.

blackjack_hands      = total blackjack rounds played.
blackjack_wins       = total blackjack rounds won.
blackjack_losses     = total blackjack rounds lost.
blackjack_pushes     = total blackjack rounds that ended in a tie.

threshold
The value the stat must reach to unlock this achievement.

name
The display name shown to the player in the achievements menu and spoken when unlocked. This can be anything you like and does not need to match the id.

Example: One Armed Baker

description
The message spoken to the player when they press enter on an unlocked achievement. Use %threshold% as a placeholder and it will be replaced with the threshold value at display time.

This means if you change the threshold, the description updates automatically.

hint
The message spoken to the player when they press enter on a locked achievement. Supports the same %threshold% placeholder as the description field.

Use this to tell the player what they need to do to unlock it.

jacks.table

Location: data/config/tables/jacks.table

Defines all blackjack settings including payouts, bet limits, sounds, and outcome messages.

dealer_stand
The point value at which the dealer stops drawing cards. Standard casino rules use 17.

natural_multiplier
The payout multiplier for a natural blackjack, which is 21 on the first two cards. Standard casino rules use 1.5, meaning a 100 coin bet returns 250 coins total.

This is a flat multiplier applied once to the bet amount. Setting this very high will make blackjack an extremely powerful way to multiply stats and can unbalance the game quickly if bets are large.

win_multiplier
The payout multiplier for a standard win. Standard rules use 2, meaning a 100 coin bet returns 200 coins total.

This is a flat multiplier. Setting it below 1 means the player always loses value even on a win, and setting it very high will make winning hands disproportionately rewarding.

push_multiplier
The payout multiplier for a push or tie. Standard rules use 1, meaning the player gets their original bet back.

This is a flat multiplier. Setting it above 1 rewards ties, and setting it to 0 means the player loses their bet on a tie.

min_bet
The minimum amount of any item a player must bet per round. If the player enters less, the bet is rejected. Set to 1 to allow any positive bet.

max_bet
The maximum amount of any item a player can bet per round. If the player enters more, the bet is clamped to this value. Set to 0 to allow unlimited bets.

confirm_threshold
Format: confirm_threshold=amount:use_percent

Triggers a yes or no confirmation prompt when the bet meets or exceeds the threshold.

Set use_percent to false to treat the amount as a flat value.
Set use_percent to true to treat the amount as a percentage of what the player currently holds.

For example, 25:true prompts when the bet is 25 percent or more of their current stat.

Set the amount to 0 to disable the prompt entirely.

win_sound
Sound to play when the player wins. Relative to sounds/misc/.

Supports random range syntax, for example jackwin(1,4).ogg picks randomly from jackwin1 to jackwin4.

lose_sound
Sound to play when the player busts or loses to the dealer.

player_draw_sound
Sound to play when the player draws a card.

dealer_draw_sound
Sound to play when the dealer draws a card.

Message placeholders.

%bet%    is replaced with the amount the player bet.
%win%    is replaced with the amount won.
%score%  is replaced with the player's final score.
%dealer% is replaced with the dealer's final score.
%item%   is replaced with the name of the item being bet, for example coins or auto cookies.

natural_message
Message spoken when the player hits a natural blackjack.

win_message
Message spoken when the player wins normally.

bust_message
Message spoken when the player busts by going over 21.

dealer_bust_message
Message spoken when the dealer busts.

lose_message
Message spoken when the dealer beats the player.

push_message
Message spoken on a tie.

ranks.table

Location: data/config/tables/ranks.table

Defines rank rewards, milestone unlocks, and the sounds that play when rewards are given.

Sounds section.
Format: min_amount:sound

Defines which sound plays based on the reward amount when a rank up occurs.

The first entry whose min_amount is less than or equal to the reward amount is used.
Order entries from lowest to highest. The last entry covers everything above its minimum.

sound is relative to sounds/misc/.

Default section.
Format: target:min_amount:max_amount:unlock:message

Defines the reward every rank receives automatically. Only one default line is allowed.

Rewards section.
Format: rank:target:min_amount:max_amount:unlock:message

Defines special milestone rewards for specific ranks. Multiple lines with the same rank are all valid, and one is chosen at random when the player reaches that rank.
Milestone rewards fire in addition to the default reward.

target
The stat this reward affects.

cookies    = the player's current cookie count.
coins      = the player's current coin count.
autocooky  = the player's auto cookie production rate.
manulcooky = the player's manual cookie production rate.
cookyspeed = the player's baking speed.

min_amount and max_amount
The range of values the reward can roll between. Supports the same rank operators as baker.event.

unlock
An optional feature to unlock at this rank. Use none for no unlock.

blackjack   = unlocks the blackjack minigame.
flipper     = unlocks the cooky flipper minigame.
slots       = unlocks the slot machine minigame.
slotmanager = unlocks the baking slots manager. Also sets the rank gate for the baking slots manager menu automatically.

message
The text spoken to the player when this reward fires.

Use %rank% as a placeholder for the current rank number.
Use %amount% as a placeholder for the actual reward amount.
Use %name% as a placeholder for the player's name.

slots.table

Location: data/config/tables/slots.table

Defines the slot machine symbols, reel count, bet limits, and payout tiers.

symbols
Format: symbols=name, name, name, ...

A comma separated list of symbol names for the slot machine reels. You must have at least 10 symbols defined.

reels
Format: reels=number

The number of reels the slot machine spins. Must be at least 2. Make sure no payout match value exceeds this number, otherwise that payout can never be triggered.

min_bet
The minimum amount of any item a player must bet per spin. If the player enters less, the bet is rejected. Set to 1 to allow any positive bet.

max_bet
The maximum amount of any item a player can bet per spin. If the player enters more, the bet is silently clamped to this value. Set to 0 to allow unlimited bets.

confirm_threshold
Format: confirm_threshold=amount:use_percent

Triggers a yes or no confirmation prompt when the bet meets or exceeds the threshold.

Set use_percent to false to treat the amount as a flat value.
Set use_percent to true to treat the amount as a percentage of what the player currently holds.

For example, 25:true prompts when the bet is 25 percent or more of their current stat.

Set the amount to 0 to disable the prompt entirely.

Payouts section.
Format: matches:multiplier:sound:message

matches
The number of matching symbols across the reels required to trigger this payout. Use 0 to define the loss outcome. This value should not exceed the number of reels.

multiplier
How much of the bet is returned to the player. 4 means the player wins 4 times their bet. 0.5 means the player wins half their bet, and 0 means the player loses their bet entirely.

This is a flat multiplier applied once to the bet amount. Setting a payout multiplier very high for common match counts will make the slot machine trivially easy to exploit and can rapidly inflate the player's stats.

sound
The sound file to play when this outcome fires, relative to sounds/misc/.

message
The text spoken to the player when this outcome fires.

prestige.table

Location: data/config/tables/prestige.table

Defines the prestige system settings and milestone rewards.

Settings section.

min_rank
The minimum rank the player must reach before prestige becomes available.

sound
The sound file to play when the player prestiges. Relative to sounds/misc/.

message
The message spoken to the player when they prestige. Use %prestige% as a placeholder for the new prestige level.

Default reward section.
Format: target:min_amount:max_amount:message

Defines a fallback reward that fires for any prestige level that does not have a specific milestone entry in the rewards section. Only one default reward line is allowed.
If no default reward is defined, levels without a milestone reward show a nothing was gained message instead.

target
The stat to give. Uses the same stat names as the rewards section.

min_amount and max_amount
The minimum and maximum amounts to give. A random value between them is chosen each time.

Both support the same expression syntax as ranks.table, so values like 50*rank and 100*rank are valid and scale with the current prestige level.

message
The message spoken when the default reward fires. Use %amount% as a placeholder for the amount given and %level% for the current prestige level.

Rewards section.
Format: prestige_level:target:amount|target:amount:use_percent:message

Defines one time bonus rewards given to the player at the start of their new run when they reach a specific prestige level.
Multiple reward lines can exist for different prestige levels. Each reward line can give multiple stats at once by separating them with a pipe character.

prestige_level
The prestige level that triggers this reward. Each reward only fires once, when the player first reaches that level.

target:amount|target:amount
One or more stat and amount pairs separated by a pipe. Each pair is a stat name followed by a colon and the amount to give.

You can chain as many pairs as you like on one line.

cookies    = the player's current cookie count.
coins      = the player's current coin count.
autocooky  = the player's auto cookie production rate.
manulcooky = the player's manual cookie production rate.
cookyspeed = the player's baking speed.

use_percent
Controls whether the amounts are applied as flat values or percentages of what the player had when they prestiged. This applies to all items in the reward line.

false = amounts are given directly. An amount of 10 gives exactly 10 of the target stat.
true  = amounts are treated as a percentage of the player's final stat value at the moment they prestiged.

An amount of 5 gives 5 percent of whatever they had. Keep percentage values low, as even a small percentage of a late-game stat can be a significant head start.

message
The message spoken when this reward is given. Use %amount% as a placeholder and it will be replaced with a summary of all items given.

Use %level% as a placeholder and it will be replaced with the current prestige level number.

quests.table

Location: data/config/tables/quests.table

Defines all available quests and the reroll system settings.

Settings section.

max_active
The maximum number of quests the player can have active at once. Required quests always fill first, and random ones fill the remaining slots.

require_all
Controls when the player receives a prestige reward. Prestige is always available once the minimum rank is met regardless of this setting.

1 = rewards fire only if any quest happens to be complete. Prestiging with no quests done shows nothing was gained.
2 = at least one quest must be complete to receive a reward. Prestiging without completing any quest shows nothing was gained.
3 = all quests must be complete to receive a reward. Prestiging without completing all quests shows nothing was gained.

Reroll settings.

reroll_target
The stat deducted when the player rerolls their random quests.

cookies    = deducts from the player's current cookie count.
coins      = deducts from the player's current coin count.
autocooky  = deducts from the player's auto cookie production rate.
manulcooky = deducts from the player's manual cookie production rate.
cookyspeed = deducts from the player's baking speed.

reroll_base_cost
The base cost of the first reroll per prestige cycle.

reroll_multiplier
How much the reroll cost increases with each reroll. Uses compounding scaling, the same as the singles shop.

Keep this value low. Setting it too high will make rerolling unaffordable very quickly.

reroll_sound
The sound file to play when the player rerolls. Relative to sounds/misc/.

reroll_message
The message spoken after a successful reroll. Use %cost% as a placeholder for the amount deducted.

Quests section.
Format: id:name:stat:threshold:use_percent:required:advance:difficulty:description

id
The internal identifier for this quest. Must be unique across all entries. Use lowercase letters and underscores, no spaces. Example: bake_million

name
The display name shown in the quest list in the quests menu.

stat
The statistic this quest tracks. Uses the same stat names as achievements.table. Must be one of the following values.

cookies_baked          = total cookies baked, both manual and automatic.
coins_earned           = total coins received from all sources.

auto_slots_purchased   = total auto baking slots ever bought.
manual_slots_purchased = total manual baking slots ever bought.
auto_slots_enabled     = total auto slots that have been automated.

upgrades_purchased     = total singles shop transactions.
bundles_purchased      = total bundle shop transactions.

events_fired           = total baker and flipper events that applied their effect.
flipper_flips          = total cooky flipper flips.

slot_spins             = total slot machine spins.
slot_wins              = total slot machine wins.

blackjack_hands        = total blackjack rounds played.
blackjack_wins         = total blackjack rounds won.

threshold
The value the stat must reach to complete this quest.

use_percent
Controls how progress is reported in the detail input box when the player focuses this quest.

false = progress is shown as a raw value. For example, 342,500 of 1,000,000.
true  = progress is shown as a percentage. For example, 3.62%.

Useful for quests with very large thresholds where a raw number may be hard to interpret.

required

true means this quest always appears every prestige cycle and occupies its difficulty slot, preventing a random quest of the same difficulty from filling that position.
false means it goes into the random pool.

advance

true means that once this quest is completed, it is permanently retired and replaced by the next tier of the same stat on the next prestige cycle. The player will never see the same quest again after beating it.
false means the quest repeats every prestige cycle regardless of whether it was completed before.

difficulty
A number from 1 to 10 controlling which slot this quest occupies in the active quest list.

It does not directly affect how hard the quest is to complete in practice — that is determined by the threshold. Two quests can share the same difficulty number, and the one with the larger threshold will naturally take longer to finish.

The game spreads active slots evenly across the difficulty range found in the table, so easier quests always appear alongside harder ones.
Required quests occupy their difficulty slot directly. The difficulty range is read dynamically from the table and capped at 10. The max_active setting is also capped at 10.

description
The message shown in the detail input box when the player focuses this quest. You do not need to include progress information in this field.

Below the description the game always appends a line automatically that reads current progress followed by either a raw value out of the threshold or a percentage. If the quest is complete, a period and the word complete are appended on the same line. If it is not complete, nothing extra is added.

The following placeholders are available and will be replaced at display time.

%threshold% = the target value the stat must reach.
%stat%      = the name of the stat being tracked, in readable form.
%progress%  = the player's current stat value, capped at the threshold.
%percent%   = the player's current progress as a percentage of the threshold.

Keep the description focused on what the quest is asking, and let the game handle reporting the progress.

Game conclusion

CookyCraze started as a simple cookie clicker, and has grown into a full-featured idle game with automated production, minigames, achievements, a rank progression system, multiple save slots, and deep modding support.
Every system in the game, from rank rewards to slot payouts to event effects, can be tuned or extended through the provided configuration files.

Whether you are a player looking to understand the game better, or a modder building your own experience on top of it, we hope this document gives you everything you'll need to succeed in the baking industry.
Thanks for playing, and happy baking!
