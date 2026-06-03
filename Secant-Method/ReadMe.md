# Secant Method in MATLAB

## Objective

To determine the root of a nonlinear equation using the Secant Method.

---

## Problem Statement

Given the nonlinear equation:

```text
f(x) = x^3 - x - 2
```

find the root of:

```text
f(x) = 0
```

using the Secant Method.

---

## Theory

The Secant Method is a derivative-free numerical root-finding technique that uses two previous approximations to estimate the derivative of a function.

The iterative formula is:

```text
x(n+1) = x(n) - [f(x(n)) × (x(n) - x(n-1))] /
                  [f(x(n)) - f(x(n-1))]
```

Unlike the Newton-Raphson Method, the Secant Method does not require analytical evaluation of the derivative.

---

## Features

* User-defined initial guesses
* Derivative-free root finding
* Iteration tracking
* Convergence monitoring
* Numerical stability check
* Convergence visualization
* Root verification through graphical plotting
* Robustness testing with multiple starting values

---

## Key Results

| Parameter           | Value         |
| ------------------- | ------------- |
| Function            | `x^3 - x - 2` |
| Initial Guesses     | `(1, 2)`      |
| Root Obtained       | `1.521380`    |
| Tolerance           | `1e-6`        |
| Iterations Required | `7`           |

---

## Method Comparison

| Method         | Root     | Iterations | Derivative Needed |
| -------------- | -------- | ---------- | ----------------- |
| Bisection      | 1.521380 | 20         | No                |
| Newton-Raphson | 1.521380 | 3          | Yes               |
| Secant         | 1.521380 | 7          | No                |

### Observations

* Faster than the Bisection Method
* Slower than the Newton-Raphson Method
* Does not require derivative evaluation
* Provides an excellent balance between efficiency and simplicity

---

## Engineering Applications

* Engineering design optimization
* Fluid mechanics calculations
* Thermodynamic property estimation
* Heat transfer analysis
* Structural engineering computations
* Numerical simulation and modeling

---

## Files

```text
Secant-Method
│
├── secant_method.m
├── Secant_Method_Report.pdf
├── iteration_convergence.png
├── root_plot.png
└── output.png
```

---

## Example Output

```text
Enter Initial Guess 1: 1
Enter Initial Guess 2: 2

Iterations    x
1             1.33333333
2             1.46268657
3             1.53116943
4             1.52092642
5             1.52137632
6             1.52137971
7             1.52137971

Iterations = 7
Root = 1.521380
```

---

## Author

**Ehsan Shakil Ahmad**

Mechanical Engineering Student

Developed using MATLAB Online

June 2026
