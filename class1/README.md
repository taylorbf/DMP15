# Shapes and Movement

This tutorial is for creating visual art within the [Processing](http://processing.org) programming environment. 

Processing is built upon the language of Java. Many components of this language can be used in Java and other popular languages.

## Structure of a Sketch

#### Setup and Draw

```
// the setup function gets called once when the sketch loads

void setup() {

}


// the draw function gets called at 60 fps

void draw() {

}
```

## Shapes

#### point
Draw a point at an x/y position

point( x, y )

```
point(10,10)
```



#### line
Draw a line from one x/y position to a second x/y position

line( x1, y1, x2, y2 )

```
line(10,10,40,20)
```

#### rectangle
Draw a rectangle at an x/y position, with a certain width and height

rect( x, y, width, height)

```
rect(10,10,100,20)
```

#### ellipse
Draw an ellipse at an x/y position, with a certain horizontal radius and vertical radius.

ellipse( x, y, radius1, radius2 )

```
ellipse(50,50,30,60)
```


#### 2D shapes review

via Fry and Raes

![Basic Processing Shapes](/images/shapes.png)



## Variables

It's important to choose the right kind of variable for your needs.

#### Boolean

A boolean can have one of two values: `true` or `false`. It is like a lightswitch, either on or off, like a binary operator.

`boolean IamBen = true;`

#### Integer

An integer is a whole number, such as `0`, `1`, `-2`, etc. It cannot be a decimal number.

`int x = 100`

#### Float

A float number may be either a whole number or decimal.

`float money = 10.50`


#### String

A String is a piece of text. Specifically, it is non-code text, like regular English.

`String greeting = "Yo, what's up?"`

A string has a length.

```
int x = greeting.length
// x now equals 14
```

## Operators

Variables or numbers may be operated on after they are defined

```
int x = 10
x = x / 2
// x is now 5
x = x + 2
// x is now 7
```


## Reference

Fry & Raes, Ch 3 (Shapes) & Ch 4 (Variables)


## Context


## Reflection

What kind of shapes and variables do you see in your daily life?

## Assignment

• Bring in a sketch to present at the beginning of Day 2.

• Bring in a real world example of each type of variable we discussed (String, integer, float, boolean). *Example: A boolean in my daily life is a lightswitch (it is either on or off).*