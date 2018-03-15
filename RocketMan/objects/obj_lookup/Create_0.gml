enum ABC {
	B,
	D,
	M,
	P,
	T
}

//General Variables

lower_case[ABC.B] = "b";
lower_case[ABC.D] = "d";
lower_case[ABC.M] = "m";
lower_case[ABC.P] = "p";
lower_case[ABC.T] = "t";

upper_case[ABC.B] = "B";
upper_case[ABC.D] = "D";
upper_case[ABC.M] = "M";
upper_case[ABC.P] = "P";
upper_case[ABC.T] = "T";

letter_name_sound[ABC.B] = snd_B;
letter_name_sound[ABC.D] = snd_D;
letter_name_sound[ABC.M] = snd_M;
letter_name_sound[ABC.P] = snd_P;
letter_name_sound[ABC.T] = snd_T;
//Note: call phonics_sound array

letter_sprite[ABC.B] = sLetterB;
letter_sprite[ABC.D] = sLetterD;
letter_sprite[ABC.M] = sLetterM;
letter_sprite[ABC.P] = sLetterP;
letter_sprite[ABC.T] = sLetterT;

//Word Specific Variables

enum word {
	one,
	two,
	three,
	four,
	five
}

letter_string[ABC.B,word.one] = "Book";
letter_string[ABC.B,word.two] = "Banana";
letter_string[ABC.B,word.three] = "Baby";
letter_string[ABC.B,word.four] = "Bear";
letter_string[ABC.B,word.five] = "Bee";

letter_string[ABC.D,word.one] = "Dinosaur";
letter_string[ABC.D,word.two] = "Doctor";
letter_string[ABC.D,word.three] = "Dog";
letter_string[ABC.D,word.four] = "Door";
letter_string[ABC.D,word.five] = "Dragon";

letter_string[ABC.M,word.one] = "Mom";
letter_string[ABC.M,word.two] = "Money";
letter_string[ABC.M,word.three] = "Monkey";
letter_string[ABC.M,word.four] = "Mat";
letter_string[ABC.M,word.five] = "Mouse";

letter_string[ABC.P,word.one] = "Pikachu";
letter_string[ABC.P,word.two] = "Pencil";
letter_string[ABC.P,word.three] = "Penguin";
letter_string[ABC.P,word.four] = "Pepper";
letter_string[ABC.P,word.five] = "Police";

letter_string[ABC.T,word.one] = "Toes";
letter_string[ABC.T,word.two] = "Toys";
letter_string[ABC.T,word.three] = "Tiger";
letter_string[ABC.T,word.four] = "Train";
letter_string[ABC.T,word.five] = "Trash";

color[0] = c_yellow;
color[1] = c_red;
color[2] = c_blue;
color[3] = c_purple;
color[4] = c_orange;
color[5] = c_green;
color[6] = c_black;