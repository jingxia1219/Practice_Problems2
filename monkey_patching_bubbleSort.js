Array.prototype.bubbleSort = function() {
    let sorted = false;
    while (sorted === false) {
        sorted = true;
        for (let i = 0; i < this.length - 1; i++) {
            for (let j = i + 1; j < this.length; j++) {
                if (this[j] < this[i]) {
                    console.log("i before", this[i]);
                    console.log("j before", this[j]);
                    let oldI = this[i];
                    let oldJ = this[j];
                    this[i] = oldJ;
                    this[j] = oldI;
                    console.log(this);
                    sorted = false;
                }
            }
        }
    }
    return this;
}

console.log([3, 2, 1, 5, 7].bubbleSort()); // tested and works