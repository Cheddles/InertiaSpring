InertiaSpring
=============

A simple Processing app to explore the concept of inertia (designed for use on a touch-screen phone).

An adjustable mass is fixed to a massless spring. The other end of the spring is fixed to the top of the screen. The spring constant is not adjustable by the user.

The user adjusts the mass (in kg) using a slider.

The user then drags the mass down to extend the spring. The extension (in metres) and tension on the spring (in N) are displayed in real time as the spring is extended.

When the mass is released, the spring retracts, accelerating the mass to the starting position. The simulation is stopped when the starting position is reached.

A timer starts automatically when the mass is released and stops automatically when the mass reaches the starting point, showing the user how long the retraction took.

By varying the mass, the user can show that larger mass (more intertia) accelerates more slowly under the same force. A basic "experiment" could be performed to determine a mathematical relationship between mass and return time. There is a small degree of variation between multiple runs due to the implementation of the physics, allowing "random error" to be considered. Additional entropy can be added by modifying the "randomness" variable in the code.

Due to the properties of simple harmonic motion, the return time is independent of original stretch distance (this can be verified by the user by trying different extension values for the same mass.
