---
lastchange: "v001 + :python-exams.md"
file: "python-exams.md"
---

## Question 33

Look at the following code which uses a list comprehension [i*i for i in range(5)]

<tt>numbers = [0, 2, 7, 9, 10]
# Insert line of code here to produce [0, 4, 49, 81, 100]
print(foo)
</tt>
Which line would you insert in order for the program to produce the expected output?

Choices given for the question suggests use of lambda within filter() and map() functions, all within a list:

a)	foo = lambda num: num * 2, numbers<br />
b)	foo = lambda num: num ** 2, numbers<br />
c)	foo = filter(lambda num: num ** 2, numbers<br />)
d)	foo = map(lambda num: num ** 2, numbers)

Before looking at the answers, we can see that the output sought (in foo) is the
<strong>square</strong> of the input numbers:
   * 2*2 = 4
   * 7*7 = 49
   * 9*9 = 81
   * 10*10 = 100

To calculate a square, we use <tt>num ** 2</tt>

QUESTION: What does the filter function do?

filter() is a built-in function that takes two parameters: a function (such as lambda) and an iterable (like a list, tuple, or set) and returns an iterator containing only the elements for which the function returns True.

The answer yields an internal Python object ID and its value from lambda:

<tt>(<function <lambda> at 0x10042d4e0>, [0, 2, 7, 9, 10])</tt>

<tt>foo = list(filter(lambda num: num ** 2, numbers))</tt>

## Question 34

A more complex question uses a list comprehension <tt>[i*i for i in range(5)]</tt>

<tt>numbers = [i*i for i in range(5)]
# Insert line of code here to produce [1, 9]
print(foo)
</tt>

Before looking at the answers, what value is contained in the numbers variable?

<tt>range(5)</tt> produces 5 values, from 0 to 4:

<tt>[0, 1, 2, 3, 4]</tt>

QUESTION: What does the <tt>i*i</tt> do? It's unusual.

It multiples i by itself (turning into a square of itself), yielding:

<tt>numbers = [0, 1, 4, 9, 16]</tt>

The question is asking for <tt>[1, 9]</tt> to be produced.

So that's the second and fourth item from the five-item input list,
which are the <strong>even numbers</strong>.

<tt>x % 2</tt> reminders would yield even numbers.

That is shown by:

<tt>print(lambda x: x % 2, numbers)</tt>

which shows internal Python object ID and its value from lambda:

<tt><function <lambda> at 0x1001dc9a0> [0, 1, 4, 9, 16]</tt>


The <tt>list()</tt> function extracts out the values of [0, 1, 4, 9, 16].

Now the choices given for the question:

a)	foo = list(map(lambda x: x // 2, numbers))<br />
b)	foo = list(map(lambda x: x % 2, numbers))<br />
c)	foo = list(filter(lambda x: x / 2, numbers))<br />
d)	foo = list(filter(lambda x: x % 2, numbers))


The filter() function with lambda x: x % 2 does the following:
x % 2 returns 1 (truthy) for odd numbers
x % 2 returns 0 (falsy) for even numbers

This effectively keeps only the odd numbers in the list
So filter(lambda x: x % 2, numbers) will keep only the odd squares: [1, 9]

QUESTION: What does the map function do?

That's put there as a distractor.

The map() function is a built-in Python function that <strong>transforms</strong> iterables by applying a specified function to each item in an iterable.


Perplexity.ai says the answer is b:

<tt>foo = list(filter(lambda x: x % 2, numbers))</tt>


## Question 35

This makes use of some methods for the random package described at
https://docs.python.org/3/library/random.html

```
import random
# Insert lines of code here.
print(a, b, c)
```
Which lines of code would you insert so that it is possible for the program to output the following result:

```
6 82 0
```

Analysis:

Running the code provided is unlikely to yield "6 82 0" because the methods used generate random numbers.

https://docs.python.org/3/library/random.html#random.randint

random.randrange(10, 100, 3)
   # Returns a randomly selected element from range(start, stop, step).

random.randint(0, 100)
   # Returns a random integer N such that a <= N <= b

random.choice((0, 100, 3))
   # Returns a random element from the non-empty sequence

Each set (A,B,C,D) uses output variables a,b,c using different random.methods.

Let's analyze each command to see if it can yield "6 82 0".

A:<br />
a = random.randrange(10, 100, 3)<br />
   # Doesn't qualify because 6 is < 10.<br />
b = random.randint(0, 100)<br />
   # Can qualify because 92 can be between 0 to 100.<br />
c = random.choice((0, 100, 3))<br />
   # Can qualify because 92 can be 0.<br />

B:<br />
a = random.choice((0, 100, 3))<br />
b = random.randrange(10, 100, 3)<br />
   # Doesn't qualify because 82 is not divisible by 3.<br />
c = random.randint(0, 100)<br />

C:<br />
a = random.randint(0, 100)<br />
b = random.randrange(10, 100, 3)<br />
   # Doesn't qualify because 82 is not divisible by 3.<br />
c = random.choice((0, 100, 3))<br />

D:<br />
a = random.randint(0, 100)<br />
b = random.choice((0, 100, 3))<br />
   # Doesn't qualify because 82 is not divisible by 3.<br />
c = random.randrange(10, 100, 3)<br />

REMEMBER: The answer choice is rearranged by the testing software:

a)	B<br />
b)	C<br />
c)	D<br />
d)	A


The






