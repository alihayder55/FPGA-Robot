# 3D Maze Solver using FPGA Board
![image](https://github.com/alihayder55/FPGA-Robot/assets/156635408/19ce213e-1deb-4dbc-a412-5d113e1746b1)

## Abstract
Mobile robots have the potential to transform industries by autonomously navigating complex environments like mazes. However, enabling them to solve mazes introduces challenges in obstacle detection and avoidance. Traditional methods using lidar and camera detection with deep learning may be limited in dealing with complex maze environments because they require more resources. This research aims to develop efficient algorithms for maze-solving robots, addressing these challenges and improving their obstacle detection and avoidance capabilities.

The method employed in this project involves using a specific algorithm to navigate the maze. The algorithm, known as the right-hand wall following algorithm, guides the robot by keeping it in contact with the right-hand wall while moving forward. The robot utilizes ultrasonic sensors to detect obstacles and a motor driver to control its movement. By following a set of predefined rules, such as turning left or right when encountering an obstacle, the robot can effectively navigate through the maze.

The main findings of this research demonstrate that the proposed algorithm for maze-solving robots based on the right-hand wall following approach is highly effective. The robot successfully navigated through complex mazes, reaching the end without any errors. The implementation of the algorithm using the combination of ultrasonic sensors and the motor driver provided reliable obstacle detection and precise control of robot movement. The fact that the project implemented in a minimum of resources available on the board leads to the ability to add more tasks that the robot can do.

## 1. Methods
The Methods section describes the proposed approach for enabling the mobile robot to autonomously navigate a maze. The approach uses a combination of ultrasonic sensors and a motor driver to detect obstacles and control the robot's movement, respectively. The robot is programmed to follow a set of predefined rules to navigate the maze, which include turning left or right when an obstacle is detected and moving forward when there are no obstacles in front of the robot. More details about the theory behind the approach and the implementation of the sensors and motor driver will be presented in the following sections.

### 2.1 Path Planning and Algorithm
The proposed solution for maze-solving involves implementing a simple rule-based algorithm, known as the "right-hand rule". This algorithm involves following the right-hand wall of the maze until the exit is reached.

The robot is initially placed at the starting point of the maze and is programmed to move forward until it reaches a wall. Once it reaches a wall, the robot turns right and continues following the wall. If the robot encounters an intersection where there are multiple paths to choose from, it will always choose the path to the right. By continuously following the right-hand wall, the robot is guaranteed to eventually reach the exit of the maze.

To implement the algorithm, the robot follows a set of predefined rules that dictate its movement based on its sensor readings. When the robot first enters the maze, it follows the wall on its right side by turning right at every intersection until it reaches a dead end or a corner. At that point, it turns left and continues following the wall. If the robot encounters a gap or an open space in the wall on its right side, it turns left and moves forward until it encounters the wall again.

The algorithm can be implemented using a finite state machine, which has a set of states that correspond to different robot behaviors, as shown in Figure 1. In the initial state, the robot is positioned next to the wall on its right side. As the robot moves through the maze, it transitions between states based on its sensor readings. For example, if the robot detects an obstacle in front of it, it transitions to a state where it turns right. If it detects a gap in the wall on its right side, it transitions to a state where it turns left and moves forward until it detects the wall again.

![image](https://github.com/alihayder55/FPGA-Robot/assets/156635408/2425a405-3d40-4881-8576-396dd2d8a79c)

### Robot movement
The robot's movements in this project are relatively simple and consist of moving forward, turning left, 
and turning right. The movement is controlled by the 4-channel DC motor driver and the 4 DC motors 
that power the robot's wheels. The speed and direction of each motor can be independently controlled, 
allowing for precise movement and turning.
The motor driver used in this project has two pins for each motor. One pin is used to control the direction 
of the motor, while the other pin is used to control the speed of the motor and to turn it off. This allows 
for precise control over the movement of the robot, enabling it to move in any direction and turn on the 
spot. The direction pin controls whether the motor rotates clockwise or counterclockwise, while the 
speed control pin is used to adjust the speed of the motor. When the speed control pin is set to zero, the 
motor will stop rotating. By varying the speed and direction of each motor, the robot can be made to 
move in any direction, turn left or right, or rotate on 360 degrees. As in Figure 5. (a) to move forward, all 
four wheels rotate in the same direction. When turning left, the wheels on the right side of the robot 
rotate in the opposite direction to the wheels on the left side, causing the robot to turn left. Similarly, 
when turning right, the wheels on the left side of the robot rotate in the opposite direction to the wheels 
on the right side, causing the robot to turn right.

![image](https://github.com/alihayder55/FPGA-Robot/assets/156635408/d7f3ec99-0fbc-483c-a30f-9fb70df71c53)
## 3. Results and Discussion
The robot's movement control system functioned as expected, allowing the robot to move forward and 
turn left and right with ease. The ultrasonic sensor system provided accurate and reliable obstacle 
detection, enabling the robot to navigate through a maze in real-time without any errors or collisions.
During testing, the robot was able to successfully solve a maze and reach the end without any issues. The 
high-speed and accurate movement control system, combined with the reliable obstacle detection 
provided by the ultrasonic sensors, allowed the robot to navigate through the maze quickly and 
efficiently.
As we can see in Figure 7, the RTL analysis of the project shows that only a small portion of the board 
was used, indicating efficient design and resource utilization. This makes the implementing of the project 
can be in smaller chips, when it is implemented on integrated circuits. Also the small use of the FPGA 
board leads to the ability to design the robot to do more tasks while solving the maze. Aside from that, 
the memory used from the board and the logic element used is also small percentage of the resource that 
are available in the board. This can be seen in Figure 8
![image](https://github.com/alihayder55/FPGA-Robot/assets/156635408/1fd0e759-f85b-4bc9-80a7-60ffb09f1ffa)

## 4. Conclusion
As real time processing tasks are trending nowadays, the idea for developing an obstacle avoidance 
mobile robot using a FPGA chip seemed to be a good idea. FPGA chips are better at handling concurrent 
tasks in real time activities. But it is more complex in terms of programming than a microprocessor. Even 
though this project handle only 5 input sensors and 4 motors, the FPGA chip can handle a lot more 
sensors and motors at the same time without any delay. The mobile robot in this mini project takes 5 
inputs from the ultrasonic sensors and according to a rule base the motors are controlled. The mobile 
robot operated successfully at avoiding any obstacle.

