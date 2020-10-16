class Matrix44 {
    //num m00, m01, m02, m03;
    //num m10, m11, m12, m13;
    //num m20, m21, m22, m23;
    //num m30, m31, m32, m33;
    randomSetUp() {
        this.m00 = Math.random() * 100;
        this.m01 = Math.random() * 100;
        this.m02 = Math.random() * 100;
        this.m03 = Math.random() * 100;
        this.m10 = Math.random() * 100;
        this.m11 = Math.random() * 100;
        this.m12 = Math.random() * 100;
        this.m13 = Math.random() * 100;
        this.m20 = Math.random() * 100;
        this.m21 = Math.random() * 100;
        this.m22 = Math.random() * 100;
        this.m23 = Math.random() * 100;
        this.m30 = Math.random() * 100;
        this.m31 = Math.random() * 100;
        this.m32 = Math.random() * 100;
        this.m33 = Math.random() * 100;
    }

    static multiplyMatrices44(lhs, rhs, out) {
        out.m00 = lhs.m00 * rhs.m00 +
            lhs.m01 * rhs.m10 +
            lhs.m02 * rhs.m20 +
            lhs.m03 * rhs.m30;
        out.m01 = lhs.m00 * rhs.m01 +
            lhs.m01 * rhs.m11 +
            lhs.m02 * rhs.m21 +
            lhs.m03 * rhs.m31;
        out.m02 = lhs.m00 * rhs.m02 +
            lhs.m01 * rhs.m12 +
            lhs.m02 * rhs.m22 +
            lhs.m03 * rhs.m32;
        out.m03 = lhs.m00 * rhs.m03 +
            lhs.m01 * rhs.m13 +
            lhs.m02 * rhs.m23 +
            lhs.m03 * rhs.m33;

        out.m10 = lhs.m10 * rhs.m00 +
            lhs.m11 * rhs.m10 +
            lhs.m12 * rhs.m20 +
            lhs.m13 * rhs.m30;
        out.m11 = lhs.m10 * rhs.m01 +
            lhs.m11 * rhs.m11 +
            lhs.m12 * rhs.m21 +
            lhs.m13 * rhs.m31;
        out.m12 = lhs.m10 * rhs.m02 +
            lhs.m11 * rhs.m12 +
            lhs.m12 * rhs.m22 +
            lhs.m13 * rhs.m32;
        out.m13 = lhs.m10 * rhs.m03 +
            lhs.m11 * rhs.m13 +
            lhs.m12 * rhs.m23 +
            lhs.m13 * rhs.m33;

        out.m20 = lhs.m20 * rhs.m00 +
            lhs.m21 * rhs.m10 +
            lhs.m22 * rhs.m20 +
            lhs.m23 * rhs.m30;
        out.m21 = lhs.m20 * rhs.m01 +
            lhs.m21 * rhs.m11 +
            lhs.m22 * rhs.m21 +
            lhs.m23 * rhs.m31;
        out.m22 = lhs.m20 * rhs.m02 +
            lhs.m21 * rhs.m12 +
            lhs.m22 * rhs.m22 +
            lhs.m23 * rhs.m32;
        out.m23 = lhs.m20 * rhs.m03 +
            lhs.m21 * rhs.m13 +
            lhs.m22 * rhs.m23 +
            lhs.m23 * rhs.m33;

        out.m30 = lhs.m30 * rhs.m00 +
            lhs.m31 * rhs.m10 +
            lhs.m32 * rhs.m20 +
            lhs.m33 * rhs.m30;
        out.m31 = lhs.m30 * rhs.m01 +
            lhs.m31 * rhs.m11 +
            lhs.m32 * rhs.m21 +
            lhs.m33 * rhs.m31;
        out.m32 = lhs.m30 * rhs.m02 +
            lhs.m31 * rhs.m12 +
            lhs.m32 * rhs.m22 +
            lhs.m33 * rhs.m32;
        out.m33 = lhs.m30 * rhs.m03 +
            lhs.m31 * rhs.m13 +
            lhs.m32 * rhs.m23 +
            lhs.m33 * rhs.m33;
    }
}

function testMatrix() {
    var now = Date.now();

    var lhs = new Matrix44();
    var rhs = new Matrix44();
    var out = new Matrix44();

    for (var i = 0; i < 10000000; i++) {
        lhs.randomSetUp();
        rhs.randomSetUp();
        Matrix44.multiplyMatrices44(lhs, rhs, out);
    }
    //console.log("testMatrix");
    alert("testMatrix " + (Date.now() - now));
}

function ffff() {
    return Math.random() * 100 + Math.random() * 100;
}

function testFunction() {
    var now = Date.now();
    for (var i = 0; i < 100000000; i++) {
        ffff();
    }
    alert("testFunction " + (Date.now() - now));
}
//testFunction();
//testMatrix();
testLoop();

function testLoop() {
    var now = Date.now();
    var element = 0;
    var iteration = 0;
    var iterations = 2;
    var innerloop = 0;
    var sum = 0.0;
    var array_length = 100000000;
    var array = new Array(array_length);
    //var argc = process.argv.length
    //if (argc > 2)
    //    iterations = process.argv[2];
    //console.log("iterations " + iterations);
    for (element = 0; element < array_length; element++) {
        array[element] = element;
    }
    for (iteration = 0; iteration < iterations; iteration++) {
        for (innerloop = 0; innerloop < 1000000000; innerloop++) {
            sum += array[(iteration + innerloop) % array_length];
        }
    }
    alert(Date.now() - now);
    array = 0
}