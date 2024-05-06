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

