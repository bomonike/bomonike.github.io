---
layout: post
date: "2025-03-21"
lastchange: "v001 + new :algorithmic-complexity.md"
file: "algorithmic-complexity"
title: "Algorithmic Complexity"
excerpt: "We use Python programs using Matplotlib, Seaborn, Plotly to illustrate time and memory space complexity of algorithms (aka Big O Asymptotic Notation) such as for sorting"
tags: [Python, analytics]
image:
# feature: pic green matrix hallway 1900x500.jpg
  feature: https://cloud.githubusercontent.com/assets/300046/14623876/07afd066-0593-11e6-933a-2e596511ac67.jpg
  credit:
  creditlink:
comments: true
created: "2025-03-20"
---
<a target="_blank" href="https://bomonike.github.io/algorithmic-complexity"><img align="right" width="100" height="100" alt="algorithmic-complexity.png" src="https://github.com/bomonike/bomonike.github.io/blob/master/images/algorithmic-complexity.png?raw=true" />
<i>{{ page.excerpt }}</i>
{% include l18n.html %}
{% include _toc.html %}

## Why this?

At first I thought "Big-O" was an academic term for theoretical computer scientists to show their superiority.

But I've come to see some usfulness in it for showing how to illustrate the impact of different algorithms. 

   * To determine what is the most efficient <a href="#SortingAlgorithms">sorting algorithm</a> (Bubble Sort vs Quick Sort vs Merge Sort)

   * Best case vs. Worst case

This article shows how to use Python libraries Matplotlib, Seabord, Plotly to plot visualizations of algorithmic complexity (and other concepts).


<a name="Visualizations"></a>

## Visualizations

This diagram (<a target="_blank" href="https://www.youtube.com/watch?v=_fgtTE2bhMg&t=13m26s">from BJC</a>) shows the six basic algorithmic complexity types:

<a target="_blank" href="https://res.cloudinary.com/dcajqrroq/image/upload/v1742535852/algorithmic-complexity-plot_za0vgz.png"><img alt="algorithmic-complexity-plot.png" width="1725" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1742535852/algorithmic-complexity-plot_za0vgz.png" /></a>

(<a target="_blank" href="https://www.youtube.com/watch?v=kPRA0W1kECg" title="by Timo Bingmann (25M views)">some have identified more</a>)

## Summary Table

<table border="1" cellpadding="4" cellspacing="0">
<tr valign="bottom" align="left"><th>Notation</th><th>Name</th><th>Usage</th></tr>

<tr valign="top"><td> O(1) </td><td> Constant over all inputs
</td><td> Lookups after Memoization
</td><td> - </td></tr>

<tr valign="top"><td> O(N) </td><td> Linear
</td><td> Recalculate each item
</td><td> - </td></tr>

<tr valign="top"><td> O(LogN) </td><td> Logarithmic
</td><td> (Half)
</td><td> - </td></tr>

<tr><td colspan="4"><a target="_blank" href="https://www.youtube.com/watch?v=0oDAlMwTrLo" title="symptotic Notations 101: Big O, Big Omega, & Theta (Asymptotic Analysis Bootcamp) Symptotic by Back To Back SWE">asymptotic (toward infinity)</a></td></tr>

<tr valign="top"><td> O(N^2) N squared </td><td> Quadratic
</td><td> Bubble sort
</td><td> - </td></tr>

<tr valign="top"><td> O(N^3) N cubed </td><td> Cubic 
</td><td> ?
</td><td> - </td></tr>

<tr valign="top"><td> O(2^N) 2 to the N </td><td> Exponential 
</td><td> - </td></tr>
</table>


## Video Gradual Reveal 

My sequence of revealing concepts one at a time:


BTW There is also a Big Omega Notation and Big Theta Notation.


## Coding 

Several libraries have been written in Python to create visualizations:
Matplotlib, Seaborn, Plotly

https://github.com/bomonike/python-samples/blob/main/plotting.py 
creates visualizations using matplotlib.


<a name="SortingAlgorithms"></a>

## Sorting Algorithms


<a name="Asymptotic"></a>

## Asymptotic


## Resources

Explanations here are a conglomeration of several videos:
* <a target="_blank" href="https://www.youtube.com/results?search_query=big+o+complexity">By various YouTubers</a>:
   1. <a target="_blank" href="https://www.youtube.com/shorts/WbF2bLbAUik">Fireship: in 100 seconds</a> (550K views)
   1. <a target="_blank" href="https://www.youtube.com/watch?v=XMUe3zFhM5c">by BroCode</a> (348K) "How code slows as data grows"
   1. <a target="_blank" href="https://www.youtube.com/watch?v=5o199a9899c">by TheNewBoston</a> (1.2M views)

   1. <a target="_blank" href="https://www.youtube.com/watch?v=g2o22C3CRfU&pp=ygUQYmlnIG8gY29tcGxleGl0eQ%3D%3D">Fireship: deck of cards</a> (snarky)
   1. RealPython (intro to in-depth tutorial)
   1. <a target="_blank" href="https://www.youtube.com/watch?v=BgLTDT03QtU">by NeetCode</a> (intro to paid tutorials)
   1. <a target="_blank" href="https://www.youtube.com/watch?v=QnRx6V8YQy0">by Caleb Curry</a>
   1. <a target="_blank" href="https://www.youtube.com/watch?v=4TUgqm2gJkE">by Codebagel</a> "Big O in 2 minutes"
   1. <a target="_blank" href="https://www.youtube.com/watch?v=__vX2sjlpXU">by Michael Sambol</a>
   1. <a target="_blank" href="https://www.youtube.com/watch?v=Q_1M2JaijjQ">by Reducible</a> "What Is Big O Notation?"
   1. <a target="_blank" href="https://www.youtube.com/watch?v=kgBjXUE_Nwc">by Computerphile</a> "Getting Sorted" (British accent) shows Bubble Sort
   1. <a target="_blank" href="https://www.youtube.com/watch?v=ktgxMtWMflU">by Ardens</a> "10 FORBIDDEN Sorting Algorithms" (funny?)

* Harvard CS50

* Berkeley BJC <a target="_blank" href="https://www.youtube.com/watch?v=_fgtTE2bhMg&t=11m26s" title="from 2013">Lecture 7: Algorithmic Complexity</a>

* Khan Academy (text) covers <a target="_blank" href="https://www.khanacademy.org/computing/computer-science/algorithms">Algorithms</a> in detail (Binary search, Asymptotic notation, Selection sort, Insertion sort, Recursive algorithms, Towers of Hanoi, Merge sort, Quick sort, Graph representation, Breadth-first search)

<em>"If you want a job as a programmer"...</em>

BOOK "Algorithms" by Thomas H. Cormen, et. al.


## More

This is one of a series on AI, Machine Learning, Deep Learning, Robotics, and Analytics:

{% include ai_links.html %}
