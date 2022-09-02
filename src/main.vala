void init(Gtk.Window window, string[] args)
{
    window.title = "Notation";
    window.border_width = 10;
    window.window_position = Gtk.WindowPosition.CENTER;
    window.set_default_size(800, 500);
    window.destroy.connect(Gtk.main_quit);
    window.show_all();
}

int main (string[] args)
{
    Gtk.init(ref args);
    var window = new Gtk.Window();
    
    init(window, args);
    Gtk.main();
    return (0);
}
