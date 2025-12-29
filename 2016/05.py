import hashlib
import itertools

with open('05.txt', 'rb') as f:
    ID = f.read().strip()

password1 = []
password2 = [None] * 8

for i in itertools.count():
    hsh = hashlib.md5(ID + bytes(str(i), encoding='ascii')).hexdigest()
    if hsh.startswith('00000'):
        if len(password1) < 8:
            password1.append(hsh[5])
        if hsh[5] in '01234567':
            pos = int(hsh[5])
            if password2[pos] is None:
                password2[pos] = hsh[6]
        if None not in password2:
            break

print(''.join(password1))
print(''.join(password2))
