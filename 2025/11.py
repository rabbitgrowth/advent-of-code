from functools import cache

graph = {}

with open('11.txt') as f:
    for line in f:
        node, neighbours = line.split(': ')
        graph[node] = neighbours.split()

@cache
def paths(start, end):
    if start == end:
        return 1
    return sum(
        paths(neighbour, end)
        for neighbour in graph.get(start, [])
    )

print(paths('you', 'out'))
print(
    paths('svr', 'dac') * paths('dac', 'fft') * paths('fft', 'out') +
    paths('svr', 'fft') * paths('fft', 'dac') * paths('dac', 'out')
)
