// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function Controls_Input()
{
	//-- MOVE PLAYER - MOVE MENU --//
	key_left = keyboard_check(vk_left) || keyboard_check(ord("A")) || gamepad_button_check(0, gp_padl) || gamepad_axis_value(0, gp_axislh) < -0.5;
	key_right = keyboard_check(vk_right) || keyboard_check(ord("D")) || gamepad_button_check(0, gp_padr) || gamepad_axis_value(0, gp_axislh) > 0.5;
	key_up = keyboard_check(vk_up) || keyboard_check(ord("W")) || gamepad_button_check(0, gp_padu) || gamepad_axis_value(0, gp_axislv) < -0.5;
	key_down = keyboard_check(vk_down) || keyboard_check(ord("S")) || gamepad_button_check(0, gp_padd) || gamepad_axis_value(0, gp_axislv) > 0.5;
	
	//-- ACTION - MENU --//
	key_X = keyboard_check_pressed(ord("X")) || gamepad_button_check_pressed(0, gp_face1) || mouse_check_button_pressed(mb_right)
	key_back =  keyboard_check_pressed(ord("Z")) || gamepad_button_check_pressed(0, gp_face2)
	
	
	//-- TRIGGERS - SHOOT --// 
	key_shoot = mouse_check_button(mb_left) || gamepad_button_check(0, gp_shoulderr)
	key_laser = mouse_check_button(mb_left) || gamepad_button_check(0, gp_shoulderrb)
	
	//--- COLLECTION B-SIDE ACCESS --//
	key_R2 =  gamepad_button_check_pressed(0, gp_shoulderrb);
	key_B = keyboard_check_pressed(ord("B"))
	
	//---- HOLD TRIGGERS -
	key_r1Down =  gamepad_button_check(0, gp_shoulderr);
	key_l1Down =  gamepad_button_check(0, gp_shoulderl);
	key_r2Down =  gamepad_button_check(0, gp_shoulderrb);
	key_l2Down =  gamepad_button_check(0, gp_shoulderlb);
	
	//-- BOMB --//
	key_bomb = mouse_check_button(mb_middle) || gamepad_button_check(0, gp_shoulderl)
	key_bomb_pressed = mouse_check_button_pressed(mb_middle) || gamepad_button_check_pressed(0, gp_shoulderl)
	key_bomb_released = mouse_check_button_released(mb_middle) || gamepad_button_check_released(0, gp_shoulderl)
	
	//-- MOVE PRESSED ONCE--/
	key_upP = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W")) || gamepad_button_check_pressed(0, gp_padu)// || gamepad_axis_value(0, gp_axislv) < -0.5;
	key_downP = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S")) || gamepad_button_check_pressed(0, gp_padd) //|| gamepad_axis_value(0, gp_axislv) > 0.5;
	key_leftP = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A")) || gamepad_button_check_pressed(0, gp_padl);
	key_rightP = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D")) || gamepad_button_check_pressed(0, gp_padr);
	
	//-- RIGHT BUTTONS --//
	key_buttonUP = gamepad_button_check_pressed(0, gp_face4);
	key_buttonR = gamepad_button_check_pressed(0, gp_face2);
	key_buttonL = gamepad_button_check_pressed(0, gp_face3);
	
	//-- LEFT BUTTONS --//
	key_objectUp = gamepad_button_check_pressed(0, gp_padu);
	
	//-- PRESS JOYSTICK (P.E.T.A) --//
	key_r3Down = gamepad_button_check(0, gp_stickr);
	key_l3Down = gamepad_button_check(0, gp_stickl);
	
	key_l3Down_p = gamepad_button_check_pressed(0, gp_stickl);
	key_r3Down_p = gamepad_button_check_pressed(0, gp_stickr);
	
	//-- SLOWMO --//
	key_BulletTime = gamepad_button_check(0, gp_shoulderlb);
	
	//--SELECT - START --//
	key_select = gamepad_button_check_pressed(0, gp_select) || keyboard_check_pressed(ord("R"));
	key_start = gamepad_button_check_pressed(0,gp_start) || keyboard_check(ord("P"));
}