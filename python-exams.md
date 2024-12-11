---
lastchange: "v009 + exam code :python-exams.md"
url: "https://bomonike.github.io/python-exams"
file: "python-exams.md"
---

<a target="_blank" href="https://bomonike.github.io/python-exams"><img align="right" width="100" height="100" alt="python-exams.png" src="https://github.com/bomonike/bomonike.github.io/blob/master/images/python-exams.png?raw=true" />

1. Cisco's NetCad.com offers <a target="_blank" href="https://www.netacad.com/learning-collections/python?courseLang=en-US">two</a> courses aligned with PCEP™ and PCAP™ certifications to validate your expertise, and to show your instructors and potential employers that you are serious about your education and career.

   The courses are free, developed in collaboration with the OpenEDG Python Institute which administers the exams.

1. Click "Login" at the upper-right.
1. Click "Sign Up" at the lower-right.
1. Click the Google icon under "Sign up with".
1. Select your personal Google account - the one credly.com will use even after you leave school.
1. Check the accept boxes, then "Accept & Continue".
1. Login using your Google account and associated password.

   ### Continue to PE1

   <a target="_blank" href="https://www.netacad.com/courses/python-essentials-1?courseLang=en-US"><img align="right" width="100" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1733810664/cisco_python_essentials_1_50_qxxfot.png" /></a>
1. Click "Python Essentials 1"
1. Notice the subjects:
   1. Introduction to Python and Computer Programming
   2. Python Data Types, Variables, Operators, and Basic I/O Operations
   3. Boolean Values, Conditional Execution, Loops, Lists and List Processing, Logical and Bitwise
   4. Functions, Tuples, Dictionaries, Exceptions, and Data Processing

1. Click "Start Course".
1. Scroll down to the bottom of the left menu to click "Python Essentials 2 (PE2) Course Final Exam", then "Final Test".
1. Scroll down and answer all questions.
1. Click "Submit" for your score. Hopefully you'll see "Congratulations, you have passed the assessment."
1. Review items you got wrong.
1. Click "Reset" and answer again until you get 100%, so you know you have overcome incorrect thinking. Answering the questions you already know helps you get <strong>faster</strong>.
1. Answer the post-survey questions so you'll get a "Discount coupon on completion of course" email from noreply@netacad.com containing a discount code unique to you.
1. Email me the discount code so I can send you the exam code.


   ### Continue to PE2

      <a target="_blank" href="https://www.netacad.com/courses/python-essentials-2?courseLang=en-US"><img align="right" width="100" src="https://res.cloudinary.com/dcajqrroq/image/upload/v1733810672/cisco_python_essentials_2_ja7h6b.png" /></a>
1. Click "Python Essentials 2"
1. Notice the subjects:
   1. Modules, Packages, and PIP
   2. Strings, String and List Methods, Exceptions
   3. Object-Oriented Programming
   4. Miscellaneous

Repeat as above.


<hr />

## Cisco Final Exam 2 Question 27

```
def o(p):
    def q():
        return '*' * p
    return q

r = o(1)
s = o(2)
print(r() + s())
```

This is an example of a <strong>"closure"</strong> in Python.

The inner function o is a <strong>function factory</strong> - it creates functions on the fly and returns functions instead of a value. It allows for dynamic (parameterized) function generation with customizable behavior.

https://realpython.com/factory-method-python/

The inner function q "remembers" the value of p that was passed to the outer function o. Each call to o creates a new function with its own "remembered" value of p.

https://www.youtube.com/watch?v=JIImCgkAQxY&t=61s


## Cisco Final Exam 2 Question 33

Look at the following code:
```
numbers = [0, 2, 7, 9, 10]
# Insert line of code here to produce [0, 4, 49, 81, 100]
print(foo)
```
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


## Cisco Final Exam 2 Question 34

A more complex question uses a list comprehension <tt>[i*i for i in range(5)]</tt>

```
numbers = [i*i for i in range(5)]
# Insert line of code here to produce [1, 9]
print(foo)
```

Before looking at the answers, what value is contained in the numbers variable?

<tt>range(5)</tt> produces 5 values, from 0 to 4:

<tt>[0, 1, 2, 3, 4]</tt>

QUESTION: What does the <tt>i*i</tt> do?

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


## Cisco Final Exam 1 Question 35

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

So no good choices?




