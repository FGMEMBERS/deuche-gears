# =====
# Doors
# =====

Doors = {};

Doors.new = func {
   obj = { parents : [Doors],
           Lcrew : aircraft.door.new("instrumentation/doors/Lcrew", 4.0),
           Rcrew : aircraft.door.new("instrumentation/doors/Rcrew", 4.0),
           Lpassenger : aircraft.door.new("instrumentation/doors/Lpassenger", 4.0),
           Rpassenger : aircraft.door.new("instrumentation/doors/Rpassenger", 4.0),
           roof : aircraft.door.new("instrumentation/doors/roof", 10.0)
         };
   return obj;
};

Doors.Lcrewexport = func {
   me.Lcrew.toggle();
}

Doors.Rcrewexport = func {
   me.Rcrew.toggle();
}

Doors.Lpassengerexport = func {
   me.Lpassenger.toggle();
}

Doors.Rpassengerexport = func {
   me.Rpassenger.toggle();
}

Doors.roofexport = func {
   me.roof.toggle();
}

# ==============
# Initialization
# ==============

# objects must be here, otherwise local to init()
doorsystem = Doors.new();

