import re

with open('09.txt') as f:
    data = f.read().strip()

def length(data, expand=False):
    if not data:
        return 0
    match = re.match(r'\((\d+)x(\d+)\)', data)
    if match:
        x, y = map(int, match.groups())
        data = data[match.end():]
        head = data[:x]
        tail = data[x:]
        return y * (length(head, expand) if expand else x) + length(tail, expand)
    else:
        return 1 + length(data[1:], expand)

print(length(data))
print(length(data, expand=True))
