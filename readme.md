# Homework 2 :: CP 125 iOS App Dev, Spring 2015 #

The files for this homework are also available at the following
repository on GitHub:

>  <https://github.com/carljparker/tab-bar-controller-uw-ios-hw2>

The project supports presenting red, green, and blue view controllers
and keeping counts of how many times each of these have been presented.
It also supports an action sheet that enables the user to reset these
counts.

In addition to the above functionality, the project also supports
presenting a view controller with a random color. The random color is
chosen using an extension method to UIColor that was provided with the
homework assignment.

I implemented the random color support quickly on the day the assignment
was due. I did not provide functionality to count the number of times a
random color has been presented--although the project does demonstrate
how to do this for the pre-set colors. My primary goal with implementing
random color support was to demonstrate that I could leverage the
extension method provided.

## Known Issues ##

One issue with the random color support is that I encountered an issue
in which the random color was the same as the text color for the dismiss
text, so essentially, the dismiss text was invisible against the
same-colored background. A solution would be to set the color
of the dismiss text to some color that contrasts with the
randomly-generated background, but I did not implement this solution.

The second issue is a performance issue. It seems as though there is a
slight pause between when one of the colored view controllers appears
and when the count appears for that view controller appears.  I can
actually see the empty text field and then see the number appear inside
it. I suspect that this is actually an issue with the speed at which the
iOS simulator operates and that I would not see this delay on an actual
device, although I haven't yet tested that theory.


*** END ***

