//
//  ViewController.swift
//  TestSwift
//
//  Created by LayaBox on 2020/10/16.
//

import UIKit
class Matrix44Array {
    var m = [Double](repeating: 0, count: 16);
  func randomSetUp() {
    m[0 + 0 * 4] = 1.0;//Float.random(in: 0..<1) * 100;
    m[0 + 1 * 4] = 2.0;//Float.random(in: 0..<1) * 100;
    m[0 + 2 * 4] = 3.0;//Float.random(in: 0..<1) * 100;
    m[0 + 3 * 4] = 4.0;//Float.random(in: 0..<1) * 100;
    m[1 + 0 * 4] = 5.0;//Float.random(in: 0..<1) * 100;
    m[1 + 1 * 4] = 6.0;//Float.random(in: 0..<1) * 100;
    m[1 + 2 * 4] = 7.0;//Float.random(in: 0..<1) * 100;
    m[1 + 3 * 4] = 8.0;//Float.random(in: 0..<1) * 100;
    m[2 + 0 * 4] = 9.0;//Float.random(in: 0..<1) * 100;
    m[2 + 1 * 4] = 10.0;//Float.random(in: 0..<1) * 100;
    m[2 + 2 * 4] = 11.0;//Float.random(in: 0..<1) * 100;
    m[2 + 3 * 4] = 12.0;//Float.random(in: 0..<1) * 100;
    m[3 + 0 * 4] = 13.0;//Float.random(in: 0..<1) * 100;
    m[3 + 1 * 4] = 14.0;//Float.random(in: 0..<1) * 100;
    m[3 + 2 * 4] = 15.0;//Float.random(in: 0..<1) * 100;
    m[3 + 3 * 4] = 16.0;//Float.random(in: 0..<1) * 100;
  }

  static func multiplyMatrices44(
    lhs:Matrix44Array, rhs:Matrix44Array, out:Matrix44Array) {
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
class Matrix44 {
    var m00:Double = 0.0
    var m01:Double = 0.0
    var m02:Double = 0.0
    var m03:Double = 0.0
    var m10:Double = 0.0
    var m11:Double = 0.0
    var m12:Double = 0.0
    var m13:Double = 0.0
    var m20:Double = 0.0
    var m21:Double = 0.0
    var m22:Double = 0.0
    var m23:Double = 0.0
    var m30:Double = 0.0
    var m31:Double = 0.0
    var m32:Double = 0.0
    var m33:Double = 0.0
    
  func randomSetUp() {
    m00 = 1.0;//Float.random(in: 0..<1) * 100;
    m01 = 2.0;//Float.random(in: 0..<1) * 100;
    m02 = 3.0;//Float.random(in: 0..<1) * 100;
    m03 = 4.0;//Float.random(in: 0..<1) * 100;
    m10 = 5.0;//Float.random(in: 0..<1) * 100;
    m11 = 6.0;//Float.random(in: 0..<1) * 100;
    m12 = 7.0;//Float.random(in: 0..<1) * 100;
    m13 = 8.0;//Float.random(in: 0..<1) * 100;
    m20 = 9.0;//Float.random(in: 0..<1) * 100;
    m21 = 10.0;//Float.random(in: 0..<1) * 100;
    m22 = 11.0;//Float.random(in: 0..<1) * 100;
    m23 = 12.0;//Float.random(in: 0..<1) * 100;
    m30 = 13.0;//Float.random(in: 0..<1) * 100;
    m31 = 14.0;//Float.random(in: 0..<1) * 100;
    m32 = 15.0;//Float.random(in: 0..<1) * 100;
    m33 = 16.0;//Float.random(in: 0..<1) * 100;
  }

    static func multiplyMatrices44(lhs:Matrix44, rhs:Matrix44, out:Matrix44) {
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

func testMatrixArray() {
    let now = Date().timeIntervalSince1970;

    let lhs = Matrix44Array();
    let rhs = Matrix44Array();
    let out = Matrix44Array();

    for  _ in 0..<1000000 {
      lhs.randomSetUp();
      rhs.randomSetUp();
      Matrix44Array.multiplyMatrices44(lhs: lhs, rhs: rhs, out: out);
    }
    let t = Date().timeIntervalSince1970 - now;
    print("testMatrixArray  \(t*1000)ms");
  
}
func testMatrixAttribute() {
    let now = Date().timeIntervalSince1970;
   
    let lhs = Matrix44();
    let rhs = Matrix44();
    let out = Matrix44();

    for  _ in 0..<1000000 {
      lhs.randomSetUp();
      rhs.randomSetUp();
        Matrix44.multiplyMatrices44(lhs: lhs, rhs: rhs, out: out);
    }

    let t = Date().timeIntervalSince1970 - now;
    print("testMatrixAttribute  \(t*1000)ms");
  }


func ffff(i:Double)->Double {
    //return Float.random(in: 0..<1) * 100 + Float.random(in: 0..<1) * 100;
    var a:Double = i + 1;
    var b:Double = 2.3;
    if (a > b)
    {
        a+=1;
    }
    else{
        b = b + 1;
    }
    if (a == b)
    {
        b = b + 1;
    }
    let c:Double  = a * b + a / b - pow(a, 2);
    return c;
  }

func  testFunction() {

    let now = Date().timeIntervalSince1970;
    for i in 0..<100000000 {
        ffff(i: Double(i));
    }

    let t = Date().timeIntervalSince1970 - now;
    print("testFunction \(t*1000)ms");
  }
func testLoop() {
    let now = Date().timeIntervalSince1970;

    let iterations = 2;
    var sum:Double = 0.0;
    let arrayLength = 100000000;
    var array = [Double](repeating: 0, count: arrayLength);

    for element in 0..<arrayLength {
        array[element] = Double(element);
    }
    for iteration in 0..<iterations{
        for innerloop in 0..<1000000000{
        sum += array[(iteration + innerloop) % arrayLength];
      }
    }
    let t = Date().timeIntervalSince1970 - now;
    print("testLoop \(t*1000)ms");
  }

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        testFunction();
        testLoop();
        testMatrixAttribute();
        testMatrixArray();
    }


}

