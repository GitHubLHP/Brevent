# To enable ProGuard in your project, edit project.properties
# to define the proguard.config property as described in that file.
#
# Add project specific ProGuard rules here.
# By default, the setFlags in this file are appended to setFlags specified
# in ${sdk.dir}/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the ProGuard
# include property in project.properties.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:

-keepattributes SourceFile,LineNumberTable,EnclosingMethod

# for brevent-server
-keep class android.support.v4.util.ArraySet {
    public *;
}
-keep class android.support.v4.util.SimpleArrayMap {
    public *;
}
-keepnames class android.support.v4.util.** { *; }
-keep class org.slf4j.impl.StaticLoggerBinder {
    public *;
}
-keep interface org.slf4j.ILoggerFactory { *; }
-keep interface org.slf4j.Logger { *; }
-keepnames class org.slf4j.** { *; }

-keep class com.android.vending.billing.**

-keep public !final class me.piebridge.brevent.protocol.Brevent** {
    public !static <fields>;
    public <init>(*);
    public <methods>;
}

-keep public class me.piebridge.brevent.override.HideApiOverride** {
    public *;
}

-keep class me.piebridge.EventHandler { *; }

-keep class me.piebridge.LogReader { *; }

-dontwarn me.piebridge.brevent.override.HideApiOverride*

-dontnote com.google.android.gms.ads.AdView

-dontnote android.widget.SearchView

# -repackageclasses ''

# -allowaccessmodification
