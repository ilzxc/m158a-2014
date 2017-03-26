# Music 158
## Fall 2014 (and onward)

### About

These are class materials that I prepared in the summer & fall of 2014 to teach Max/MSP to undergraduates at UC Berkeley. Materials were based on our approach to prioritize `odot` and CNMAT's own tools from 2013. Rama Gottfried taught the other section in 2013, and in 2014, we taught this with Rafael Valle (which is why you'll see some music information retrieval / statistical models / machine-learning-ish thangs). The last time this course was taught was in 2015. The 2016 iteration saw a complete rewrite from Rama. I still like this class, though, and I'm specifically grateful to a handful of students that made this experience magical. (I remember one student from 2014 who to this day remains my absolute best, and I can not thank her enough for kicking extraordinary amounts of ass in my class!)

### Installation

Our dependecies are:

* [odot](https://github.com/CNMAT/CNMAT-odot/releases)
* [CNMAT-Externals](https://github.com/CNMAT/CNMAT-externs/releases)

(Please note that I have not been maintaining either of these for about a year now, so let's just hope they remain up-to-date...)

After downloading both for your target system, you'll need to copy/paste the directories to `~/Documents/Max 7/Packages/`. My students always ask if I mean the whole folder, and I do. So, to leave nothing to imagination:

```
~/Documents/Max 7/Packages/
    /odot
    /CNMAT-Externs
```

In addition, you should also add `.../odot/dev` to your file search path.

To test that the installation worked:

1. Open Max
2. Press Shift+E -- our codebox should pop up (as of this writing, it's still the one I wrote!)
3. Create a new object like `sinusoids~` -- if it exists, things work, all good!

### See Also

[Inter-process Communication with OSC](https://github.com/ilzxc/m158a-node_python_odot) -- this was posted specifically for the 2015 class, I believe.

### Original writeup from 2014/15 or so:

This repo contains the entirety of the Music 158 teaching materials as organized and collected for the Fall 2014 teaching of the course. Folders are organized as follows:

1. `dev` folder - for all of the temporary and in-progress work;
2. modules - the lessons taught to students
3. readmes for modules - these are reference files for instructors
4. activities - to be completed by students in class
5. quizzes - exercises that test topic comprehension and that function as preparations for graded quizzes
6. `graded-quizzes` - collection of exercises that test students' comprehension of material
7. further - links to alternative presentations of the same covered material(s)