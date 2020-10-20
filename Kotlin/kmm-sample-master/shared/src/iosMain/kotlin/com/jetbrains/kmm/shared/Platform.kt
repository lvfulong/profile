package com.jetbrains.kmm.shared

import platform.UIKit.UIDevice
import kotlin.system.*
import kotlin.random.Random
import kotlin.math.*

actual class Platform actual constructor() {
    actual val platform: String = UIDevice.currentDevice.systemName() + " " + UIDevice.currentDevice.systemVersion
    actual fun profile()
   {
       testMatrixArray();
       testMatrixAttribute();
       testLoop();
       testFunction();
       //return 7;
    }
}
class Matrix44Array {
	var m = DoubleArray(16);

   fun randomSetUp() {
    this.m[0 + 0 * 4] = Random.nextDouble(100.0);
    this.m[0 + 1 * 4] = Random.nextDouble(100.0);
    this.m[0 + 2 * 4] = Random.nextDouble(100.0);
    this.m[0 + 3 * 4] = Random.nextDouble(100.0);
    this.m[1 + 0 * 4] = Random.nextDouble(100.0);
    this.m[1 + 1 * 4] = Random.nextDouble(100.0);
    this.m[1 + 2 * 4] = Random.nextDouble(100.0);
    this.m[1 + 3 * 4] = Random.nextDouble(100.0);
    this.m[2 + 0 * 4] = Random.nextDouble(100.0);
    this.m[2 + 1 * 4] = Random.nextDouble(100.0);
    this.m[2 + 2 * 4] = Random.nextDouble(100.0);
    this.m[2 + 3 * 4] = Random.nextDouble(100.0);
    this.m[3 + 0 * 4] = Random.nextDouble(100.0);
    this.m[3 + 1 * 4] = Random.nextDouble(100.0);
    this.m[3 + 2 * 4] = Random.nextDouble(100.0);
    this.m[3 + 3 * 4] = Random.nextDouble(100.0);
  }
companion object {
  fun multiplyMatrices44(lhs:Matrix44Array,rhs:Matrix44Array,out:Matrix44Array){
    out.m[0 + 0 * 4] = lhs.m[0 + 0 * 4] * rhs.m[0 + 0 * 4] +
        lhs.m[0 + 1 * 4] * rhs.m[1 + 0 * 4] +
        lhs.m[0 + 2 * 4] * rhs.m[2 + 0 * 4] +
        lhs.m[0 + 3 * 4] * rhs.m[3 + 0 * 4];
    out.m[0 + 1 * 4] = lhs.m[0 + 0 * 4] * rhs.m[0 + 1 * 4] +
        lhs.m[0 + 1 * 4] * rhs.m[1 + 1 * 4] +
        lhs.m[0 + 2 * 4] * rhs.m[2 + 1 * 4] +
        lhs.m[0 + 3 * 4] * rhs.m[3 + 1 * 4];
    out.m[0 + 2 * 4] = lhs.m[0 + 0 * 4] * rhs.m[0 + 2 * 4] +
        lhs.m[0 + 1 * 4] * rhs.m[1 + 2 * 4] +
        lhs.m[0 + 2 * 4] * rhs.m[2 + 2 * 4] +
        lhs.m[0 + 3 * 4] * rhs.m[3 + 2 * 4];
    out.m[0 + 3 * 4] = lhs.m[0 + 0 * 4] * rhs.m[0 + 3 * 4] +
        lhs.m[0 + 1 * 4] * rhs.m[1 + 3 * 4] +
        lhs.m[0 + 2 * 4] * rhs.m[2 + 3 * 4] +
        lhs.m[0 + 3 * 4] * rhs.m[3 + 3 * 4];

    out.m[1 + 0 * 4] = lhs.m[1 + 0 * 4] * rhs.m[0 + 0 * 4] +
        lhs.m[1 + 1 * 4] * rhs.m[1 + 0 * 4] +
        lhs.m[1 + 2 * 4] * rhs.m[2 + 0 * 4] +
        lhs.m[1 + 3 * 4] * rhs.m[3 + 0 * 4];
    out.m[1 + 1 * 4] = lhs.m[1 + 0 * 4] * rhs.m[0 + 1 * 4] +
        lhs.m[1 + 1 * 4] * rhs.m[1 + 1 * 4] +
        lhs.m[1 + 2 * 4] * rhs.m[2 + 1 * 4] +
        lhs.m[1 + 3 * 4] * rhs.m[3 + 1 * 4];
    out.m[1 + 2 * 4] = lhs.m[1 + 0 * 4] * rhs.m[0 + 2 * 4] +
        lhs.m[1 + 1 * 4] * rhs.m[1 + 2 * 4] +
        lhs.m[1 + 2 * 4] * rhs.m[2 + 2 * 4] +
        lhs.m[1 + 3 * 4] * rhs.m[3 + 2 * 4];
    out.m[1 + 3 * 4] = lhs.m[1 + 0 * 4] * rhs.m[0 + 3 * 4] +
        lhs.m[1 + 1 * 4] * rhs.m[1 + 3 * 4] +
        lhs.m[1 + 2 * 4] * rhs.m[2 + 3 * 4] +
        lhs.m[1 + 3 * 4] * rhs.m[3 + 3 * 4];

    out.m[2 + 0 * 4] = lhs.m[2 + 0 * 4] * rhs.m[0 + 0 * 4] +
        lhs.m[2 + 1 * 4] * rhs.m[1 + 0 * 4] +
        lhs.m[2 + 2 * 4] * rhs.m[2 + 0 * 4] +
        lhs.m[2 + 3 * 4] * rhs.m[3 + 0 * 4];
    out.m[2 + 1 * 4] = lhs.m[2 + 0 * 4] * rhs.m[0 + 1 * 4] +
        lhs.m[2 + 1 * 4] * rhs.m[1 + 1 * 4] +
        lhs.m[2 + 2 * 4] * rhs.m[2 + 1 * 4] +
        lhs.m[2 + 3 * 4] * rhs.m[3 + 1 * 4];
    out.m[2 + 2 * 4] = lhs.m[2 + 0 * 4] * rhs.m[0 + 2 * 4] +
        lhs.m[2 + 1 * 4] * rhs.m[1 + 2 * 4] +
        lhs.m[2 + 2 * 4] * rhs.m[2 + 2 * 4] +
        lhs.m[2 + 3 * 4] * rhs.m[3 + 2 * 4];
    out.m[2 + 3 * 4] = lhs.m[2 + 0 * 4] * rhs.m[0 + 3 * 4] +
        lhs.m[2 + 1 * 4] * rhs.m[1 + 3 * 4] +
        lhs.m[2 + 2 * 4] * rhs.m[2 + 3 * 4] +
        lhs.m[2 + 3 * 4] * rhs.m[3 + 3 * 4];

    out.m[3 + 0 * 4] = lhs.m[3 + 0 * 4] * rhs.m[0 + 0 * 4] +
        lhs.m[3 + 1 * 4] * rhs.m[1 + 0 * 4] +
        lhs.m[3 + 2 * 4] * rhs.m[2 + 0 * 4] +
        lhs.m[3 + 3 * 4] * rhs.m[3 + 0 * 4];
    out.m[3 + 1 * 4] = lhs.m[3 + 0 * 4] * rhs.m[0 + 1 * 4] +
        lhs.m[3 + 1 * 4] * rhs.m[1 + 1 * 4] +
        lhs.m[3 + 2 * 4] * rhs.m[2 + 1 * 4] +
        lhs.m[3 + 3 * 4] * rhs.m[3 + 1 * 4];
    out.m[3 + 2 * 4] = lhs.m[3 + 0 * 4] * rhs.m[0 + 2 * 4] +
        lhs.m[3 + 1 * 4] * rhs.m[1 + 2 * 4] +
        lhs.m[3 + 2 * 4] * rhs.m[2 + 2 * 4] +
        lhs.m[3 + 3 * 4] * rhs.m[3 + 2 * 4];
    out.m[3 + 3 * 4] = lhs.m[3 + 0 * 4] * rhs.m[0 + 3 * 4] +
        lhs.m[3 + 1 * 4] * rhs.m[1 + 3 * 4] +
        lhs.m[3 + 2 * 4] * rhs.m[2 + 3 * 4] +
        lhs.m[3 + 3 * 4] * rhs.m[3 + 3 * 4];
  }
}
}

