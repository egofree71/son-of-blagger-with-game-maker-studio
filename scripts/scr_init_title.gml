// The fonts used to display text
globalvar fonts;

// Initialize the fonts
fonts  = font_add_sprite(spr_fonts, ord(' '), false, 0);
draw_set_font(fonts);

// Disable anti-aliasing
texture_set_interpolation(false);

// Center the title
draw_set_halign (fa_center);


