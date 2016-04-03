
//Particle system
partGoop_sys = part_system_create();
part_system_depth(partGoop_sys, 1);

//Particle
partGoop = part_type_create();
part_type_shape(partGoop,spr_partPixel);
part_type_sprite(partGoop,spr_partPixel,false,false,false);
part_type_scale(partGoop,1,1);
part_type_size(partGoop,1,3,-0.001,0);
part_type_colour2(partGoop,c_green,c_olive);
part_type_alpha2(partGoop, 0.9,0.5);
part_type_speed(partGoop, 0,0.1,0,0);
part_type_direction(partGoop,0,360,0,0);
part_type_gravity(partGoop, 0.001, 270);
part_type_life(partGoop,room_speed,room_speed * 2);

//Paticle Emitter
partGoop_emit = part_emitter_create(partGoop_sys);

part_emitter_region(partGoop_sys,partGoop_emit,self.x,self.x-2,self.y,self.y -2,ps_shape_ellipse,ps_distr_linear);
part_emitter_burst(partGoop_sys,partGoop_emit,partGoop,30);

//part_system_destroy(partGoop_sys);

