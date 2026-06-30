type F = (x: number) => number;

function compose(functions: F[]): F {

    return function(x) {
    let resultado = x;
        for (let i = functions.length - 1; i >= 0; i--) {
            resultado = functions[i](resultado);
        }
        return resultado
    };
};