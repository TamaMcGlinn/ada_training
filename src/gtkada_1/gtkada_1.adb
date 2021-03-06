-- This is a simple ada program, that demonstrates gtkada
-- It draws just a window. The program exits only on CTRL-C.
-- It requires to have package gtkada installed.

-- build with command "gprbuild"
-- clean up with command "gprclean"

with gtk.main;
with gtk.window;

with ada.text_io;			use ada.text_io;

procedure gtkada_1 is

	window : gtk.window.gtk_window;
	
begin

	put_line ("init gtkada");

	-- initialize gtkada
	gtk.main.init;

	-- create the main window
	gtk.window.gtk_new (window);

	-- show the window
	window.show_all;

	-- All GTK applications must have a Gtk.Main.Main. Control ends here
	-- and waits for an event to occur (like a key press or a mouse event),
	-- until Gtk.Main.Main_Quit is called.
	gtk.main.main;
	
end;
