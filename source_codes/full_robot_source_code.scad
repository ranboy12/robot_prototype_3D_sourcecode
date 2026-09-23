// =================================================================
// COMPLETE ROBOT MASTER ASSEMBLY (WITH COLOR CONFIGURATION)
// =================================================================
$fn = 80;

// --- MASTER EXPLODE CONTROL ---
explode_distance = 0; // Set to 0 for fully assembled, >0 for exploded view

// =================================================================
// COLOR PALETTE CONFIGURATION (Change colors here easily)
// =================================================================
color_head_face        = "yellow";
color_neck             = "black";
color_eye_ring         = "white";
color_pupil            = "black";
color_torso            = "white";
color_base             = "black";

// Auxiliary colors for internal boxes/components
color_speaker_box      = "gray";
color_mic_box          = "gray";

// =================================================================
// GLOBAL PARAMETERS
// =================================================================

// --- HEAD & NECK PARAMETERS ---
h_width = 110; h_height = 95; h_depth = 75; h_corner_r = 35; wall_thickness = 3;
ridge_outer = (53.0 + 10.0) / 2; ridge_inner = 43 / 2; ridge_height = 3.35; mount_radius_head = (26.5 * 2 + 10.0) / 2;
cut_y = -h_depth/2 + (0.40 * h_depth);
ridge_inner_front = 26.0 / 2; insert_hole_r = 4.2 / 2;
cam_z_center = -22.0; cam_lens_r = 7.8 / 2; cam_hole_w = 21.0; cam_hole_h = 12.5;
cam_z_bottom = 0.0; cam_z_top = cam_hole_h; cam_boss_r = 5.0 / 2; cam_screw_r = 1.8 / 2;
cam_boss_len_top = 6.0; cam_boss_len_bottom = cam_boss_len_top + 1.75;
eye_z_pos = -5;
ribbon_w_head = 29.0; ribbon_d_head = 12.0; horn_w = 9.0; horn_d = 18.0; servo_x = -5; servo_offset_y = -3.72; screw_clearance_r = 3.4 / 2; screw_head_r = 6.5 / 2; screw_r = 1.8 / 2;

mount_radius_neck = 26.5; mount_height_neck = 27.3; ridge_outer_neck = 47.0 / 2; ridge_inner_neck = 26.0 / 2; ridge_height_neck = 4.0;
collar_inner_r = 26.8; collar_outer_r = 31.5; ribbon_w_neck = 23.3; ribbon_d_neck = 10.0;
servo_length = 23.2; servo_width = 12.5; servo_height = 27.3; clr = 0.4; pocket_depth = 16.4; pocket_width = servo_width + (1 * clr);

// --- EYE PARAMETERS ---
eye_depth = 6.0; eye_outer_r = 11.53; pupil_r = 7.15; fit_clearance = 0.2;

// --- TORSO PARAMETERS ---
t_height = 210; t_width_base = 190; t_depth_base = 155; t_width_waist = 120; t_depth_waist = 110; t_width_chest = 135; t_depth_chest = 115;
dashboard_r = 24.0; switch_w = 15.0; switch_h = 21.0; dc_jack_r = 4.5; collar_top_z = t_height + 12;
spk_w = 47.0; spk_h = 47.0; spk_d = 32.0; w_th = 2.5; tol = 0;
mic_r = 59.4 / 2; mic_outer_r = mic_r + w_th; mic_inner_r = mic_r; mic_depth = 27.0; mic_wire_w = 2.9;
neck_base_z = collar_top_z - 12; spk_z_top = neck_base_z - 24 - mic_r; spk_x_top = 0.0;
spk_gap_from_mic = 15.0; spk_z_bottom = (spk_z_top - mic_outer_r) - spk_gap_from_mic - (spk_h / 2 + w_th); spk_x_bottom = 24.0;
torso_brass_insert_r = 4.2 / 2; torso_boss_outer_r = 8.0 / 2; spk_screw_hole_r = 3.4 / 2; ear_thick = 16.0;
spk_counterbore_r = 6.5 / 2; spk_counterbore_depth = 8.0; mic_screw_hole_r = 3.2 / 2; mic_self_tap_r = 2.4 / 2;
spk_screw_points = [ [-spk_x_bottom, -spk_h/2 - 7], [ spk_x_bottom, -spk_h/2 - 7], [ 0, spk_h/2 + 7] ];
mic_screw_points = [ [-mic_outer_r - 5, 0], [ mic_outer_r + 5, 0] ];
torso_screw_x = 68; torso_screw_z = 90; boss_radius = 8.5; torso_insert_hole_r = 4.2 / 2; screw_clear_r = 3.4 / 2; head_counter_r = 6.5 / 2; screw_total_depth = 11.0;
base_thick = 6.0; base_mount_x = 65.0; base_mount_y = 40.0; base_insert_r = 4.2 / 2; base_insert_h = 10.0; base_boss_r = 9.0; base_boss_h = 18.0;
base_mount_points = [ [-base_mount_x, -base_mount_y], [ base_mount_x, -base_mount_y], [-base_mount_x, base_mount_y], [ base_mount_x, base_mount_y] ];

