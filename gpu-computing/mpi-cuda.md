---
title: Mpi Cuda
date: '2019-01-31T22:03:56.000Z'
draft: false
project: Oscar
section: GPU Computing
weight: 0
icon: check
---

# Mixing MPI and CUDA

## Combining CUDA and MPI

Mixing MPI \(C\) and CUDA \(C++\) code requires some care during linking because of differences between the C and C++ calling conventions and runtimes. One option is to compile and link all source files with a C++ compiler, which will enforce additional restrictions on C code. Alternatively, if you wish to compile your MPI/C code with a C compiler and call CUDA kernels from within an MPI task, you can wrap the appropriate CUDA-compiled functions with the `extern` keyword, as in the following example.

These two source files can be compiled and linked with both a C and C++ compiler into a single executable on Oscar using:

```text
     module load mpi cuda
     mpicc -c main.c -o main.o
     nvcc -c multiply.cu -o multiply.o
     mpicc main.o multiply.o -lcudart
```

The CUDA/C++ compiler `nvcc` is used only to compile the CUDA source file, and the MPI C compiler `mpicc` is used to compile the C code and to perform the linking.  / _multiply.cu_ /

## include 

## include 

**global** void **multiply** \(const float _a, float_ b\) { const int i = threadIdx.x + blockIdx.x  _blockDim.x; b\[i\]_ = a\[i\]; }

extern "C" void launch\_multiply\(const float _a, const_ b\) { / _... load CPU data into GPU buffers a\_gpu and b\_gpu_ /

```text
 __multiply__ <<< ...block configuration... >>> (a_gpu, b_gpu);

 safecall(cudaThreadSynchronize());
 safecall(cudaGetLastError());

 /* ... transfer data from GPU to CPU */
```

Note the use of `extern "C"` around the function `launch_multiply`, which instructs the C++ compiler \(`nvcc` in this case\) to make that function callable from the C runtime. The following C code shows how the function could be called from an MPI task. 

/ _main.c_ /

## include 

void launch\_multiply\(const float _a, float_ b\);

int main \(int argc, char \*\*argv\) { int rank, nprocs; MPI\_Init \(&argc, &argv\); MPI\_Comm\_rank \(MPI\_COMM\_WORLD, &rank\); MPI\_Comm\_size \(MPI\_COMM\_WORLD, &nprocs\);

```text
 /* ... prepare arrays a and b */

 launch_multiply (a, b);

 MPI_Finalize();
    return 1;
```

} 

