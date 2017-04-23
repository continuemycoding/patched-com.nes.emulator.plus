.class public final Lorg/acra/ACRAConstants;
.super Ljava/lang/Object;
.source "ACRAConstants.java"


# static fields
.field static final APPROVED_SUFFIX:Ljava/lang/String; = "-approved"

.field public static final DEFAULT_APPLICATION_LOGFILE:Ljava/lang/String; = ""

.field public static final DEFAULT_APPLICATION_LOGFILE_LINES:I = 0x64

.field public static final DEFAULT_BUFFER_SIZE_IN_BYTES:I = 0x2000

.field public static final DEFAULT_CONNECTION_TIMEOUT:I = 0xbb8

.field public static final DEFAULT_DELETE_OLD_UNSENT_REPORTS_ON_APPLICATION_START:Z = true

.field public static final DEFAULT_DELETE_UNAPPROVED_REPORTS_ON_APPLICATION_START:Z = true

.field public static final DEFAULT_DIALOG_ICON:I = 0x1080027

.field public static final DEFAULT_DISABLE_SSL_CERT_VALIDATION:Z = false

.field public static final DEFAULT_DROPBOX_COLLECTION_MINUTES:I = 0x5

.field public static final DEFAULT_FORCE_CLOSE_DIALOG_AFTER_TOAST:Z = false

.field public static final DEFAULT_GOOGLE_FORM_URL_FORMAT:Ljava/lang/String; = "https://docs.google.com/spreadsheet/formResponse?formkey=%s&ifq"

.field public static final DEFAULT_INCLUDE_DROPBOX_SYSTEM_TAGS:Z = false

.field public static final DEFAULT_LOGCAT_FILTER_BY_PID:Z = false

.field public static final DEFAULT_LOGCAT_LINES:I = 0x64

.field public static final DEFAULT_MAX_NUMBER_OF_REQUEST_RETRIES:I = 0x3

.field public static final DEFAULT_NOTIFICATION_ICON:I = 0x1080078

.field public static final DEFAULT_RES_VALUE:I = 0x0

.field public static final DEFAULT_SEND_REPORTS_IN_DEV_MODE:Z = true

.field public static final DEFAULT_SHARED_PREFERENCES_MODE:I = 0x0

.field public static final DEFAULT_SOCKET_TIMEOUT:I = 0x1388

.field public static final DEFAULT_STRING_VALUE:Ljava/lang/String; = ""

.field static final EXTRA_REPORT_FILE_NAME:Ljava/lang/String; = "REPORT_FILE_NAME"

.field static final MAX_SEND_REPORTS:I = 0x5

.field static final NOTIF_CRASH_ID:I = 0x29a

.field public static final NULL_VALUE:Ljava/lang/String; = "ACRA-NULL-STRING"

.field public static final REPORTFILE_EXTENSION:Ljava/lang/String; = ".stacktrace"

.field static final SILENT_SUFFIX:Ljava/lang/String;

.field static final TOAST_WAIT_DURATION:I = 0xbb8


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/acra/ReportField;->IS_SILENT:Lorg/acra/ReportField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/acra/ACRAConstants;->SILENT_SUFFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
