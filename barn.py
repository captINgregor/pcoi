"""
ID: laochit1
LANG: PYTHON3
TASK: barn1
"""
fin = open('barn1.in', 'r')
fout = open('barn1.out', 'w')
m, s, c = map(int, fin.readline().strip().split())
gaming = list(map(int, fin.read().strip().split('\n')))
gaming = sorted(gaming)
b = []
sume = gaming[c - 1] - gaming[0] + 1
for i in range(0, c - 1):
    b.append(gaming[i + 1] - gaming[i] - 1)

a = []
b = sorted(b, reverse=True)
for i in b:
    if i != 0:
        a.append(i)
for i in range(m - 1):
    try:
        sume -= a[i]
    except IndexError:
        fout.write(str(sume) + "\n")
        quit()

fout.write(str(sume) + "\n")
