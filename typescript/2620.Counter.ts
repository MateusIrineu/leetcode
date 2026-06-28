function createCounter(n: number): () => number {
    return function() {
        let counter: number = n;
        n += 1;
        return counter;
    };
};