// --- BASE & UPS BOX PARAMETERS ---
base_screw_hole_r = 3.4 / 2;
base_screw_head_r = 6.5 / 2;
ups_pcb_x = 96.11; ups_height = 23.0; wall_thick = 2.0;
box_inner_x = ups_pcb_x; box_inner_y = 85.0;
box_outer_x = box_inner_x; box_outer_y = box_inner_y; box_outer_z = ups_height;
hole_r = 2.5 / 2; post_r = 3.0;
corner_2_3 = [box_inner_x / 2, box_inner_y / 2];
wall3_span = 88.43;
corner_3_4 = [corner_2_3[0] - wall3_span, box_inner_y / 2];
mid_hole_x = corner_2_3[0] - 40;
wall4_x_pos = corner_3_4[0];
wall2_4_len = 60 + post_r;
new_hole_positions = [
    [corner_2_3[0], corner_2_3[1]],
    [corner_2_3[0], corner_2_3[1] - 58],
    [mid_hole_x, corner_2_3[1]],
    [corner_3_4[0], corner_3_4[1]],
    [corner_3_4[0], corner_3_4[1] - 58]
];
offset_from_edge_x = 50.0; offset_from_edge_y = 47.0;
box_pos_x = (-t_width_base / 2) + offset_from_edge_x + (box_outer_x / 2);
box_pos_y = (-t_depth_base / 2) + offset_from_edge_y + (box_outer_y / 2);

// =================================================================
// 1. EYE MODULES
// =================================================================
module eye_pupil() {
    color(color_pupil) cylinder(h=eye_depth, r=pupil_r, center=true);
}
module eye_outer_ring() {
    color(color_eye_ring) difference() {
        cylinder(h=eye_depth, r=eye_outer_r, center=true);
        cylinder(h=eye_depth + 1.0, r=pupil_r + fit_clearance, center=true);
    }
}
module full_eye() {
    eye_pupil();
    eye_outer_ring();
}

// =================================================================
// 2. HEAD & NECK MODULES
// =================================================================
module smooth_capsule_mesh(w, h, d, r) {
    minkowski() { cube([w - 2*r, d - 2*r, h - 2*r], center=true); sphere(r=r); }
}
module base_head_geometry() { smooth_capsule_mesh(h_width, h_height, d=h_depth, r=h_corner_r); }

