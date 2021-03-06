package org.liquidplayer.hemroid;

public class WebCoreGTK extends Hemroid {
    public WebCoreGTK(android.content.Context context) {
        super(context);
        loadLibrary("gnustl_shared");
        new ICUUC(context);
        new JavaScriptCoreGTK(context);
        new GTK(context);
        new GDK(context);
        new PangoCairo(context);
        new Pango(context);
        new ATK(context);
        new CairoGObject(context);
        new Cairo(context);
        new GDKPixbuf(context);
        new GIO(context);
        new GObject(context);
        new Glib(context);
        new Intl(context);
        new IConv(context);
        new Enchant(context);
        new FontConfig(context);
        new Freetype(context);
        new GModule(context);
        new Harfbuzz(context);
        new HarfbuzzICU(context);
        new JPEG(context);
        new Secret(context);
        new Soup(context);
        new XML2(context);
        new Hyphen(context);
        new PNG(context);
        new Sqlite3(context);
        new Webp(context);
        new GstApp(context);
        new GstBase(context);
        new GStreamer(context);
        new GstPbUtils(context);
        new GstAudio(context);
        new GstTag(context);
        new GstVideo(context);
        new GstFft(context);
        new ICUI18n(context);
        loadLibrary("WebCoreGTK");
    }
}