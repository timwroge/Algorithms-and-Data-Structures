# Algorithms and Data Structures
This is a repository I made to recreate a bunch of data structures and algorithms in 
bunch of different languages. If you want to reuse this code or build process, go ahead!

I will try to work through some of the basic implementations and theory behind these algorithms in
as much detail as I can here. I used readme2tex to generate the equations and generated a git hook to
update the README whenever the PRECOMPILEDREADME is updated.

## Formal definition of Big O Function

$$f(x)\;=\;O(g(x)))$$

if there exists a constant $\hat{c}$ and $\hat{x}$ such that 

$$ | f(x) | <= \hat{c} \cdot |g(x)|\;\;\; \forall x > \hat{x} $$

The best way to interpret this is to think of $\hat{x}$ as very large value of x. So for all values of $x$
greater than $\hat{x}$, the value of the big O version of the function $g(x)$ is going to approach $f(x)$
for values of $x$ that are very large. What this means practically, is that the largest order term (what is 
left after the $O()$ operation) will dominate the function asymtotically.

## Formal definition of $\Omega$ Function

$$f(x)\;=\;\Omega (g(x)))$$

if there exists a constant $\hat{c}$ and $\hat{x}$ such that 

$$ | f(x) | >= \hat{c} \cdot |g(x)|\;\;\; \forall x > \hat{x} $$


## Formal definition of $\Theta$ Function

$$f(x)\;=\;\Theta (g(x)))$$

if $Omega (g(x)) == O(g(x) )$

This means that in order to prove the exact boundry condition for a given function of $g(x)$, you have
to squash the function between the lower ($\Omega()$) and the upper bounds (O()).