module front_head_piece() {
    color(color_head_face) difference() {
        union() {
            difference() {
                union() {
                    hull() {
                        translate([0, 0, -2.0]) base_head_geometry();
                        translate([0, 0, -h_height/2]) cylinder(h=4.0, r=mount_radius_head, center=true);
                    }
                    translate([h_width/2 - 1, 0, 4 - 2.0]) rotate([0, 90, 0]) cylinder(h=10, r=18, center=true);
                    translate([-(h_width/2 - 1), 0, 4 - 2.0]) rotate([0, 90, 0]) cylinder(h=10, r=18, center=true);
                }
                translate([0, 0, -2.0 + wall_thickness]) scale([0.93, 0.90, 0.89]) base_head_geometry();
                translate([0, cut_y + h_depth, -2.0]) cube([h_width + 50, h_depth * 2, h_height + 50], center=true);
            }
            for (x_offset = [-cam_hole_w/2, cam_hole_w/2]) {
                translate([x_offset, -h_depth/2 + wall_thickness, cam_z_center + cam_z_top]) rotate([-90, 0, 0]) cylinder(h=cam_boss_len_top, r=cam_boss_r, center=false);
                translate([x_offset, -h_depth/2 + wall_thickness, cam_z_center + cam_z_bottom]) rotate([-90, 0, 0]) cylinder(h=cam_boss_len_bottom, r=cam_boss_r, center=false);
            }
        }
        for (x_side = [h_width/2 - 1, -(h_width/2 - 1)]) {
            translate([x_side, 0, 4 - 2.0]) rotate([90, 0, 0]) cylinder(h=30, r=insert_hole_r, center=true);
        }
        translate([0, 0, -h_height/2 - 5]) cylinder(h=50, r=ridge_inner_front + 0.5, center=true);
        translate([0, -9.5, -h_height/2]) cube([ribbon_w_head, ribbon_d_head, 60], center=true);
        translate([0, 0, cam_z_center]) rotate([90, 0, 0]) cylinder(h=h_depth, r=cam_lens_r, center=true); 
        for (x_eye = [-25, 25]) {
            translate([x_eye, 0, eye_z_pos]) rotate([90, 0, 0]) cylinder(h=h_depth, r=11.56, center=true);
        }
        for (x_offset = [-cam_hole_w/2, cam_hole_w/2]) {
            translate([x_offset, -h_depth/2 + wall_thickness - 0.1, cam_z_center + cam_z_top]) rotate([-90, 0, 0]) cylinder(h=cam_boss_len_top + 0.2, r=cam_screw_r, center=false);
            translate([x_offset, -h_depth/2 + wall_thickness - 0.1, cam_z_center + cam_z_bottom]) rotate([-90, 0, 0]) cylinder(h=cam_boss_len_bottom + 0.2, r=cam_screw_r, center=false);
        }
    }
}

module back_head_piece() {
    color(color_head_face) difference() {
        union() {
            difference() {
                union() {
                    hull() {
                        translate([0, 0, -2.0]) base_head_geometry(); 
                        translate([0, 0, -h_height/2]) cylinder(h=4.0, r=mount_radius_head, center=true); 
                    }
                    translate([h_width/2 - 1, 0, 4 - 2.0]) rotate([0, 90, 0]) cylinder(h=10, r=18, center=true); 
                    translate([-(h_width/2 - 1), 0, 4 - 2.0]) rotate([0, 90, 0]) cylinder(h=10, r=18, center=true); 
                }
                translate([0, 0, -2.0 + wall_thickness]) scale([0.90, 0.60, 0.92]) base_head_geometry(); 
                translate([0, cut_y - h_depth, -2.0]) cube([h_width + 50, h_depth * 2, h_height + 50], center=true); 
                for (x_side = [h_width/2 - 1, -(h_width/2 - 1)]) {
                    translate([x_side, 0, 4 - 2.0]) {
                        rotate([90, 0, 0]) translate([0, 0, -7]) cylinder(h=20, r=screw_clearance_r, center=false); 
                        rotate([90, 0, 0]) translate([0, 0, -25]) cylinder(h=28, r=screw_head_r, center=false); 
                    }
                }
            }
            translate([0, 0, -h_height/2 - 2.0 - ridge_height/2]) difference() {
                cylinder(h = ridge_height, r = ridge_outer, center = true); 
                cylinder(h = ridge_height + 1, r = ridge_inner, center = true); 
                cube([47.0 , 10.0 , ridge_height + 2.5], center = true); 
            }
        }
        translate([0, -9.5, -h_height/2]) cube([ribbon_w_head, ribbon_d_head, 60], center=true); 
        translate([servo_x, 3 + servo_offset_y, -h_height/2]) cube([horn_w, horn_d, 60], center=true); 
        for (pos = [[-6.5, -2.0 + 5], [ 6.5, -2.0 + 5]]) {
            translate([pos[0] + servo_x, pos[1] + servo_offset_y, -h_height/2 - 10]) cylinder(h=50, r=screw_r, center=false); 
        }
    }
}

