# Algorithms and Data Structures
This is a repository I made to recreate a bunch of data structures and algorithms in 
bunch of different languages. If you want to reuse this code or build process, go ahead!

I will try to work through some of the basic implementations and theory behind these algorithms in
as much detail as I can here. I used readme2tex to generate the equations and generated a git hook to
update the README whenever the PRECOMPILEDREADME is updated.

## Formal definition of Big O Function

<p align="center"><img alt="$$f(x)\;=\;O(g(x)))$$" src="equations/68565104a214678a5698e749f7700fd6.png" align="middle" width="125.83201619999998pt" height="16.438356pt"/></p>

if there exists a constant <img alt="$\hat{c}$" src="equations/0038bd66465254af4225aa31848b342b.png" align="middle" width="8.579777249999989pt" height="22.831056599999986pt"/> and <img alt="$\hat{x}$" src="equations/f84e86b97e20e45cc17d297dc794b3e8.png" align="middle" width="9.39498779999999pt" height="22.831056599999986pt"/> such that 

<p align="center"><img alt="$$ | f(x) | &lt;= \hat{c} \cdot |g(x)|\;\;\; \forall x &gt; \hat{x} $$" src="equations/ffe4e1521f9951b17335b4e45293bfdd.png" align="middle" width="198.1007028pt" height="16.438356pt"/></p>

The best way to interpret this is to think of <img alt="$\hat{x}$" src="equations/f84e86b97e20e45cc17d297dc794b3e8.png" align="middle" width="9.39498779999999pt" height="22.831056599999986pt"/> as very large value of x. So for all values of <img alt="$x$" src="equations/332cc365a4987aacce0ead01b8bdcc0b.png" align="middle" width="9.39498779999999pt" height="14.15524440000002pt"/>
greater than <img alt="$\hat{x}$" src="equations/f84e86b97e20e45cc17d297dc794b3e8.png" align="middle" width="9.39498779999999pt" height="22.831056599999986pt"/>, the value of the big O version of the function <img alt="$g(x)$" src="equations/ffcbbb391bc04da2d07f7aef493d3e2a.png" align="middle" width="30.61077854999999pt" height="24.65753399999998pt"/> is going to approach <img alt="$f(x)$" src="equations/7997339883ac20f551e7f35efff0a2b9.png" align="middle" width="31.99783454999999pt" height="24.65753399999998pt"/>
for values of <img alt="$x$" src="equations/332cc365a4987aacce0ead01b8bdcc0b.png" align="middle" width="9.39498779999999pt" height="14.15524440000002pt"/> that are very large. What this means practically, is that the largest order term (what is 
left after the <img alt="$O()$" src="equations/57109ebfde23280f2407aa8d652df317.png" align="middle" width="25.78085894999999pt" height="24.65753399999998pt"/> operation) will dominate the function asymtotically.

## Formal definition of <img alt="$\Omega$" src="equations/9432d83304c1eb0dcb05f092d30a767f.png" align="middle" width="11.87217899999999pt" height="22.465723500000017pt"/> Function

<p align="center"><img alt="$$f(x)\;=\;\Omega (g(x)))$$" src="equations/b1079d8c81a7de1a45ee460e374921c5.png" align="middle" width="124.70877045pt" height="16.438356pt"/></p>

if there exists a constant <img alt="$\hat{c}$" src="equations/0038bd66465254af4225aa31848b342b.png" align="middle" width="8.579777249999989pt" height="22.831056599999986pt"/> and <img alt="$\hat{x}$" src="equations/f84e86b97e20e45cc17d297dc794b3e8.png" align="middle" width="9.39498779999999pt" height="22.831056599999986pt"/> such that 

<p align="center"><img alt="$$ | f(x) | &gt;= \hat{c} \cdot |g(x)|\;\;\; \forall x &gt; \hat{x} $$" src="equations/b0770bf8bcca53daed627371acc26869.png" align="middle" width="198.1007028pt" height="16.438356pt"/></p>


## Formal definition of <img alt="$\Theta$" src="equations/b35e24d8a08c0ab01195f2ad2a78fab7.png" align="middle" width="12.785434199999989pt" height="22.465723500000017pt"/> Function

<p align="center"><img alt="$$f(x)\;=\;\Theta (g(x)))$$" src="equations/9360992bbb45b843e94962cbb38be182.png" align="middle" width="125.62202399999998pt" height="16.438356pt"/></p>

if <img alt="$Omega (g(x)) == O(g(x) )$" src="equations/ba71a7855df2a3174a7ed14694426ed5.png" align="middle" width="186.69308789999997pt" height="24.65753399999998pt"/>

This means that in order to prove the exact boundry condition for a given function of <img alt="$g(x)$" src="equations/ffcbbb391bc04da2d07f7aef493d3e2a.png" align="middle" width="30.61077854999999pt" height="24.65753399999998pt"/>, you have
to squash the function between the lower (<img alt="$\Omega()$" src="equations/27c2958fff65a3dfb582496a642a6aa7.png" align="middle" width="24.657613199999986pt" height="24.65753399999998pt"/>) and the upper bounds (O()).
