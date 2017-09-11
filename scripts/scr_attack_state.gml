///scr_attack_state
image_speed = .5;

switch (sprite_index) {
     case spr_player_down:
        sprite_index = spr_playerattack_down;
        break;
        
      case spr_player_up:
        sprite_index = spr_playerattack_up;
        break;
        
      case spr_player_right:
        sprite_index = spr_playerattack_right;
        break;
        
      case spr_player_left:
        sprite_index = spr_playerattack_left;
        break;
        
}
if (image_index >= 3 and attacked == false) {
    var xx = 0;
    var yy = 0;
    switch (sprite_index) {
         case spr_playerattack_down:
            xx = x;
            yy = y+12;
            break;
            
          case spr_playerattack_up:
          xx = x;
            yy = y-10;
            break;
            
          case spr_playerattack_right:
          xx = x+10;
            yy = y+2;
            break;
            
          case spr_playerattack_left:
          xx = x-10;
            yy = y+2;
            break;
}
    var damage = instance_create(xx ,yy, obj_damage);
    damage.creator = id;
    damage.damage = obj_player_stats.attack;
    attacked = true;
}