module neck_piece() {
    color(color_neck) difference() { 
        cylinder(h = mount_height_neck, r = mount_radius_neck);
        translate([-servo_length/2 - clr, -pocket_width/2, -1]) cube([servo_length + (2*clr), pocket_width, pocket_depth ]);
        translate([-(servo_length + 2*clr)/2, -(servo_width + 2*clr)/2, -1]) cube([servo_length + (2*clr), servo_width + (2*clr), servo_height + 1]);
        translate([0, 0, mount_height_neck - 6]) cube([32.7, 14.0, 15.0], center = true);
        translate([0, -11.0, mount_height_neck / 2]) cube([ribbon_w_neck, ribbon_d_neck, mount_height_neck + 5], center = true);
        for(x = [-13.5, 13.5]) { 
            translate([x, 0, (pocket_depth - 9.0)/2 - 1]) cube([9.5, 10.0, pocket_depth - 9.0 + 1], center = true);
            translate([x, 0, pocket_depth - 4.0]) cylinder(h = 25, r = 2.1 / 2);
            translate([x, 0, pocket_depth + 6.0]) cube([4.5, 7.0, 12.0], center=true);
        }
        translate([0, 0, mount_height_neck - ridge_height_neck]) cylinder(h = ridge_height_neck + 0.1, r = ridge_outer_neck + 0.3);
        for(angle = [45, 145, 230, 325]) { 
            rotate([0, 0, angle]) translate([ (collar_inner_r + collar_outer_r)/2, 0, 14 ]) rotate([0, 90, 0]) cylinder(h=15, r=insert_hole_r, center=true);
        }
    }
}

// =================================================================
// 3. TORSO MODULES (SHARED GEOMETRY)
// =================================================================
module torso_solid_base_geometry() {
   hull() {
        translate([0, 0, 0]) scale([t_width_base/100, t_depth_base/100, 1]) cylinder(h=20, r=50, center=false);
        translate([0, -1, t_height * 0.45]) scale([t_width_waist/100, t_depth_waist/100, 1]) cylinder(h=10, r=50, center=true);
        translate([t_width_chest/2 - 22, -2, t_height - 28]) sphere(r=18); 
        translate([-(t_width_chest/2 - 22), -2, t_height - 28]) sphere(r=18);
        translate([0, -6, t_height - 28]) sphere(r=24); 
        translate([0, -3, collar_top_z - 2]) cylinder(h=2, r=collar_outer_r, center=true);
    }
}

