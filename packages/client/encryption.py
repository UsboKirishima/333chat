import sys

#This part of code is made by https://github.com/LunarStone292/
#All right reserved to @LunarStone292
#Sincerely, UsboKirishima

def encrypt_file(message):
    try:
        key = 2
        x = 0
        l = 0
        astring2 = 0
        string = ""
        while(l != len(message)):
            try:
                while(x != len(message)):
                    astring2 = ord(message[x])
                    if(x % 2 == 0):
                        astring2 += key
                    else:
                        astring2 -= key
                    string += chr(astring2)
                    x += 1
            except:
                pass
            l += 1
        return string
    except:
        return 1


print(encrypt_file(sys.argv[1]))