# Secant Method in MATLAB

## Objective

To determine the root of a nonlinear equation using the Secant Method.

---

## Problem Statement

Given the nonlinear equation:

[
f(x)=x^3-x-2
]

find the root of:

[
f(x)=0
]

using the Secant Method.

---

## Theory

The Secant Method is a derivative-free numerical root-finding technique that uses two previous approximations to estimate the derivative of a function.

The iterative formula is:

[
x_{n+1}=x_n-\frac{f(x_n)(x_n-x_{n-1})}{f(x_n)-f(x_{n-1})}
]

Unlike the Newton-Raphson Method, the Secant Method does not require analytical evaluation of the derivative.

---

## Features

* User-defined initial guesses
* Derivative-free root finding
* Iteration tracking and convergence monitoring
* Numerical stability check
* Convergence visualization
* Root verification through graphical plotting
* Robustness testing using multiple starting values

---

## Key Results

| Parameter           | Value              |
| ------------------- | ------------------ |
| Function            | (x^3-x-2)          |
| Initial Guesses     | (1,2)              |
| Root Obtained       | 1.521380           |
| Tolerance           | (1 \times 10^{-6}) |
| Iterations Required | 7                  |

---

## Method Comparison

| Method         | Root     | Iterations | Derivative Needed |
| -------------- | -------- | ---------- | ----------------- |
| Bisection      | 1.521380 | 20         | No                |
| Newton-Raphson | 1.521380 | 3          | Yes               |
| Secant         | 1.521380 | 7          | No                |

### Observations

* Faster than the Bisection Method
* Slower than Newton-Raphson
* Does not require derivative evaluation
* Provides a balance between efficiency and simplicity

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

* `secant_method.m`
* `Secant_Method_Report.pdf`
* `iteration_convergence.png`
* `root_plot.png`
* `output.png`

---

## Author

**Ehsan Shakil Ahmad**

Mechanical Engineering Student

Developed using MATLAB Online

June 2026