// =================================================================
// 4. FRONT TORSO & INTERNAL BOXES
// =================================================================
module render_torso() {
    color(color_torso) intersection() {
        difference() {
            union() {
                 difference() {
                    torso_solid_base_geometry();
                    scale([0.945, 0.925, 0.955]) torso_solid_base_geometry();
                    intersection() {
                        scale([0.980, 0.975, 0.980]) torso_solid_base_geometry();
                        translate([0, 0, 28]) cube([t_width_base *0.45, t_depth_base * 2, 39], center=true);
                    }
                }
                intersection() {
                    translate([0, -t_depth_base/2 + 20, spk_z_bottom]) rotate([90, 0, 0]) {
                        for (pt = spk_screw_points) { translate([pt[0], pt[1], -spk_d/2]) cylinder(h=spk_d + 20, r=torso_boss_outer_r, center=false); }
                    }
                    scale([0.945, 0.925, 0.955]) torso_solid_base_geometry();
                }
                intersection() {
                    translate([spk_x_top, -t_depth_base/2 + mic_depth, spk_z_top]) rotate([90, 0, 0]) {
                        for (pt = mic_screw_points) { translate([pt[0], pt[1], -mic_depth/2]) cylinder(h=mic_depth + 20, r=torso_boss_outer_r, center=false); }
                    }
                    scale([0.945, 0.925, 0.955]) torso_solid_base_geometry();
                }
                intersection() {
                    union() {
                        for (pt = base_mount_points) { hull() { translate([pt[0], pt[1], 0]) cylinder(h=base_boss_h, r=base_boss_r); translate([pt[0] * 1.15, pt[1] * 1.15, 0]) cylinder(h=base_boss_h, r=base_boss_r); } }
                    }
                    torso_solid_base_geometry();
                }
                intersection() {
                    union() {
                        for(x_side = [-torso_screw_x, torso_screw_x]) { hull() { translate([x_side, 10, torso_screw_z]) rotate([90, 0, 0]) cylinder(h=boss_radius + 15, r=boss_radius, center=false); translate([x_side * 0.9, -25, torso_screw_z]) sphere(r=boss_radius); translate([x_side, 0, torso_screw_z]) sphere(r=boss_radius + 2); } }
                    }
                    scale([0.945, 0.925, 0.955]) torso_solid_base_geometry();
                }
            }
            translate([0, -t_depth_base/2 + 20, spk_z_bottom]) rotate([90, 0, 0]) {
                for (pt = spk_screw_points) { translate([pt[0], pt[1], -spk_d/2 - 1]) cylinder(h=spk_d-27, r=torso_brass_insert_r, center=false); }
            }
            translate([spk_x_top, -t_depth_base/2 + mic_depth, spk_z_top]) rotate([90, 0, 0]) {
                for (pt = mic_screw_points) { translate([pt[0], pt[1], -mic_depth/2 - 1]) cylinder(h=mic_depth + 30, r=mic_self_tap_r, center=false); }
            }
            for (pt = base_mount_points) { translate([pt[0], pt[1], -0.1]) cylinder(h=base_insert_h + 0.1, r=base_insert_r); }
            translate([0, 0, 52]) translate([0, t_depth_base/2, 0]) rotate([90, 0, 0]) cylinder(h=100, r=dashboard_r, center=true);
            translate([40, t_depth_base/2, 30]) rotate([90, 0, 0]) cube([switch_w, switch_h, 100], center=true); 
            translate([-42, t_depth_base/2, 30]) rotate([90, 0, 0]) cylinder(h=100, r=dc_jack_r, center=true);
            translate([0, -3, t_height - 30]) cylinder(h=collar_top_z - (t_height - 30) + 5, r=collar_inner_r, center=false);
            translate([0, -3, 0]) { 
                for(angle = [230, 325]) { rotate([0, 0, angle]) translate([ (collar_inner_r + collar_outer_r)/2, 0, t_height + 4 ]) rotate([0, 90, 0]) { cylinder(h=30, r=screw_clear_r, center=true); translate([0, 0, 6]) cylinder(h=6, r=head_counter_r, center=true); } }
            }
            for(x_side = [-torso_screw_x, torso_screw_x]) {
                translate([x_side, 0.01, torso_screw_z]) rotate([90, 0, 0]) cylinder(h=screw_total_depth, r=torso_insert_hole_r, center=false);
            }
            for (pt = [[-spk_x_bottom, spk_z_bottom], [spk_x_bottom, spk_z_bottom]]) { 
                translate([pt[0], -t_depth_base/2 + 2, pt[1]]) rotate([90, 0, 0]) { for (r_ring = [7 : 4.5 : 24]) { step_angle = (r_ring < 12) ? 30 : ((r_ring < 20) ? 20 : 15); for (a_hole = [0 : step_angle : 359]) { rotate([0, 0, a_hole]) translate([r_ring, 0, 0]) cylinder(h=120, r=1.3, center=true); } } }
            }
            translate([spk_x_top, -t_depth_base/2 + 2, spk_z_top]) rotate([90, 0, 0]) {
                cylinder(h=120, r=1.5, center=true);
                for (r_ring = [7 : 4.5 : 26]) { step_angle = (r_ring < 12) ? 30 : ((r_ring < 20) ? 20 : 15); for (a_hole = [0 : step_angle : 359]) { rotate([0, 0, a_hole]) translate([r_ring, 0, 0]) cylinder(h=120, r=1.3, center=true); } }
            }
        }
        translate([0, -t_depth_base + 0.01, (t_height + base_thick)/2 + base_thick]) cube([t_width_base + 50, t_depth_base * 2, t_height], center=true);
    }
}

