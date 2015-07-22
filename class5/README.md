# Class 5: Object-Oriented Programming

In the real world, objects are multiplicitous. The world does not contain just one rabbit, it contains many rabbits. They are all similar -- you could say they are created from the same **template** -- but each rabbit is slightly different, and each acts independently.

#### The Problem with Coding Many Rabbits

Sooner or later, you will be sketching out a rabbit:

```
rabbitx = 100;
rabbity = 0;

void rabbitHop() {
  rabbitx += 10
}

```

And it will dawn on you -- I want two rabbits! Then you will write something like this:

```
rabbitx = 100;
rabbity = 0;

rabbit2x = 100;
rabbit2y = 0;

void rabbitHop() {
  rabbitx += 10
}

void rabbit2Hop() {
  rabbit2x += 10
}

```

Then you will break down and cry, because now you want 100 rabbits, and that is going to take hours.

*There must be a better way*, you will think to yourself. 

There is!


## Class

Classes are a way to create self-contained, independent objects.

**You can think of a class definition as similar to a template. You can create any number of objects from that template.**

If you turn your bouncing ball into a class, you can then create 100 bouncing balls with little effort.

A class looks like this:

**Definition**

Create the class template.

```
class Raindrop {
  
  int x;
  int y = 0;
  
  Raindrop(int setx) {
    x = setx;
  }
  
  void fall() {
  
    stroke(#559ADE);
    line(x,y,x,y+50);
    
    y += 5;
     
  }
  
}

```

**Instance**

Create an instance of Raindrop

```
Raindrop drop = new Raindrop(50)
```

Create another instance of Raindrop

```
Raindrop drop2 = new Raindrop(100)
```

Too bad I forgot my umbrella class.

## Class Definition

Let's break it down.

**Components of a Class Definition**

- Wrapper
- Internal variables
- Constructor function
	- Constructor arguments
- Internal functions

##### Wrapper

Your class must be wrapped in a class declaration

```
class Raindrop {


}

```

##### Internal Variables

Variables defined inside your class are **local**. They cannot be used outside your class.  

In this case, a new local x and y variable will be created **for each raindrop.**

```
class Raindrop {

	int x;
    int y = 0;

}

```



##### Constructor Function & Arguments

Each class contains a constructor function which acts like a setup function. It is called once for each instance, at the moment the instance is created.

```
class Raindrop {

	int x;
    int y = 0;

	Raindrop(int setx) {
   		x = setx;
  	}
  	
}

```

Here, we also include an argument, `setx`, which lets us set the x location of our raindrop.

##### Internal Functions (Class Methods)

Lastly, we can add any number of functions inside our class. These will be functions which *affect only our class instance*.

Here we create a `fall()` function which causes the raindrop to move and be redrawn


```
class Raindrop {
  
  int x;
  int y = 0;
  
  Raindrop(int setx) {
    x = setx;
  }
  
  void fall() {
  
    stroke(#559ADE);
    line(x,y,x,y+50);
    
    y += 5;
     
  }
  
}

```

That is our full class definition. But, you could keep building it by adding any number of addition class methods.


## Class Instance

Now you can create an individual, self-contained raindrop:

```
Raindrop drop = new Raindrop(50)
```

To make it move:

```
drop.fall()
```

To make another raindrop:

```
Raindrop drop2 = new Raindrop(20)
```


## Array of Class Instances

Creating `drop1` and `drop2` is still slightly cumbersome.

Better to use a loop and an array!

```
Raindrop drop[] = new Raindrop[200];

for (int i=0;i<drop.length;i++) {
    drop[i] = new Raindrop( int(random(width)) );
}
```

This defines an empty array of raindrops, then fills the array using a loop. Each raindrop is placed at a random x location.

## Summary

With a little bit of code, we've created rain -- a complex and multiplicitous event.


## Object Oriented Programming

Using classes is an example of object-oriented programming (OOP)

In OOP, ideas/objects are programmed as self-contained entities with characteristics (properties) and actionable abilities (methods/functions). 

In our case, `Raindrop` is our object and `drop` is our instance. `.fall()` is an action which `drop` can do, written as `drop.fall()`.


## Reference

Fry & Raes, Ch ...


## Context


## Reflection


## Assignment

Create a class of your own. You may use any of our class code as a template.

Advice: Think in terms of designing an **object**, and consider the following:

- What does the object **do**? 
	- (Let this guide your Class Methods)
- What parts of the object will **change over time**?
	- (Let this guide your Internal Variables) 
- How will each instance be **different** than another? 
	- (Let this guide your Arguments)





