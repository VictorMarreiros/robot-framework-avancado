def anos_em_segundos(anos):
    idade_segundos = int(anos) * 365 * 24 * 60 * 60
    print(f"Você viveu mais de {idade_segundos} segundos")

    return idade_segundos

def anos_em_horas(anos):
    idade_horas = int(anos) * 365 * 24
    print(f"Você viveu mais de {idade_horas} horas")   

    return idade_horas

def anos_em_dias(anos):
    idade_dias = int(anos) * 365
    print(f"Você viveu mais de {idade_dias} dias")    

    return idade_dias