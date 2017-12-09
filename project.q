//This file was generated from (Commercial) UPPAAL 4.0.14 (rev. 5615), May 2014

/*

*/
E<> not deadlock

/*

*/
A<> (x>50&&cl>10) imply eyedetection.Alert_state

/*

*/
A<> ((x>0&&x<50)&&!eyedetected) imply eyedetection.Close_state

/*

*/
A<> ((x>0&&x<50)&&eyedetected) imply eyedetection.Open_state

/*

*/
E<>(eyedetection.eyes_Detected imply eyedetection.Open_state)

/*

*/
E<>(eyedetection.eyes_Detected imply eyedetection.Close_state)

/*

*/
E<>(eyedetection.Close_state imply eyedetection.Open_state)
