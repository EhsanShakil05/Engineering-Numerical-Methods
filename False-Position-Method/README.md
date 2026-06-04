# False Position Method (Regula Falsi) in MATLAB

## Objective

To develop a robust MATLAB implementation of the False Position (Regula Falsi) Method for solving nonlinear equations and analyzing convergence behavior.

---

## Problem Statement

Determine the root of the nonlinear equation:

f(x) = x³ − x − 2

using the False Position Method with a convergence tolerance of 1 × 10⁻⁶.

---

## Theory

The False Position Method is an interval-based root-finding technique that combines the reliability of the Bisection Method with linear interpolation.

The root approximation is computed using:

c = [a·f(b) − b·f(a)] / [f(b) − f(a)]

Unlike the Bisection Method, which repeatedly halves the interval, the False Position Method uses function values to estimate the root location more efficiently.

---

## Features

* Automatic interval detection within a user-defined search range
* Sign-change validation before iteration
* Iteration tracking and convergence monitoring
* Error handling when no valid interval is found
* Graphical visualization of the computed root
* Performance comparison with the Bisection Method
* Structured and reusable MATLAB implementation

---

## Key Results

For the equation:

f(x) = x³ − x − 2

* Computed Root: x ≈ 1.521380
* Tolerance: 1 × 10⁻⁶
* Initial Interval: [1.5000, 1.6000]
* Iterations Required: 5

The False Position Method successfully converged to the root while maintaining a valid bracketing interval throughout the computation.

---

## Comparison with Bisection Method

| Method         | Root Obtained | Iterations | Uses Derivative |
| -------------- | ------------- | ---------- | --------------- |
| Bisection      | 1.521380      | 20         | No              |
| False Position | 1.521380      | 5          | No              |

The False Position Method achieved the same root while reducing the iteration count by 75%, demonstrating improved computational efficiency for this problem.

---

## Files Included

* false_position_method.m
* False_Position_Method_Report.pdf
* root_plot.png
* command_window_output.png

---

## Engineering Applications

The False Position Method is commonly applied in:

* Thermodynamic calculations
* Fluid mechanics problems
* Heat transfer analysis
* Structural engineering computations
* Nonlinear engineering system modeling
* Scientific and numerical computing

---

## Future Improvements

* User-defined functions through keyboard input
* Multiple-root detection
* MATLAB GUI implementation
* Automated comparison with additional root-finding methods
* Export of convergence data to Excel

---

## Author

**Ehsan Shakil Ahmad**
Mechanical Engineering Student, NUST

Summer 2026 Numerical Methods Portfolio

