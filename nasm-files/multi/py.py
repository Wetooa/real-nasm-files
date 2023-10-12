
import math
import pyperclip

underlines = "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
d = []


for i in range(1, 11):
    lis = [(' ' if i != 10 else '') + str(i)]
    for j in range(1, 11):
        lis.append(' ' * (2 - int(math.log10(i * j))) + str(i * j))

    if i == 1:
        tmp = list(lis)
        tmp[0] = ' X'
        d.append(list(tmp))

    d.append(list(lis))
        

print(d)

res = "printl: db "

for i in range(len(d)):
    res += "'" + underlines + "', 10, '"
    res += '│' + '│'.join(d[i]) + "│', 10, "

res += "'" + underlines + "'"
pyperclip.copy(res)
print('\n', res)
    