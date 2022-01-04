with Gtk.Box;         use Gtk.Box;
with Gtk.Label;       use Gtk.Label;
with Gtk.Widget;      use Gtk.Widget;
with Gtk.Main;
with Gtk.Window;       use Gtk.Window;
with Gtk.GEntry;       use Gtk.GEntry;
with Gtk.Grid;         use Gtk.Grid;
with Gtk.Button;       use Gtk.Button;


procedure Main is

   Win   : Gtk_Window;
   Label : Gtk_Label;
   user_name_entry : Gtk_Entry;
   password_entry : Gtk_Entry;
   grid : Gtk_Grid;
   submit : Gtk_Button;


begin
   --  Initialize GtkAda.
   Gtk.Main.Init;

   --  Create a window with a size of 400x400
   Gtk_New (Win);
   Win.Set_Default_Size (400, 400);

   --  Create a box to organize vertically the contents of the window
   Gtk_New (grid);
   Win.Add(grid);
   Win.Set_Border_Width(115);

   --  Add a label
   Gtk_New (Label, "Login");
   grid.Attach(Label, 0, 0, 2, 1);

   --Add username_entry
   Gtk_New(user_name_entry);
   grid.Attach(user_name_entry, 0, 1, 2, 1);


   --Add password_entry
   Gtk_New(password_entry);
   grid.Attach(password_entry, 0, 2, 2, 1);
   --password_entry.Set_Tooltip_Text("*");
   password_entry.Set_Visibility(False);


   --Add submit button
   Gtk_New(submit, "Submit");
   grid.Attach(submit, 0, 3, 2, 1);


   --  Show the window and present it
   Win.Show_All;
   Win.Present;

   --  Start the Gtk+ main loop
   Gtk.Main.Main;
end Main;
