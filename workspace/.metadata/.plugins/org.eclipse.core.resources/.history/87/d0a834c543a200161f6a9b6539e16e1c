#include <cstdint>
#include "WPILib.h"

class Robot: public IterativeRobot
{

	RobotDrive myRobot; // robot drive system
	Talon rightMotor;
	Talon leftMotor;
	Joystick leftStick; // left joy stick
	Joystick rightStick; // right joy stick
	Compressor compressor; //Create compressor object to initiate compressor
	Servo doorServo; // initiate servo for door on front of robot
	Servo cameraX;// initiate servo controlling x-axis of camera
	Servo cameraY;// initiate servo controlling y-axis of camera
	DoubleSolenoid hookPiston;//initiate 2 double solenoid for the piston on the arm and the shooting piston
	DoubleSolenoid shootPiston;
	DoubleSolenoid doorSolenoid;
	Talon arm;	//initiate arm, elbow, and winch motor controller objects
	Talon elbow;
	Talon winch;
	LiveWindow *lw; //initiate live window for test mode
	int autoLoopCounter;
	int cameraXValue;
	int cameraYValue;
	int gate;
	long joystickVal;

public:
	Robot() : // these must be initialized in the same order as they are declared above.
			myRobot(0, 1),	//Drive motors are on PWM channel 0 and 1
			rightMotor(0),//PWM channel 0
			leftMotor(1),//PWM channel 1
			leftStick(0),//left joystick is on usb 0 in driver station and right stick is on usb 1 in D.S.
			rightStick(1),
			compressor(0),//compressor on Pneumatics control module
			doorServo(2),	//Door servo is connected to PWM channel 7
			cameraX(6),
			cameraY(7),
			hookPiston(0, 1), // double solenoid for piston on arm connected to channel 0 and 1
			shootPiston(4, 3),// double solenoid for shooting piston on channel 2 and 3
			doorSolenoid(5,6),
			arm(3), //Motor controller for arm is on pwm channel 3
			elbow(4),	// motor controller for elbow is on channel 4
			winch(5),	// motor controller for winch is on channel 5
			lw(LiveWindow::GetInstance()),// initiates live window for test mode
			autoLoopCounter(0),
			cameraXValue(60),
			cameraYValue(90),
			gate(0),
			joystickVal(0)
			{
		myRobot.SetExpiration(0.1);

		CameraServer::GetInstance()->SetQuality(50);//initiates camera server and sets quality at 50
		//the camera name (ex "cam0") can be found through the roborio web interface
		CameraServer::GetInstance()->StartAutomaticCapture("cam0");	// Start automatic capture of cam0

		compressor.SetClosedLoopControl(true);// lets comptessor be controlled by pressure switch so that it dosn't blow up

		doorServo.SetAngle(0);// sets door servo to closed position at power on of robot
		cameraX.SetAngle(0);
		cameraY.SetAngle(100);


		hookPistonin();
			}

private:
	void AutonomousInit()
	{
		autoLoopCounter = 0;
	}

	void AutonomousPeriodic()
	{
		if(autoLoopCounter == 20){
			cameraXValue = 100;
			cameraYValue = 100;
			cameraX.SetAngle(cameraXValue);
			cameraY.SetAngle(cameraYValue);

		}
		if (autoLoopCounter < 300) //Check if we've completed 100 loops (approximately 2 seconds)
		{
			myRobot.Drive(-.8, 0.0); 	// drive forwards half speed
			autoLoopCounter++;
		}
		else
		{
			myRobot.Drive(0.0, 0.0); 	// stop robot
		}

	}



	void TankDrive()      //Method for tank drive using left and right joy stick
	{
	 	//joystickVal = rightStick.GetX();

		//if(joystickVal <= 50){
			//joystickVal = 50;
		//}

		//myRobot.Drive(rightStick.GetY(), joystickVal);
		myRobot.TankDrive(leftStick,rightStick);
	}





	void setServo()			//Method so set the door servo to 90 degrees open
	{   doorSolenoid.Set(DoubleSolenoid::kReverse);
		autoLoopCounter = 0;
		doorServo.SetAngle(150);
	}

	void setServo0()//Method to set the door servo back to the original position
	{


		if (autoLoopCounter == 50)
		{
		doorSolenoid.Set(DoubleSolenoid::kForward);
		autoLoopCounter = 51;

		}
		else if(autoLoopCounter <= 50)
		{
		doorServo.SetAngle(-100);
		autoLoopCounter++;
		}
	}

	void Camera()
	{
		if(rightStick.GetPOV() == 180)
		{
			cameraXValue = cameraXValue - 1;
		}


		if(rightStick.GetPOV() == 0)
		{
			cameraXValue = cameraXValue + 1;
		}


		if(rightStick.GetPOV() == 270)
		{
			cameraYValue = cameraYValue + 1;
		}

		if(rightStick.GetPOV() == 90)
		{
			cameraYValue = cameraYValue - 1;
		}

		/*if(rightStick.GetPOV() == 135){
			cameraYValue = cameraYValue + 1;
			cameraXValue = cameraXValue - 1;
		}

		if(rightStick.GetPOV() == 45){
			cameraYValue = cameraYValue + 1;
			cameraXValue = cameraXValue + 1;
		}

		if(rightStick.GetPOV() == 315){
			cameraYValue = cameraYValue - 1;
			cameraXValue = cameraXValue + 1;
		}

		if(rightStick.GetPOV() == 225){
			cameraYValue = cameraYValue - 1;
			cameraXValue = cameraXValue - 1;
		}
*/
		if(leftStick.GetRawButton(6))
		{
			cameraXValue = 60;
			cameraYValue = 90;

		}


		cameraX.SetAngle(cameraXValue);
		cameraY.SetAngle(cameraYValue);
	}