fun testMatrixArray() {
    var now = getTimeMillis();
  
    var lhs = Matrix44Array();
    var rhs = Matrix44Array();
    var out = Matrix44Array();

    for ( i in 0 until 1000000) {
      lhs.randomSetUp();
      rhs.randomSetUp();
      Matrix44Array.Companion.multiplyMatrices44(lhs, rhs, out);
    }
	println("testMatrixArray " + (getTimeMillis() - now));
  }

class Matrix44 {
    var m00:Double = 0.0;
    var m01:Double = 0.0;
    var m02:Double = 0.0;
    var m03:Double = 0.0;
    var m10:Double = 0.0;
    var m11:Double = 0.0;
    var m12:Double = 0.0;
    var m13:Double = 0.0;
    var m20:Double = 0.0;
    var m21:Double = 0.0;
    var m22:Double = 0.0;
    var m23:Double = 0.0;
    var m30:Double = 0.0;
    var m31:Double = 0.0;
    var m32:Double = 0.0;
    var m33:Double = 0.0;
    fun randomSetUp() {
        this.m00 = Random.nextDouble(100.0);
        this.m01 = Random.nextDouble(100.0);
        this.m02 = Random.nextDouble(100.0);
        this.m03 = Random.nextDouble(100.0);
        this.m10 = Random.nextDouble(100.0);
        this.m11 = Random.nextDouble(100.0);
        this.m12 = Random.nextDouble(100.0);
        this.m13 = Random.nextDouble(100.0);
        this.m20 = Random.nextDouble(100.0);
        this.m21 = Random.nextDouble(100.0);
        this.m22 = Random.nextDouble(100.0);
        this.m23 = Random.nextDouble(100.0);
        this.m30 = Random.nextDouble(100.0);
        this.m31 = Random.nextDouble(100.0);
        this.m32 = Random.nextDouble(100.0);
        this.m33 = Random.nextDouble(100.0);
    }
    companion object {
    fun multiplyMatrices44(lhs:Matrix44, rhs:Matrix44, out:Matrix44) {
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
}
fun testMatrixAttribute() {
    var now = getTimeMillis();

    var lhs = Matrix44();
    var rhs = Matrix44();
    var out = Matrix44();

    for (i in 0 until 1000000) {
        lhs.randomSetUp();
        rhs.randomSetUp();
        Matrix44.Companion.multiplyMatrices44(lhs, rhs, out);
    }
    println("testMatrixAttribute " + (getTimeMillis() - now));
}


fun ffff(i:Double) {
    var a = i + 1;
    var b = 2.3;
    if (a > b) {
        ++a;
    }
    else {
        b = b + 1;
    }
    if (a == b) {
        b = b + 1;
    }
    var c = a * b + a / b -  a.pow(2.0);
}
fun testFunction() {
    val now = getTimeMillis();
    for ( i in 0 until 10000000000) {
        ffff(i.toDouble());
    }
    println("testFunction " + (getTimeMillis() - now));
}

fun testLoop() {
    val now = getTimeMillis();
    val element = 0;
    val iteration = 0;
    val iterations = 2;
    val innerloop = 0;
    var sum = 0.0;
    val array_length = 100000000;
    var array = DoubleArray(array_length);
    for (element in 0 until array_length) {
        array[element] = element.toDouble();
    }
    for (iteration in 0 until iterations) {
        for (innerloop in 0 until 1000000000) {
            sum += array[(iteration + innerloop) % array_length];
        }
    }
    println("testLoop " + (getTimeMillis() - now));
    //array = 0
}
