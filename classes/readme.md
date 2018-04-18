from: http://sheepolution.com/learn/book/11

# Let's go through all this code one more time.

First we load the library classic with require "classic". Loading this library returns a table, and we store this table inside Object. It has the very basics needed to simulate a class. Because Lua doesn't have classes, but by using classic we get a very nice imitation of a class.

Next we load shape.lua. In that file we create a new class called Shape. We will use this class as a baseclass for Rectangle and Circle. The 2 things that these classes have in common is that they have an x and y property, and that it moves horizontally. These similarities is what we put in Shape.

Next we create the Rectangle class. We make it an extension of our baseclass Shape. Inside the :new() function, the constructor, we call the constructor of our baseclass with Rectangle.super.new(self, x, y). We pass self as first argument, so that Shape will use the instance of our blueprint, and not the blueprint itself. We give our rectangle a width and height property, and give it a draw function.

Next we repeat the above, except for a circle. So instead of a width and height we give it a radius property.

Now that we have our classes ready, we can start making instances of these classes. With r1 = Rectangle(100, 100, 200, 50) we create an instance of our class Rectangle. It is an object made out of our blueprint, and not the blueprint itself. Any changes we make to this instance will not affect the class. We update and draw this instance, and for that we use a colon (:). This is because we need to pass our instance as first argument, and the colon will make Lua do it for us.

And finally we do the same for r2, except we make it a Circle.

# Confused?
That was a lot of information for 1 chapter, and I can imagine if you're having a hard time understanding all of this. My advice: Keep following the tutorials. If you're new to programming it will take some time before you get all these new concepts, but eventually it will "click". I will keep adding explanations on older subjects while talking about the newer ones.

# TL;DR
Classes are like blueprints. We can create multiple objects out of 1 class. To simulate classes we use the library classic. You create a class with ClassName = Object:extend(). You create an instance of a class with instanceName = ClassName(). This will call the function ClassName:new(). This is called the constructor. Every function of a class should start with the parameter self so that when calling the function you can pass the instance as first argument. instanceName.functionName(instanceName). We can use colons (:) to make Lua do this for us.

We can extend a class with ExtensionName = ClassName:extend(). This makes ExtensionName a copy of ClassName that we can add properties to without editing ClassName. If we give ExtensionName a function that ClassName already has, we can still call the original function with ExtensionName.super.functionName(self).
