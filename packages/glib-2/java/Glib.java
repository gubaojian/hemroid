package org.liquidplayer.hemroid;

public class Glib extends Hemroid {
    public Glib(android.content.Context context) {
        super(context);
        new FFI(context);
        loadLibrary("glib-2.0");
    }
}