

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