	void hookPistonin()			//Method to retract piston on the arm
	{
		hookPiston.Set(DoubleSolenoid::kReverse);
	}

	void shootPistonIn()		//Method to retract shooting piston
	{
		if(autoLoopCounter < 50)
		{
			shootPiston.Set(DoubleSolenoid::kReverse);
			autoLoopCounter++;
		}
		shootPiston.Set(DoubleSolenoid::kOff);
	}

	void allPistonOff()
	{
		shootPiston.Set(DoubleSolenoid::kOff);
		doorSolenoid.Set(DoubleSolenoid::kOff);
		hookPiston.Set(DoubleSolenoid::kOff);

	}

	void armForward()	//Method to move arm forward
	{
		arm.Set(.5);
	}

	void elbowForward()	//Method to move elbow forward
	{
		elbow.Set(.5);
	}

	void armBackward()	//Method to move arm backward
	{
		arm.Set(-.3);
	}

	void elbowBackword()	//Method to move elbow backward
	{
		elbow.Set(-.5);
	}

	void Stop()	//Method to stop arm and elbow motors
	{
		arm.Set(0);
		elbow.Set(0);
	}

	void winchUP()//method to start winch and uses trigger on left stick to use robot drive slowly forward
	{
		winch.Set(1);

		while (leftStick.GetRawButton(1))// while using the winch if the trigger is pressed move drive system forward
		{
			//myRobot.Drive(-.2, 0);
			winch.Set(1);
		}
		//myRobot.Drive(0, 0);
	}

	void winchDown()//Method to start winch backward and uses trigger on left stick to use robot drive slowly backward
	{
		winch.Set(-.5);

		while (leftStick.GetRawButton(1)) // while using the winch if the trigger is pressed move drive system backward
		{
			//myRobot.Drive(.2, 0);
			winch.Set(-.5);
		}
		//myRobot.Drive(0, 0);
	}

	void winchStop()	//Stops winch moving
	{
		winch.Set(0);

	}

	void shooting()	//open servo door and uses trigger to puch out shooting piston
	{
		setServo();

		while (rightStick.GetRawButton(1))// if trigger is pressed the shooting piston will extend
		{
			TankDrive();

			autoLoopCounter = 0;
			shootPiston.Set(DoubleSolenoid::kForward);
		}
		shootPistonIn();
	}

	void TeleopInit()
	{

	}

	void TeleopPeriodic()
	{
		TankDrive();
		allPistonOff();
		Camera();
		shootPistonIn();
		setServo0();



		while (rightStick.GetRawButton(2))//use thumb button on side of joy stick to open servo door and trigger to extend piston and shoot ball
		{
			TankDrive();
			shooting();
		}
		setServo0();

		while (rightStick.GetRawButton(1))
		{	// While trigger is depressed use top lower thumb button to move elbow forward or backward
			TankDrive();
			while (rightStick.GetRawButton(3))
			{
				elbowForward();
			}

			while (rightStick.GetRawButton(4))
			{
				elbowBackword();
			}
			Stop();
		}

		while (rightStick.GetRawButton(4)) //	use the two thumb buttons on top joy stick to move entire arm
		{
			TankDrive();
			armForward();
		}

		while (rightStick.GetRawButton(3))
		{
			TankDrive();
			armBackward();
		}

		while(rightStick.GetRawButton(6))
		{
			hookPistonin();
		}

		while(rightStick.GetRawButton(5))
		{
			hookPiston.Set(DoubleSolenoid::kForward);
		}


		while (rightStick.GetRawButton(4)) //	use the two thumb buttons on top joy stick to move entire arm
		{
			TankDrive();
			armForward();
		}
		Stop();

		while (rightStick.GetRawButton(3))
		{
			TankDrive();
			armBackward();
		}
		Stop();




		while (leftStick.GetRawButton(4)) //Use left joy stick thumb button on top of joy stick to move
		{
			winchUP();	//winch up and use trigger to move drive system forward
		}
		winchStop();

		while (leftStick.GetRawButton(3)) //Use Left Joy stick thumb button on top of joy stick to move
		{
			winchDown();						// drive system backward
		}

		Stop();			// stop both arm and elbow motors

	}
	/*	DRIVING!!!
	 * TO drive this robot each joy stick controls on side of the drive system. the right joy stick controls the right track and
	 * the left joy stick controls the left track.
	 *
	 * SHOOTING!!!!
	 * To shoot balls out of the robot use the side thumb button on the right joy stick to operate the servo into the open position and
	 * use the trigger on the right joy stick to extend the piston and shoot the ball. the trigger will only work on this piston if the
	 * side thumb button is pressed
	 *
	 * ARM!!!
	 * To operate the arm piston press the trigger and use the thumb buttons on top of the right joy stick to change the angel of the
	 * arm piston. To change the angle of the arm use just the thumb buttons with out pressing the trigger.
	 *
	 * To extend the piston on the arm use the trigger on the left joy stick. All pistons will retract when you let go of the button
	 * that operates that piston
	 *
	 * WINCH
	 * The two thumb button on top of the left joy stick operates the winch while pressing either of the two use the trigger on the
	 * left joy stick to operate the drive system forward or back ward.







	*/

	void TestPeriodic()
	{
		lw->Run();
	}
};

START_ROBOT_CLASS(Robot)
