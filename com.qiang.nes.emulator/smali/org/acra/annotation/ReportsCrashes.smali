.class public interface abstract annotation Lorg/acra/annotation/ReportsCrashes;
.super Ljava/lang/Object;
.source "ReportsCrashes.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/acra/annotation/ReportsCrashes;
        additionalDropBoxTags = {}
        additionalSharedPreferences = {}
        applicationLogFile = ""
        applicationLogFileLines = 0x64
        connectionTimeout = 0xbb8
        customReportContent = {}
        deleteOldUnsentReportsOnApplicationStart = true
        deleteUnapprovedReportsOnApplicationStart = true
        disableSSLCertValidation = false
        dropboxCollectionMinutes = 0x5
        excludeMatchingSharedPreferencesKeys = {}
        forceCloseDialogAfterToast = false
        formUri = ""
        formUriBasicAuthLogin = "ACRA-NULL-STRING"
        formUriBasicAuthPassword = "ACRA-NULL-STRING"
        googleFormUrlFormat = "https://docs.google.com/spreadsheet/formResponse?formkey=%s&ifq"
        includeDropBoxSystemTags = false
        logcatArguments = {
            "-t",
            "100",
            "-v",
            "time"
        }
        logcatFilterByPid = false
        mailTo = ""
        maxNumberOfRequestRetries = 0x3
        mode = .enum Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;
        resDialogCommentPrompt = 0x0
        resDialogEmailPrompt = 0x0
        resDialogIcon = 0x1080027
        resDialogOkToast = 0x0
        resDialogText = 0x0
        resDialogTitle = 0x0
        resNotifIcon = 0x1080078
        resNotifText = 0x0
        resNotifTickerText = 0x0
        resNotifTitle = 0x0
        resToastText = 0x0
        sendReportsInDevMode = true
        sharedPreferencesMode = 0x0
        sharedPreferencesName = ""
        socketTimeout = 0x1388
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Inherited;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract additionalDropBoxTags()[Ljava/lang/String;
.end method

.method public abstract additionalSharedPreferences()[Ljava/lang/String;
.end method

.method public abstract applicationLogFile()Ljava/lang/String;
.end method

.method public abstract applicationLogFileLines()I
.end method

.method public abstract connectionTimeout()I
.end method

.method public abstract customReportContent()[Lorg/acra/ReportField;
.end method

.method public abstract deleteOldUnsentReportsOnApplicationStart()Z
.end method

.method public abstract deleteUnapprovedReportsOnApplicationStart()Z
.end method

.method public abstract disableSSLCertValidation()Z
.end method

.method public abstract dropboxCollectionMinutes()I
.end method

.method public abstract excludeMatchingSharedPreferencesKeys()[Ljava/lang/String;
.end method

.method public abstract forceCloseDialogAfterToast()Z
.end method

.method public abstract formKey()Ljava/lang/String;
.end method

.method public abstract formUri()Ljava/lang/String;
.end method

.method public abstract formUriBasicAuthLogin()Ljava/lang/String;
.end method

.method public abstract formUriBasicAuthPassword()Ljava/lang/String;
.end method

.method public abstract googleFormUrlFormat()Ljava/lang/String;
.end method

.method public abstract includeDropBoxSystemTags()Z
.end method

.method public abstract logcatArguments()[Ljava/lang/String;
.end method

.method public abstract logcatFilterByPid()Z
.end method

.method public abstract mailTo()Ljava/lang/String;
.end method

.method public abstract maxNumberOfRequestRetries()I
.end method

.method public abstract mode()Lorg/acra/ReportingInteractionMode;
.end method

.method public abstract resDialogCommentPrompt()I
.end method

.method public abstract resDialogEmailPrompt()I
.end method

.method public abstract resDialogIcon()I
.end method

.method public abstract resDialogOkToast()I
.end method

.method public abstract resDialogText()I
.end method

.method public abstract resDialogTitle()I
.end method

.method public abstract resNotifIcon()I
.end method

.method public abstract resNotifText()I
.end method

.method public abstract resNotifTickerText()I
.end method

.method public abstract resNotifTitle()I
.end method

.method public abstract resToastText()I
.end method

.method public abstract sendReportsInDevMode()Z
.end method

.method public abstract sharedPreferencesMode()I
.end method

.method public abstract sharedPreferencesName()Ljava/lang/String;
.end method

.method public abstract socketTimeout()I
.end method
