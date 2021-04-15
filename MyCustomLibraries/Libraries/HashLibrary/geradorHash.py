import hashlib

def gerar_hash(conteudo):
    hash_conteudo = hashlib.sha256(str.encode(conteudo)).hexdigest()
    print(f'Conteúdo: {conteudo}')
    print(f'Hash gerado: {hash_conteudo}')

    return hash_conteudo

def gerar_hash_arquivo(filename):
    print(f'Arquivo: {filename}')
    h = hashlib.sha256()

    with open(filename, 'rb') as file:
        chunk = 0
        while chunk != b'':
            chunk = file.read(1024)
            h.update(chunk)
        print(f'Hash gerado: {h.hexdigest()}')

        return h.hexdigest()
