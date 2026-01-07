import math
import re
from collections import defaultdict

slots = defaultdict(list)
rules = {}

with open('10.txt') as f:
    for line in map(str.strip, f):
        match = re.match(r'value (\d+) goes to (\w+ \d+)', line)
        if match:
            value = int(match[1])
            name = match[2]
            slots[name].append(value)
        else:
            match = re.match(r'(\w+ \d+) gives low to (\w+ \d+) and high to (\w+ \d+)', line)
            name, lo_to, hi_to = match.groups()
            rules[name] = lo_to, hi_to

while (full := [bot for bot, chips in slots.items() if len(chips) == 2]):
    for bot in full:
        chips = slots[bot]
        chips.sort()
        if chips == [17, 61]:
            print(bot.split()[1])
        hi = chips.pop()
        lo = chips.pop()
        lo_to, hi_to = rules[bot]
        slots[lo_to].append(lo)
        slots[hi_to].append(hi)

print(math.prod(slots[f'output {n}'][0] for n in '012'))
