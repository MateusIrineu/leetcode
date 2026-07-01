type Counter = {
    increment: () => number,
    decrement: () => number,
    reset: () => number,
}

function createCounter(init: number): Counter {
    let valor: number = init;
    return {
        increment: () => {
            valor++;
            return valor;
        },
        decrement: () => {
            valor--;
            return valor;
        },
        reset: () => {
            valor = init;
            return valor;
        },
    };
};