type Fn = (n: number, i: number) => any

function filter(arr: number[], fn: Fn): number[] {
    let new_arr: Array<number> = [];
    for (let i = 0; i < arr.length; i++) {
        if (fn(arr[i], i)) {
            new_arr.push(arr[i]);
        }
    };
    return new_arr;
};