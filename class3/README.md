# Data and Iteration



## Data

#### Array

A collection of information. Usually, a collection of related information.

Array is a type of variable, and can hold numbers, text (strings), or other arrays.

```
int[] weather = { 65, 70, 72, 71, 75, 67, 59 };
```
You can access any item of the array:

```
int x = weather[0];
```
x is now 65

```
int x = weather[1];
```
x is now 70


## Iteration

#### for

Use `for` to loop through code any number of times.

```
for (int i=0; i<100; i++) {

   // code here will happen 100 times

}
```

#### i

In the above example, `i` is an index variable that counts upwards during each iteration.

`i` will equal 0 the first time through the loop, then 1, then, 2, etc.

You can use `i` just as you could use any variable. This will draw a straight line that is 100 points long:

```
for (int i=0; i<100; i++) {

   point(i,10);

}
```

## Iterating Through Data

Loops and Arrays work well together.

This would visualize your weather data.

```
int[] weather = { 65, 70, 72, 71, 75, 67, 59 }; 

for (int i=0; i<weather.length; i++) {

   ellipse( i*10, weather[i], 10, 10);

}

```

Notice the use of `weather.length` to fit the loop to the array size.

## Reference

Fry & Raes, Chs ...


## Context


## Reflection

Where do you see iteration in nature?

Imagine a simple action from your daily life. What could you achieve if you could easily do that action 100 times or 100,000 times?

## Assignment

- Finish Project 1 (an interactive artwork). Be prepared to give a 10-15 minute presentation in which you explain your code to the class.

