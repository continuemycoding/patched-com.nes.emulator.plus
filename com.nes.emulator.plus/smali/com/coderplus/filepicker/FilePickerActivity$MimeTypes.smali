.class Lcom/coderplus/filepicker/FilePickerActivity$MimeTypes;
.super Ljava/lang/Object;
.source "FilePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderplus/filepicker/FilePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MimeTypes"
.end annotation


# static fields
.field public static final _RegexFileTypeAudios:Ljava/lang/String; = "(?si).+\\.(mp[2-3]+|wav|aiff|au|m4a|ogg|raw|flac|mid|amr|aac|alac|atrac|awb|m4p|mmf|mpc|ra|rm|tta|vox|wma)"

.field public static final _RegexFileTypeCompressed:Ljava/lang/String; = "(?si).+\\.(zip|7z|lz?|[jrt]ar|gz|gzip|bzip|xz|cab|sfx|z|iso|bz?|rz|s7z|apk|dmg)"

.field public static final _RegexFileTypeImages:Ljava/lang/String; = "(?si).+\\.(gif|jpe?g|png|tiff?|wmf|emf|jfif|exif|raw|bmp|ppm|pgm|pbm|pnm|webp|riff|tga|ilbm|img|pcx|ecw|sid|cd5|fits|pgf|xcf|svg|pns|jps|icon?|jp2|mng|xpm|djvu)"

.field public static final _RegexFileTypePlainTexts:Ljava/lang/String; = "(?si).+\\.(txt|html?|json|csv|java|pas|php.+|c|cpp|bas|python|js|javascript|scala|xml|kml|css|ps|xslt?|tpl|tsv|bash|cmd|pl|pm|ps1|ps1xml|psc1|psd1|psm1|py|pyc|pyo|r|rb|sdl|sh|tcl|vbs|xpl|ada|adb|ads|clj|cls|cob|cbl|cxx|cs|csproj|d|e|el|go|h|hpp|hxx|l|m)"

.field public static final _RegexFileTypeVideos:Ljava/lang/String; = "(?si).+\\.(mp[4]+|flv|wmv|webm|m4v|3gp|mkv|mov|mpe?g|rmv?|ogv)"


# instance fields
.field final synthetic this$0:Lcom/coderplus/filepicker/FilePickerActivity;


# direct methods
.method constructor <init>(Lcom/coderplus/filepicker/FilePickerActivity;)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lcom/coderplus/filepicker/FilePickerActivity$MimeTypes;->this$0:Lcom/coderplus/filepicker/FilePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
