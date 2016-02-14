module UI
    def self.add_context_menu_handler
    end

    # @example
    #   UI.beep
    def self.beep
    end

    def self.create_cursor(filename, hot_x, hot_y)
    end
    def self.inputbox(*args)
    end
    def self.inspector_names
    end

    # Used to access SketchUp menus in order to add menu items.
    #
    # Valid Strings are:
    #     File, Edit, View, Camera, Draw, Tools, Window, Plugins, Help
    #
    # User-defined top-level menus will not be added., although users may define {Sketchup::Menu#add_submenu sub-menus}.
    #
    # A mis-typed menu name _may_ return one of the valid menu with no error given, or
    # it may produce an error.
    #
    # The *Plugins* menu may or may not be visible when SketchUp starts. It will be created
    # upon the first access.
    #
    # References to Menus are time-sensitive. You have a limited amount of time to add your menu items 
    # before the menu reference no longer works. No error given in this case.
    #
    # @example
    #   menu = UI.menu("Plugins")
    #   menu.add_item("My Plugin") { UI.messagebox("Hello!") }
    #
    # @param [String] menu_name the name of an existing SketchUp menu.
    #
    # @return [Sketchup::Menu] a menu object
    def self.menu(menu_name = nil)
    end

    # Creates a dialog box containing static text with a series of buttons for the user to choose from.
    # @param [String] message  The message that you want to appear in the message box.
    # @param [Integer] type    Optionally a constant that represents the messagebox type, which buttons it shows.
    # @return [Integer] A number matching a constant that represents what button the user pressed.
    #   Use the following constants to check what the user selected:
    #   IDOK, IDCANCEL, IDABORT, IDRETRY, IDIGNORE, IDYES, IDNO
    def self.messagebox(message, type=MB_OK)
    end
    
    # Display a list of the names of the available tabs in the Model Info Window.
    def self.model_info_pages
    end

    def self.openURL(url)
    end

    # File selection dialog, in which the user can select from existing files.
    # @param [String] title  The title to show on the file selection dialog's titlebar.
    # @param [String] path   The path of the folder to show initially.
    # @param [String] filename  A default selected filename. On Windows, this can also be a file filter
    #   for the file format dropdown to filter which files are displayed.
    #   The file filter follows this pattern:
    #   `UIname1|wildcard1|UIname2|wildcard21;wildcard2b||``
    # @return [String, nil] The full path ane name of the selected file or nil if the dialog was cancelled.
    # @note Take care to check that not nil was returned before continuing with operations on the path.
    # @version 2014
    # @example
    #  chosen_model = UI.openpanel("Open SKP File", "c:/", "model.skp")
    #  chosen_image = UI.openpanel("Open Image File", "c:/", "Image Files|*.jpg;*.png;||")
    #  chosen_file  = UI.openpanel("Open CAD File", "c:/", "DXF|*.dxf|DWG|*.dwg||")
    def self.openpanel(title=nil, path=nil, filename=nil)
    end

    def self.play_sound(filename)
    end
    
    # @see show_preferences
    def self.preferences_pages
    end

    def self.refresh_inspectors
    end

    # File save dialog.
    # @param [String] title  The title to show on the file selection dialog's titlebar.
    # @param [String] path   The path of the folder to show initially.
    # @param [String] filename  A default filename. On Windows, this can also be a file filter
    #   for the file format dropdown to filter which files are displayed.
    #   The file filter follows this pattern:
    #   `UIname1|wildcard1|UIname2|wildcard21;wildcard2b||``
    # @return [String, nil] The full path ane name of the selected file or nil if the dialog was cancelled.
    # @note Take care to check that not nil was returned before continuing with operations on the path.
    def self.savepanel(title=nil, path=nil, filename=nil)
    end

    # @since 2015
    # @param [Hash] opts the options
    # @option opts [String] :title
    # @option opts [String] :directory
    # @option opts [Boolean] :select_multiple false
    #
    # @return [String, Array, nil] nil if user cancel
    def self.select_directory(opts = {})
    end

    def self.set_cursor(cursor_id)
    end

    def self.set_toolbar_visible(name, visible)
    end

    def self.show_inspector(name)
    end

    def self.show_model_info(page)
    end

    def self.show_preferences(page)
    end

    # The start_timer method is used to start a timer and execute deferred code.
    # @param [Numeric] interval The time in seconds before your code should be called.
    # @param [Boolean] repeat whether to repeat the timer
    # @yield The procedure you want to execute after the amount of seconds has expired.
    # @return [Fixnum] id a timer ID to identify the timer for stopping it
    # @note In SketchUp 7.1 and lower, the interval was rounded down to the nearest integer. A timer with interval 0.9
    #   would execute immediately.
    # @note There is a bug that if you open a modal window in a non-repeating timer the timer will repeat until the
    #   window is closed.
    def self.start_timer(interval, repeat=false, &block)
    end

    # The stop_timer method is used to stop a timer based on its id.
    # @param [Fixnum] id The timer id for the timer that you want to stop.
    # @return [nil]
    def self.stop_timer(id)
    end
    
    def self.toolbar(name)
    end

    def self.toolbar_names
    end

    def self.toolbar_visible?(name)
    end
end
