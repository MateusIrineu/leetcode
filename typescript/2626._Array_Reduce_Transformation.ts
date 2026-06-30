type Fn = (accum: number, curr: number) => number

function reduce(nums: number[], fn: Fn, init: number): number {
    let accum = init;
    let i: number = 0;
    while (i < nums.length) {
        let curr = nums[i];
        accum = fn(accum, curr);
        i++
    }
    return accum;
};