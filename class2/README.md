# Interaction and Logic


## Logic

#### if

The core building block of programming logic is the `if` statement.

Any time you want a piece of code to happen sometimes, but not always, you want to use `if`.

```
int x = 10

if (x < 5) {

	// code in here only happens if x is less than 5
	
}
```

#### if/else

```
int x = 10

if (x < 5) {

	// code in these brackets won't happen
	
} else {

    // code in these brackets will happen

}
```


## Mouse Interaction


## Keyboard Interaction


## Logic + Interaction

Logic and interaction work well together. `if` can be used to gain control over interaction.

You can model a simple pencil:

```
void draw() {

	if (mousePressed) {
		point(mouseX,mouseY,20,20)	
	}

}
```

Or you can set a logical condition on the mouse position:

```
void draw() {

	if (mouseX > 100) {
		background(255)
	} else {
		background(0)
	}

}
```

## Reference

Fry & Raes, Ch ...


## Context


## Reflection

Consider examples from your life in which your interaction with an object changes its color or shape.	

## Assignment

• Project 1: Create an interactive artwork. Due Day 4.

• Bring in an example of logic you see in your daily life. 

• Bring in two examples of interaction you see in your daily life. One should be a binary (button) interaction, one should be a linear (handle) interaction.