module render_speaker_box() {
    color(color_speaker_box) intersection() {
        translate([0, -t_depth_base/2 + 20, spk_z_bottom]) rotate([90, 0, 0]) difference() {
            union() {
                hull() { translate([spk_x_bottom, 0, 0]) cube([spk_w + 2*w_th, spk_h + 2*w_th, spk_d * 2], center=true); translate([-spk_x_bottom, 0, 0]) cube([spk_w + 2*w_th, spk_h + 2*w_th, spk_d * 2], center=true); }
                for (pt = spk_screw_points) { hull() { translate([pt[0], pt[1], -spk_d + ear_thick/2]) cylinder(h=ear_thick, r=torso_boss_outer_r, center=true); translate([pt[0], (pt[1] > 0) ? spk_h/2 : -spk_h/2, -spk_d + ear_thick/2]) cylinder(h=ear_thick, r=torso_boss_outer_r, center=true); } }
            }
            translate([spk_x_bottom, 0, 0]) cube([spk_w + tol, spk_h + tol, spk_d * 2 + 2], center=true);
            translate([-spk_x_bottom, 0, 0]) cube([spk_w + tol, spk_h + tol, spk_d * 2 + 2], center=true);
            for (pt = spk_screw_points) { translate([pt[0], pt[1], -spk_d + ear_thick/2]) cylinder(h=ear_thick + 10, r=spk_screw_hole_r, center=true); translate([pt[0], pt[1], -spk_d - 0.1]) cylinder(h=spk_counterbore_depth + 0.1, r=spk_counterbore_r, center=false); }
        }
        scale([0.94, 0.92, 0.95]) torso_solid_base_geometry();
    }
}

module render_mic_box() {
    color(color_mic_box) intersection() {
        translate([spk_x_top, -t_depth_base/2 + mic_depth, spk_z_top]) rotate([90, 0, 0]) difference() {
            union() {
                cylinder(h=mic_depth * 2, r=mic_outer_r, center=true);
                for (pt = mic_screw_points) { hull() { translate([pt[0], pt[1], -mic_depth + ear_thick/2]) cylinder(h=ear_thick, r=torso_boss_outer_r, center=true); translate([pt[0] * 0.7, pt[1], -mic_depth + ear_thick/2]) cylinder(h=ear_thick, r=torso_boss_outer_r, center=true); } }
            }
            cylinder(h=mic_depth * 2 + 2, r=mic_inner_r, center=true);
            rotate([0, 0, -60]) translate([0, -mic_outer_r, 0]) cube([mic_wire_w, mic_outer_r * 2, mic_depth * 2 + 5], center=true);
            for (pt = mic_screw_points) { translate([pt[0], pt[1], -mic_depth + ear_thick/2]) cylinder(h=ear_thick + 10, r=mic_screw_hole_r, center=true); }
        }
        scale([0.94, 0.92, 0.95]) torso_solid_base_geometry();
    }
}

