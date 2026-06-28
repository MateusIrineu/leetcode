// LEETCODE: TYPESCRIPT 
// EXERCISE: 2618
function checkIfInstanceOf(obj: any, classFunction: any): boolean {
    if ( obj == null || obj == undefined || typeof classFunction !== 'function') {
        return false;
    }

    let classObj: any = Object.getPrototypeOf(obj);
    
    while (classObj !== null) {
        if (classObj === classFunction.prototype) {
            return true;
        };
        classObj = Object.getPrototypeOf(classObj);
    };

    return false;
};
