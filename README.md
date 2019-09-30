# player-gestures-tvOS13

Project created to report bug on tap gestures with the AVPlayerViewController.

· Open radar: tba

# Description
When adding a gesture to a AVPlayerViewController or its superview, tvOS 13 needs two fast taps (a double tap) in order to recognize this gesture. Prior to this one tap was required.

# Expected 
UITapGestureRecognizer behavior of prior tvOS version.

# Steps

Run the app and use the tap up gesture (.upArrow) in order to print a statement to the console and change the alpha value (0.5 : 1.0) of the player view.

# Environment

- Xcode Version 11.0 (11A420a)
- Apple TV running tvOS 13 (17J577)
