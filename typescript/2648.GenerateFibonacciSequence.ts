function* fibGenerator(): Generator<number, any, number> {
    let atual: number = 0;
    let proximo: number = 1;
    while (true) {
        yield atual;
        let atual_temp = atual;
        atual = proximo;
        proximo = proximo + atual_temp;
    };
};