// =================================================================
// 5. REAR TORSO
// =================================================================
module rear_torso() {
    color(color_torso) intersection() { 
        difference() { 
            union() { 
                difference() {
                    torso_solid_base_geometry();
                    scale([0.945, 0.925, 0.955]) torso_solid_base_geometry();
                    intersection() { scale([0.980, 0.975, 0.980]) torso_solid_base_geometry(); translate([0, 0, 25]) cube([t_width_base *0.65, t_depth_base * 2, 35], center=true); }
                }
                intersection() {
                    union() { for (pt = base_mount_points) { hull() { translate([pt[0], pt[1], 0]) cylinder(h=base_boss_h, r=base_boss_r); translate([pt[0] * 1.15, pt[1] * 1.15, 0]) cylinder(h=base_boss_h, r=base_boss_r); } } }
                    torso_solid_base_geometry();
                }
                intersection() {
                    union() { for(x_side = [-torso_screw_x, torso_screw_x]) { hull() { translate([x_side, -10, torso_screw_z]) rotate([-90, 0, 0]) cylinder(h=boss_radius + 15, r=boss_radius, center=false); translate([x_side * 0.9, 25, torso_screw_z]) sphere(r=boss_radius); translate([x_side, 0, torso_screw_z]) sphere(r=boss_radius + 2); } } }
                    scale([0.945, 0.925, 0.955]) torso_solid_base_geometry();
                }
            }
            
            for (pt = base_mount_points) { translate([pt[0], pt[1], -0.1]) cylinder(h=base_insert_h + 0.1, r=base_insert_r); }
            translate([0, -3, t_height - 30]) cylinder(h=60, r=collar_inner_r, center=false);
            translate([0, -3, 0]) { 
                for(angle = [45, 145]) { rotate([0, 0, angle]) translate([ (collar_inner_r + collar_outer_r)/2, 0, t_height + 4 ]) rotate([0, 90, 0]) { cylinder(h=30, r=screw_clear_r, center=true); translate([0, 0, 7]) cylinder(h=6, r=head_counter_r, center=true); } }
            }
            for(x_side = [-torso_screw_x, torso_screw_x]) {
                translate([x_side, 0, torso_screw_z]) rotate([90, 0, 0]) cylinder(h=160, r=screw_clear_r, center=true);
                translate([x_side, t_depth_base/2 + 0.1, torso_screw_z]) rotate([90, 0, 0]) cylinder(h=(t_depth_base/2) - 4.5, r=head_counter_r, center=false);
            }
            
            // Vent Holes
            translate([0, 0, 178]) { for(i = [-3.5 : 3.5]) { translate([i * 6.5, t_depth_base/2, 0]) rotate([90, 0, 0]) hull() { translate([0, 3, 0]) cylinder(h=150, r=1.2, center=true); translate([0, -3, 0]) cylinder(h=150, r=1.2, center=true); } } }
            translate([0, 0, 50]) { for(i = [-7 : 7]) { translate([i * 5.5, t_depth_base/2, 0]) rotate([90, 0, 0]) hull() { translate([0, 3, 0]) cylinder(h=150, r=1.2, center=true); translate([0, -3, 0]) cylinder(h=150, r=1.2, center=true); } } }
            
            // Port Panel
            translate([0, t_depth_base * 0.30, 0]) { 
                translate([0, 0, 67]) rotate([90, 0, 0]) union() { cube([19, 9.4, 60], center=true); translate([-14.5, 0, 0]) cylinder(h=30, r=1.42, center=true); translate([14.5, 0, 0]) cylinder(h=30, r=1.42, center=true); }
                translate([0, 0, 113]) rotate([90, 0, 0]) cylinder(h=60, r=10.65, center=true);
                translate([0, 0, 135]) rotate([90, 0, 0]) union() { cube([12.4, 9, 30], center=true); translate([-8.35, 0, 0]) cylinder(h=30, r=1.42, center=false); translate([8.35, 0, 0]) cylinder(h=30, r=1.42, center=false); }
                translate([0, 0, 85]) rotate([90, 0, 0]) cylinder(h=60, r=5.75, center=true);
            }
        }
        translate([0, t_depth_base - 0.01, (t_height + base_thick)/2 + base_thick]) cube([t_width_base + 50, t_depth_base * 2, t_height], center=true);
    }
}

