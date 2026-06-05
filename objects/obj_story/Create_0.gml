messages = [
    { text: "Жили были три расы", frame: 0 },
    { text: "Человек, жёлтые, красные", frame: 0 },
    { text: "Жёлтые и красные дружили, но они поссорились", frame: 1 },
    { text: "Люди ненавидели Жёлтых и Красных", frame: 2 },
    { text: "И они начали войну...", frame: 4 },
    { text: "Из-за войны люди отправили Красных и Жёлтых в космос", frame:  3},
    { text: "И начались действия игры...", frame: 56 }
];
story_sprite = spr_1;
current_message = 0;
text_full = messages[current_message]; 
text_current_length = 0;
text_speed = 0.5;
padding = 20;        
box_width = 600;     
box_color = c_white;
box_alpha = 0.8;
current_message = 0;
text_full = messages[current_message].text;
current_frame = messages[current_message].frame;
text_current_length = 0;
text_speed = 0.5;