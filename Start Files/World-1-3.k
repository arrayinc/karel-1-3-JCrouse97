/*
 * File: World-1-3.k
 * ---------------------------
 * Uh oh. We've got MORE potholes. Ewww.
 * Let's automate this process with control statements!
 */
//***KAREL MUST START FACING RIGHT***

import "turns";

function up() {
	turnLeft();
	move();
	turnRight();
}

function right() {
	move();
}

function left() {
	turnAround();
	move();
	turnAround();
}

function down() {
	turnRight();
	move();
	turnLeft();
}

//-------------------------------

function checkFill(){
	down();
	if(noBeepersPresent()){
		putBeeper();
		up();
		right();
	} else {
		up();
		right();
	}
}

function checkPotholes() {
	while(frontIsClear()){
		if(rightIsClear()){
			checkFill();
		} else {
			right();
		}
	}
}

function FixPotHoles(){
	right();
	checkPotholes();
}
