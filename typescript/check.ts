function check(nums: number[]): boolean {
    let acumulo: number = 0;
    for (let i = 0; i < nums.length - 1; i++)  {
        if (nums[i] > nums[i + 1]) {
            acumulo += 1; 
        };
    };
    if (nums.at(-1) > nums[0]) {
        acumulo += 1;
    };
    if (acumulo > 1) {
        return false;
    };
    return true;
};