// =================================================================
// 6. BASE & UPS BOX MODULE
// =================================================================
module colored_ups_box() {
    translate([box_pos_x, box_pos_y, base_thick]) {
        difference() {
            union() {
                color(color_base) {
                    translate([corner_2_3[0] + wall_thick/2, (box_inner_y/2) - (wall2_4_len/2), box_outer_z/2])
                        cube([wall_thick, wall2_4_len, box_outer_z], center=true);
                    translate([wall4_x_pos - wall_thick/2, (box_inner_y/2) - (wall2_4_len/2), box_outer_z/2])
                        cube([wall_thick, wall2_4_len, box_outer_z], center=true);
                }
                color(color_base) {
                    wall3_center_x = (corner_2_3[0] + corner_3_4[0]) / 2;
                    translate([wall3_center_x, box_inner_y/2 + wall_thick/2, box_outer_z/2])
                        cube([wall3_span + (wall_thick * 2), wall_thick, box_outer_z], center=true);
                }
                color(color_base) {
                    for (pos = new_hole_positions) {
                        translate([pos[0], pos[1], 0]) cylinder(h=box_outer_z, r=post_r);
                    }
                }
            }
            for (pos = new_hole_positions) {
                translate([pos[0], pos[1], -1]) cylinder(h=box_outer_z + 2, r=hole_r);
            }
            translate([(corner_2_3[0] + wall_thick - 0.4), (box_inner_y/2) - (wall2_4_len/2), box_outer_z/2]) rotate([90, 0, 90]) {
                linear_extrude(height = 1.0) text("2", size = 6, font = "Liberation Sans:style=Bold", halign = "center", valign = "center");
            }
            wall3_center_x = (corner_2_3[0] + corner_3_4[0]) / 2;
            translate([wall3_center_x, (box_inner_y/2 + wall_thick - 0.4), box_outer_z/2]) rotate([90, 0, 180]) {
                linear_extrude(height = 1.0) text("3", size = 6, font = "Liberation Sans:style=Bold", halign = "center", valign = "center");
            }
            translate([wall4_x_pos - wall_thick + 0.4, (box_inner_y/2) - (wall2_4_len/2), box_outer_z/2]) rotate([90, 0, 270]) {
                linear_extrude(height = 1.0) text("4", size = 6, font = "Liberation Sans:style=Bold", halign = "center", valign = "center");
            }
        }
    }
}

module robot_base_plate() {
    color(color_base)
    difference() {
        union() {
            intersection() {
                torso_solid_base_geometry();
                translate([0, 0, base_thick/2]) 
                    cube([t_width_base + 30, t_depth_base + 30, base_thick], center=true);
            }
            colored_ups_box();
        }
        for (pt = base_mount_points) {
            translate([pt[0], pt[1], -1]) {
                cylinder(h=base_thick + 2, r=base_screw_hole_r);
                cylinder(h=3.0, r=base_screw_head_r);
            }
        }
        translate([0, -base_mount_y , -0.1]) rotate([0, 0, 0]) {
            linear_extrude(height = 0.9) text("F", size = 6, font = "Liberation Sans:style=Bold", halign = "center", valign = "center");
        }
        translate([0, base_mount_y , -0.1]) rotate([0, 0, 180]) {
            linear_extrude(height = 0.9) text("B", size = 6, font = "Liberation Sans:style=Bold", halign = "center", valign = "center");
        }
    }
}

// =================================================================
// MAIN ASSEMBLY SCRIPT
// =================================================================
module main_assembly() {
    // 0. Render Base Plate (Shifted downwards during exploded view)
    translate([0, 0, -explode_distance]) robot_base_plate();

    // 1. Render Torso Components
    translate([0, -explode_distance, 0]) render_torso();
    translate([0, -explode_distance * 2, 0]) render_speaker_box();
    translate([0, -explode_distance * 2, 0]) render_mic_box();
    translate([0, explode_distance, 0]) rear_torso();
    
    // 2. Render Head & Neck Components
    translate([0, 0, collar_top_z + mount_height_neck + h_height/2 - 12 + explode_distance]) {
        translate([0, 0, -h_height/2 - mount_height_neck - explode_distance]) neck_piece();
        translate([0, explode_distance, 0]) back_head_piece();
        translate([0, -explode_distance, 0]) {
            front_head_piece();
            for (x_eye = [-25, 25]) {
                translate([x_eye, -h_depth/2 + eye_depth/2 + wall_thickness + 1, eye_z_pos]) 
                    rotate([90, 0, 0]) full_eye();
            }
        }
    }
}

// Render the final Robot
main_assembly();