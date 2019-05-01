if( m_wave_start ) {
	m_wave_over = false;
	m_open = false;
	image_speed = 1;
	sprite_index = shop_closed_img;
}

if( m_wave_over && ( 
	( ( sprite_index == shop_opened_img ) || ( sprite_index == shop_flashing ) )
	&& ( image_index >= 9 ) ) && !m_wave_start ) {
	m_open = true;
	sprite_index = shop_flashing;
	
} else if( m_wave_over && !m_open ) {
	m_wave_start = false;
	image_speed = 1;
	sprite_index = shop_opened_img;
}

if( m_wave_start && ( ( sprite_index == shop_closed_img ) && ( image_index >= 12 ) ) && !m_wave_over ) {
	image_speed = 0;
}

if( m_open ) {
	// TODO: shopping code
}

