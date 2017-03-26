On monday, we took our first look at Max.

We looked at its basic paradigm for computation - connecting graphical objects with virtual patch cables. We briefly looked at data types in Max, at containers for data, and built some rudimentary examples. Today, we are going to take these principles into the audio domain.

My goal for today is to contextualize things we've seen on Monday - to provide examples for using lists, using $-substitutions, trigger, et cetera.

Let's start with getting a sound out. `cycle~` object is a sound-generator - it produces a waveform. But the waveform it's producing is just a stream of numbers. To *hear* the waveform it produces, we need another object, called `ezdac~`. Notice that when I connect a `cycle~` to my `ezdac~`, the patch cable looks different from the objects we've seen before. These yellow-and-black cables let us know that the data transferred over them is audio signals.

I'd like to emphasize safety - next week we will talk about the damage that loud sounds can do to your ears. Today, I'm introducing gain~ - a slider that controls the volume. You *have* to use it - not using it in your labs will result in an automatic letter grade deduction.

To actually hear sound, we'll need to turn on audio processing in Max. The easiest way to do this is to activate the `ezdac~` object - it's actually a button. Turning on audio enables all of audio objects in Max.



On Monday, we saw that the message box can be used to display incoming data streams through its right inlet. What we'd like to do is to visualize audio signals. There are two objects that serve this purpose - `scope~` and `spectroscope~`.



`scope~` visualizes the waveform itself. We'll talk about the nature of sound next week - but I trust that most of you can recall that sound waves travel in a medium (like air). A loudspeaker creates sound by moving its membrane back-and-forth, creating sound waves. The waveform traces the path of the speaker membrane - as our wave goes up, the speaker membrane moves in, and when the wave goes down, the membrane is repelled outward.



Regular oscillation results in the perception of *pitch* - a note. As these oscillations become more rapid, the pitch is said to "increase" and as they become less rapid, the pitch "lowers." If we use a floating-point number box, we can control the frequency of oscillations in our `cycle~` object. The frequency is measured in *Hertz*, measuring how many times per second. Our bodies are extremely sensitive to these periodic oscillations. 



Frequencies are perceived as pitch, but seeing fast oscillations in `scope~` is impractical. The `spectroscope~` object maps the frequency spectrum on its x-axis and the amplitude (which is related to our perception of a sound's loudness) on its y-axis. This allows us to see a sine wave whistling at a specific pitch, allows us to see the motion of the pitch left-and-right as I turn change the frequency of the oscillator, and allows us to see amplitude of sounding frequencies. (If we create a second cycle~, we can easily see that there are two using spectroscope~, but not scope~). We'll cover the `spectroscope~` in greater detail next week - for now, waves appear as vertical bars, their horizontal position is "frequency" - or pitch, and their vertical height is amplitude - if we have time today, please ask why amplitude is not the same thing as "loudness."



**Any questions?**



What we would like to do is some basic arithmetic with audio signals. Max objects for doing arithmetic are +, -, *, and / - and their audio counterparts follow the naming convention. They have tildes after them. For now, we'll focus on the sum - plus-tilde.



Instead of talking about math, we'll talk about the **perceptual** functions of these objects. Adding two signals *mixes the two together*. It creates a new signal - just one patch cord here, right - that can contain *multiple frequencies*. Adding two signals is so common, that Max will kindly do implicit summation automatically if two audio patch cords are connected to the same inlet of an audio object.



A few minutes ago, I mentioned that `scope~` graph can be understood in terms of a vibrating membrane on a speaker, right? And just like all of us physical beings, that speaker *has a limit*, right - the membrane can only go so far. How are these limits represented in the computer and what happens when we exceed it? There's some subtlety to the answer.

First, let's consider the actual sum of our `cycle~` objects. It appears that the wave exceeds the scope. Let me update the range of the scope - ignore the Max bits, we'll cover them later. If I change the range from -2 to 2, our waves appear to fit with no data lost. Nothing is cut off - the sum of two waves is just as it is supposed to be.

However, if we turn up our `gain~` object a bit, we hear distortion, so what gives?

Remember that `ezdac~` object that allows us to send our digital signals to our audio hardware and get it out of the speakers? `ezdac~` maps the range of our audio signals between -1 and 1 to the miminum and maximal displacement of the speaker. So sending a signal with amplitude above 1 or below -1 will cause a "clipping" of that signal, which causes **clipping**.

There's nothing magical about clipping - we can use a `clip~` object to observe the effects - side by side.

The lesson here is that ONE - even though computers can represent signals with amplitudes outside -1 and 1, your digital-to-audio converter only understands signals between -1 and 1; TWO - clipping of the signal causes distortion - it's up to a particular use-case to figure out if and when it's appropriate - no aesthetic judgements; and THREE - gain~ can be used to scale the signal back down (by turning it down) to an acceptable range.



**Any Questions?**



Now let's consider the product - asterisk-tilde. Looking at the scope first, we notice that multiplying a signal by a number seems to scale the signal. Multiplying it by 0 causes a flat line, multiplying it by 1 appears to have no change on the signal.

*Multiplying a signal by a number scales the amplitude of the signal.* That is - we just built our own `gain~`.



Having our own gain provides a model for sound control that we can explore - giving `*~` values between 0. and 1. allows us to control the amplitude. Our goal for the rest of the class is to generate autonomous behaviors, so that things happen in time at a press of a button.


**Any Questions before we get to envelopes?**


The idea is simple - we're going to generate ramps - lines that lie between 0 and 1. These lines will be used in our `*~` to change the amplitude of the signal.

First, let's look at these objects - `line` and `line~`. Our line needs a starting point, so let's provide one as an instantiation argument - `line 0.`. Let's look at the help patch for `line`. The description is "Generate timed ramp - from one value to another within a specified amount of time." You accomplish this by providing `line` with a list of two numbers. The first is 'destination' and the second is 'how long it will take to get there.'

If we create a message box with a list of two numbers, we first specify where we want to end up - let's say we're going to 1. - and then specify how long it will take us to get there (in milliseconds). So let's go to 1. in 1000 milliseconds. Clicking on the message box, we may observe the number going up.

Similarly, we can go from 1 back to 0 by providing a message with `0. 500`.



`line` generates some data for us, and we can put it to some sonic use immediately - plugging this into `*~` allows us to turn sound on with this message, and turn sound off with this one.



Let's visualize what we're doing a little better. `gain~` uses values between 0 and 127, and we can use numbers coming out of `line` to control `gain~`. 



This is an improvement, but we can do better. 