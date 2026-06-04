# Fixed Point Iteration Method in MATLAB

A MATLAB implementation of the **Fixed Point Iteration Method** for solving nonlinear equations. This project demonstrates iterative root-finding, convergence analysis, graphical interpretation, robustness testing, and comparison with other classical numerical methods.

---

## Project Objective

Determine the root of the nonlinear equation:

$$
f(x)=x^3-x-2=0
$$

using the Fixed Point Iteration Method.

---

## Mathematical Formulation

The Fixed Point Iteration Method requires the equation to be written in the form:

$$
x=g(x)
$$

For the given equation:

$$
x^3-x-2=0
$$

Rearranging,

$$
x^3=x+2
$$

$$
x=\sqrt[3]{x+2}
$$

Therefore,

$$
g(x)=\sqrt[3]{x+2}
$$

The iterative formula becomes:

$$
x_{n+1}=g(x_n)
$$

or

$$
x_{n+1}=\sqrt[3]{x_n+2}
$$

Iterations continue until:

$$
|x_{n+1}-x_n|<10^{-6}
$$

---

## Convergence Criterion

A Fixed Point Iteration scheme converges only if:

$$
|g'(x)|<1
$$

near the root.

For this project,

$$
g(x)=(x+2)^{1/3}
$$

and

$$
g'(x)=\frac{1}{3(x+2)^{2/3}}
$$

Since the condition is satisfied near the root, the method converges successfully.

---

## MATLAB Features

* Fixed Point Iteration implementation
* User-defined initial guess
* Convergence tolerance control
* Iteration table generation
* Graphical visualization
* Robustness testing
* Convergence and divergence analysis

---

## Sample Output

```text
Enter initial guess: 1.5

Iteration      x
1              1.51829449
2              1.52093526
3              1.52131570
4              1.52137049
5              1.52137838
6              1.52137952
7              1.52137968

Iterations = 7
Root = 1.521380
```

---

## Result

The computed root is:

$$
x \approx 1.521380
$$

which matches the solutions obtained using:

* Bisection Method
* False Position Method
* Newton-Raphson Method
* Secant Method

---

## Robustness Testing

| Initial Guess | Root     | Iterations |
| ------------- | -------- | ---------- |
| 1             | 1.521380 | 8          |
| 2             | 1.521380 | 8          |
| 5             | 1.521380 | 9          |

The method converges to the same root for multiple starting values, demonstrating the stability of the selected iteration function.

---

## Divergence Demonstration

Consider the alternative iteration function:

$$
g(x)=x^3-2
$$

Then,

$$
g'(x)=3x^2
$$

At the root:

$$
|g'(x)|\approx 6.94 > 1
$$

Since the convergence criterion is violated, the iterations diverge.

This demonstrates one of the most important concepts in numerical analysis:

> The choice of the iteration function determines whether Fixed Point Iteration converges or diverges.

---

## Graphical Interpretation

The root corresponds to the intersection of:

$$
y=x
$$

and

$$
y=g(x)
$$

The MATLAB plot visually confirms the numerical solution.

---

## Repository Structure

```text
Fixed-Point-Iteration
│
├── README.md
├── fixed_point_iteration.m
├── Fixed_Point_Report.pdf
├── root_plot.png
└── output.png
```

---

## Applications

* Engineering Design Calculations
* Thermodynamics
* Fluid Mechanics
* Heat Transfer Analysis
* Scientific Computing
* Numerical Analysis
* Nonlinear Equation Solving

---

## Author

**Ehsan Shakil Ahmad**
Mechanical Engineering Student
Numerical Methods Portfolio Project
June 2026
