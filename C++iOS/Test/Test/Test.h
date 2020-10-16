//
//  Test.h
//  Test
//
//  Created by LayaBox on 2020/10/16.
//

#ifndef Test_h
#define Test_h
#include <chrono>
#include <iostream>
#include <cstdlib>
using namespace std;
using namespace chrono;

class Matrix44Array {
public:
  double m[16];
  void randomSetUp() {
      m[0 + 0 * 4] = (rand() % 100 + 1.0f);
      m[0 + 1 * 4] = (rand() % 100 + 1.0f);
      m[0 + 2 * 4] = (rand() % 100 + 1.0f);
      m[0 + 3 * 4] = (rand() % 100 + 1.0f);
      m[1 + 0 * 4] = (rand() % 100 + 1.0f);
      m[1 + 1 * 4] = (rand() % 100 + 1.0f);
      m[1 + 2 * 4] = (rand() % 100 + 1.0f);
      m[1 + 3 * 4] = (rand() % 100 + 1.0f);
      m[2 + 0 * 4] = (rand() % 100 + 1.0f);
      m[2 + 1 * 4] = (rand() % 100 + 1.0f);
      m[2 + 2 * 4] = (rand() % 100 + 1.0f);
      m[2 + 3 * 4] = (rand() % 100 + 1.0f);
      m[3 + 0 * 4] = (rand() % 100 + 1.0f);
      m[3 + 1 * 4] = (rand() % 100 + 1.0f);
      m[3 + 2 * 4] = (rand() % 100 + 1.0f);
      m[3 + 3 * 4] = (rand() % 100 + 1.0f);
  }

  static void multiplyMatrices44(
      Matrix44Array& lhs, Matrix44Array& rhs, Matrix44Array& out) {
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
};

class Matrix44 {
public:
  double m00, m01, m02, m03;
    double m10, m11, m12, m13;
    double m20, m21, m22, m23;
    double m30, m31, m32, m33;
  void randomSetUp() {
    m00 = (rand() % 100 + 1.0f);
    m01 = (rand() % 100 + 1.0f);
    m02 = (rand() % 100 + 1.0f);
    m03 = (rand() % 100 + 1.0f);
    m10 = (rand() % 100 + 1.0f);
      m11 = (rand() % 100 + 1.0f);
      m12 = (rand() % 100 + 1.0f);
      m13 = (rand() % 100 + 1.0f);
      m20 = (rand() % 100 + 1.0f);
      m21 = (rand() % 100 + 1.0f);
      m22 = (rand() % 100 + 1.0f);
      m23 = (rand() % 100 + 1.0f);
      m30 = (rand() % 100 + 1.0f);
      m31 = (rand() % 100 + 1.0f);
      m32 = (rand() % 100 + 1.0f);
      m33 = (rand() % 100 + 1.0f);
  }

  static void multiplyMatrices44(Matrix44& lhs, Matrix44& rhs, Matrix44& out) {
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
};
void testMatrixArray() {
    auto start = system_clock::now();

    Matrix44Array lhs;
    Matrix44Array rhs;
    Matrix44Array out;

    for (int i = 0; i < 1000000; i++) {
      lhs.randomSetUp();
      rhs.randomSetUp();
      Matrix44Array::multiplyMatrices44(lhs, rhs, out);
    }
    auto duration = duration_cast<milliseconds>(system_clock::now() - start);
    printf("testMatrixArray  %f ms\n",double(duration.count()));
  }

void testMatrixAttribute() {
    auto start = system_clock::now();
    
    Matrix44 lhs;
    Matrix44 rhs;
    Matrix44 out;

  for (int i = 0; i < 1000000; i++) {
    lhs.randomSetUp();
    rhs.randomSetUp();
    Matrix44::multiplyMatrices44(lhs, rhs, out);
  }

    auto duration = duration_cast<milliseconds>(system_clock::now() - start);
  printf("testMatrixAttribute  %f ms\n",double(duration.count()));
}

float ffff() {
  //return r.nextDouble() * 100 + r.nextDouble() * 100;
    return (rand() % 100 + 1.0f) + (rand() % 100 + 1.0f);
}

void testFunction() {
    auto start = system_clock::now();
  for (auto i = 0; i < 100000000; i++) {
    ffff();
  }
    auto duration = duration_cast<milliseconds>(system_clock::now() - start);
    printf("testFunction %f ms\n",double(duration.count()));
}
void testLoop()
{
    auto start = system_clock::now();
    int element = 0;
    int iteration = 0;
    int iterations = 2;
    int innerloop = 0;
    double sum = 0;
    int array_length = 100000000;
    double *array = new double[array_length];

    for (element = 0; element < array_length; element++)
        array[element] = element;
    for (iteration = 0; iteration < iterations; iteration++)
        for (innerloop = 0; innerloop < 1000000000; innerloop++)
            sum += array[(iteration + innerloop) % array_length];
    
    auto duration = duration_cast<milliseconds>(system_clock::now() - start);
    
    printf("testLoop %f ms\n",double(duration.count()));
        
    
    /*auto duration = duration_cast<microseconds>(system_clock::now() - start);
    std::cout <<  "花费了"
         << double(duration.count()) * microseconds::period::num / microseconds::period::den
         << "秒" << std::endl;
    */
    delete [] array;
    array = NULL;
    //return 0;
}
#endif /* Test_h */
