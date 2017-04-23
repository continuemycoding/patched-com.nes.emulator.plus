.class public Lorg/apache/commons/lang3/time/FastDatePrinter;
.super Ljava/lang/Object;
.source "FastDatePrinter.java"

# interfaces
.implements Lorg/apache/commons/lang3/time/DatePrinter;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNameRule;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$TwentyFourHourField;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$TwelveHourField;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitMonthField;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitYearField;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitNumberField;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$PaddedNumberField;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$UnpaddedMonthField;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$UnpaddedNumberField;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$StringLiteral;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$CharacterLiteral;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    }
.end annotation


# static fields
.field public static final FULL:I = 0x0

.field public static final LONG:I = 0x1

.field public static final MEDIUM:I = 0x2

.field public static final SHORT:I = 0x3

.field private static final cTimeZoneDisplayCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mLocale:Ljava/util/Locale;

.field private transient mMaxLengthEstimate:I

.field private final mPattern:Ljava/lang/String;

.field private transient mRules:[Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;

.field private final mTimeZone:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1102
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDatePrinter;->cTimeZoneDisplayCache:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 0
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "timeZone"    # Ljava/util/TimeZone;
    .param p3, "locale"    # Ljava/util/Locale;

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mPattern:Ljava/lang/String;

    .line 152
    iput-object p2, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    .line 153
    iput-object p3, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    .line 155
    invoke-direct {p0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->init()V

    .line 156
    return-void
.end method

.method static synthetic access$000(Ljava/lang/StringBuffer;I)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/StringBuffer;
    .param p1, "x1"    # I

    .prologue
    .line 80
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/time/FastDatePrinter;->appendDigits(Ljava/lang/StringBuffer;I)V

    return-void
.end method

.method private static appendDigits(Ljava/lang/StringBuffer;I)V
    .locals 1
    .param p0, "buffer"    # Ljava/lang/StringBuffer;
    .param p1, "value"    # I

    .prologue
    .line 598
    div-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 599
    rem-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 600
    return-void
.end method

.method private applyRulesToString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2
    .param p1, "c"    # Ljava/util/Calendar;

    .prologue
    .line 427
    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mMaxLengthEstimate:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->applyRules(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getTimeZoneDisplay(Ljava/util/TimeZone;ZILjava/util/Locale;)Ljava/lang/String;
    .locals 4
    .param p0, "tz"    # Ljava/util/TimeZone;
    .param p1, "daylight"    # Z
    .param p2, "style"    # I
    .param p3, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1114
    new-instance v0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;-><init>(Ljava/util/TimeZone;ZILjava/util/Locale;)V

    .line 1115
    .local v0, "key":Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;
    sget-object v3, Lorg/apache/commons/lang3/time/FastDatePrinter;->cTimeZoneDisplayCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1116
    .local v2, "value":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 1118
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 1119
    sget-object v3, Lorg/apache/commons/lang3/time/FastDatePrinter;->cTimeZoneDisplayCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1120
    .local v1, "prior":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1121
    move-object v2, v1

    .line 1124
    .end local v1    # "prior":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method private init()V
    .locals 4

    .prologue
    .line 162
    invoke-virtual {p0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->parsePattern()Ljava/util/List;

    move-result-object v2

    .line 163
    .local v2, "rulesList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;

    iput-object v3, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mRules:[Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;

    .line 165
    const/4 v1, 0x0

    .line 166
    .local v1, "len":I
    iget-object v3, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mRules:[Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;

    array-length v0, v3

    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 167
    iget-object v3, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mRules:[Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;

    aget-object v3, v3, v0

    invoke-interface {v3}, Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;->estimateLength()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    .line 170
    :cond_0
    iput v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mMaxLengthEstimate:I

    .line 171
    return-void
.end method

.method private newCalendar()Ljava/util/GregorianCalendar;
    .locals 3

    .prologue
    .line 436
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    iget-object v2, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 587
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 588
    invoke-direct {p0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->init()V

    .line 589
    return-void
.end method


# virtual methods
.method protected applyRules(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 4
    .param p1, "calendar"    # Ljava/util/Calendar;
    .param p2, "buf"    # Ljava/lang/StringBuffer;

    .prologue
    .line 492
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mRules:[Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;

    .local v0, "arr$":[Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 493
    .local v3, "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    invoke-interface {v3, p2, p1}, Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;->appendTo(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V

    .line 492
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 495
    .end local v3    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    :cond_0
    return-object p2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 547
    instance-of v2, p1, Lorg/apache/commons/lang3/time/FastDatePrinter;

    if-nez v2, :cond_1

    .line 551
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 550
    check-cast v0, Lorg/apache/commons/lang3/time/FastDatePrinter;

    .line 551
    .local v0, "other":Lorg/apache/commons/lang3/time/FastDatePrinter;
    iget-object v2, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mPattern:Ljava/lang/String;

    iget-object v3, v0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mPattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    iget-object v3, v0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    iget-object v3, v0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public format(J)Ljava/lang/String;
    .locals 3
    .param p1, "millis"    # J

    .prologue
    .line 416
    invoke-direct {p0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->newCalendar()Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 417
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 418
    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->applyRulesToString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public format(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 454
    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mMaxLengthEstimate:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->format(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 444
    invoke-direct {p0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->newCalendar()Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 445
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 446
    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->applyRulesToString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public format(JLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "millis"    # J
    .param p3, "buf"    # Ljava/lang/StringBuffer;

    .prologue
    .line 462
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0, p3}, Lorg/apache/commons/lang3/time/FastDatePrinter;->format(Ljava/util/Date;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .prologue
    .line 399
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 400
    check-cast p1, Ljava/util/Date;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->format(Ljava/util/Date;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 404
    :goto_0
    return-object v0

    .line 401
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Ljava/util/Calendar;

    if-eqz v0, :cond_1

    .line 402
    check-cast p1, Ljava/util/Calendar;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->format(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    goto :goto_0

    .line 403
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 404
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->format(JLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    goto :goto_0

    .line 406
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown class: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_3

    const-string v0, "<null>"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public format(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "calendar"    # Ljava/util/Calendar;
    .param p2, "buf"    # Ljava/lang/StringBuffer;

    .prologue
    .line 480
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->applyRules(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "buf"    # Ljava/lang/StringBuffer;

    .prologue
    .line 470
    invoke-direct {p0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->newCalendar()Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 471
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 472
    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->applyRules(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v1

    return-object v1
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getMaxLengthEstimate()I
    .locals 1

    .prologue
    .line 534
    iget v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mMaxLengthEstimate:I

    return v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mPattern:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 563
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mPattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->hashCode()I

    move-result v2

    mul-int/lit8 v2, v2, 0xd

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    return v0
.end method

.method protected parsePattern()Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    new-instance v15, Ljava/text/DateFormatSymbols;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 183
    .local v15, "symbols":Ljava/text/DateFormatSymbols;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v11, "rules":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;>;"
    invoke-virtual {v15}, Ljava/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    move-result-object v4

    .line 186
    .local v4, "ERAs":[Ljava/lang/String;
    invoke-virtual {v15}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v9

    .line 187
    .local v9, "months":[Ljava/lang/String;
    invoke-virtual {v15}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v12

    .line 188
    .local v12, "shortMonths":[Ljava/lang/String;
    invoke-virtual {v15}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v18

    .line 189
    .local v18, "weekdays":[Ljava/lang/String;
    invoke-virtual {v15}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v13

    .line 190
    .local v13, "shortWeekdays":[Ljava/lang/String;
    invoke-virtual {v15}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, "AmPmStrings":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mPattern:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v8

    .line 193
    .local v8, "length":I
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v7, v0, [I

    .line 195
    .local v7, "indexRef":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v8, :cond_0

    .line 196
    const/16 v19, 0x0

    aput v6, v7, v19

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mPattern:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v7}, Lorg/apache/commons/lang3/time/FastDatePrinter;->parseToken(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v16

    .line 198
    .local v16, "token":Ljava/lang/String;
    const/16 v19, 0x0

    aget v6, v7, v19

    .line 200
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v17

    .line 201
    .local v17, "tokenLen":I
    if-nez v17, :cond_1

    .line 306
    .end local v16    # "token":Ljava/lang/String;
    .end local v17    # "tokenLen":I
    :cond_0
    return-object v11

    .line 206
    .restart local v16    # "token":Ljava/lang/String;
    .restart local v17    # "tokenLen":I
    :cond_1
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 208
    .local v5, "c":C
    sparse-switch v5, :sswitch_data_0

    .line 300
    new-instance v19, Ljava/lang/IllegalArgumentException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Illegal pattern component: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 210
    :sswitch_0
    new-instance v10, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-direct {v10, v0, v4}, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;-><init>(I[Ljava/lang/String;)V

    .line 303
    .end local v17    # "tokenLen":I
    .local v10, "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    :goto_1
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 213
    .end local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    .restart local v17    # "tokenLen":I
    :sswitch_1
    const/16 v19, 0x2

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 214
    sget-object v10, Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitYearField;->INSTANCE:Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitYearField;

    .restart local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    goto :goto_1

    .line 216
    .end local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    :cond_2
    const/16 v19, 0x1

    const/16 v20, 0x4

    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_3

    const/16 v17, 0x4

    .end local v17    # "tokenLen":I
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v10

    .line 218
    .restart local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    goto :goto_1

    .line 220
    .end local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    .restart local v17    # "tokenLen":I
    :sswitch_2
    const/16 v19, 0x4

    move/from16 v0, v17

    move/from16 v1, v19

    if-lt v0, v1, :cond_4

    .line 221
    new-instance v10, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;

    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-direct {v10, v0, v9}, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;-><init>(I[Ljava/lang/String;)V

    .restart local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    goto :goto_1

    .line 222
    .end local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    :cond_4
    const/16 v19, 0x3

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 223
    new-instance v10, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;

    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-direct {v10, v0, v12}, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;-><init>(I[Ljava/lang/String;)V

    .restart local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    goto :goto_1

    .line 224
    .end local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    :cond_5
    const/16 v19, 0x2

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 225
    sget-object v10, Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitMonthField;->INSTANCE:Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitMonthField;

    .restart local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    goto :goto_1

    .line 227
    .end local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    :cond_6
    sget-object v10, Lorg/apache/commons/lang3/time/FastDatePrinter$UnpaddedMonthField;->INSTANCE:Lorg/apache/commons/lang3/time/FastDatePrinter$UnpaddedMonthField;

    .line 229
    .restart local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    goto :goto_1

    .line 231
    .end local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    :sswitch_3
    const/16 v19, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v10

    .line 232
    .restart local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    goto :goto_1

    .line 234
    .end local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    :sswitch_4
    new-instance v10, Lorg/apache/commons/lang3/time/FastDatePrinter$TwelveHourField;

    const/16 v19, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Lorg/apache/commons/lang3/time/FastDatePrinter$TwelveHourField;-><init>(Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;)V

    .line 235
    .restart local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    goto :goto_1

    .line 237
    .end local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    :sswitch_5
    const/16 v19, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v10

    .line 238
    .restart local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    goto/16 :goto_1

    .line 240
    .end local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    :sswitch_6
    const/16 v19, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v10

    .line 241
    .restart local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    goto/16 :goto_1

    .line 243
    .end local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    :sswitch_7
    const/16 v19, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v10

    .line 244
    .restart local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    goto/16 :goto_1

    .line 246
    .end local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    :sswitch_8
    const/16 v19, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v10

    .line 247
    .restart local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    goto/16 :goto_1

    .line 249
    .end local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    :sswitch_9
    new-instance v10, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;

    const/16 v20, 0x7

    const/16 v19, 0x4

    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_7

    move-object/from16 v19, v13

    :goto_2
    move/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v10, v0, v1}, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;-><init>(I[Ljava/lang/String;)V

    .line 250
    .restart local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    goto/16 :goto_1

    .end local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    :cond_7
    move-object/from16 v19, v18

    .line 249
    goto :goto_2

    .line 252
    :sswitch_a
    const/16 v19, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v10

    .line 253
    .restart local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    goto/16 :goto_1

    .line 255
    .end local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    :sswitch_b
    const/16 v19, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v10

    .line 256
    .restart local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    goto/16 :goto_1

    .line 258
    .end local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    :sswitch_c
    const/16 v19, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v10

    .line 259
    .restart local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    goto/16 :goto_1

    .line 261
    .end local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    :sswitch_d
    const/16 v19, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v10

    .line 262
    .restart local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    goto/16 :goto_1

    .line 264
    .end local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    :sswitch_e
    new-instance v10, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;

    const/16 v19, 0x9

    move/from16 v0, v19

    invoke-direct {v10, v0, v3}, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;-><init>(I[Ljava/lang/String;)V

    .line 265
    .restart local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    goto/16 :goto_1

    .line 267
    .end local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    :sswitch_f
    new-instance v10, Lorg/apache/commons/lang3/time/FastDatePrinter$TwentyFourHourField;

    const/16 v19, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Lorg/apache/commons/lang3/time/FastDatePrinter$TwentyFourHourField;-><init>(Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;)V

    .line 268
    .restart local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    goto/16 :goto_1

    .line 270
    .end local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    :sswitch_10
    const/16 v19, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v10

    .line 271
    .restart local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    goto/16 :goto_1

    .line 273
    .end local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    :sswitch_11
    invoke-static/range {v17 .. v17}, Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;->getRule(I)Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;

    move-result-object v10

    .line 274
    .restart local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    goto/16 :goto_1

    .line 276
    .end local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    :sswitch_12
    const/16 v19, 0x4

    move/from16 v0, v17

    move/from16 v1, v19

    if-lt v0, v1, :cond_8

    .line 277
    new-instance v10, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNameRule;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v10, v0, v1, v2}, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNameRule;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;I)V

    .restart local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    goto/16 :goto_1

    .line 279
    .end local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    :cond_8
    new-instance v10, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNameRule;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v10, v0, v1, v2}, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNameRule;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;I)V

    .line 281
    .restart local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    goto/16 :goto_1

    .line 283
    .end local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    :sswitch_13
    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 284
    sget-object v10, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;->INSTANCE_NO_COLON:Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;

    .restart local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    goto/16 :goto_1

    .line 285
    .end local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    :cond_9
    const/16 v19, 0x2

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 286
    sget-object v10, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;->INSTANCE_ISO_8601:Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;

    .restart local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    goto/16 :goto_1

    .line 288
    .end local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    :cond_a
    sget-object v10, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;->INSTANCE_COLON:Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;

    .line 290
    .restart local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    goto/16 :goto_1

    .line 292
    .end local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    :sswitch_14
    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 293
    .local v14, "sub":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 294
    new-instance v10, Lorg/apache/commons/lang3/time/FastDatePrinter$CharacterLiteral;

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v19

    move/from16 v0, v19

    invoke-direct {v10, v0}, Lorg/apache/commons/lang3/time/FastDatePrinter$CharacterLiteral;-><init>(C)V

    .restart local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    goto/16 :goto_1

    .line 296
    .end local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    :cond_b
    new-instance v10, Lorg/apache/commons/lang3/time/FastDatePrinter$StringLiteral;

    invoke-direct {v10, v14}, Lorg/apache/commons/lang3/time/FastDatePrinter$StringLiteral;-><init>(Ljava/lang/String;)V

    .line 298
    .restart local v10    # "rule":Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    goto/16 :goto_1

    .line 208
    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_14
        0x44 -> :sswitch_a
        0x45 -> :sswitch_9
        0x46 -> :sswitch_b
        0x47 -> :sswitch_0
        0x48 -> :sswitch_5
        0x4b -> :sswitch_10
        0x4d -> :sswitch_2
        0x53 -> :sswitch_8
        0x57 -> :sswitch_d
        0x58 -> :sswitch_11
        0x5a -> :sswitch_13
        0x61 -> :sswitch_e
        0x64 -> :sswitch_3
        0x68 -> :sswitch_4
        0x6b -> :sswitch_f
        0x6d -> :sswitch_6
        0x73 -> :sswitch_7
        0x77 -> :sswitch_c
        0x79 -> :sswitch_1
        0x7a -> :sswitch_12
    .end sparse-switch
.end method

.method protected parseToken(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 12
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "indexRef"    # [I

    .prologue
    const/16 v11, 0x61

    const/16 v10, 0x5a

    const/16 v9, 0x41

    const/16 v8, 0x27

    const/4 v6, 0x0

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    .local v0, "buf":Ljava/lang/StringBuilder;
    aget v2, p2, v6

    .line 320
    .local v2, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 322
    .local v4, "length":I
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 323
    .local v1, "c":C
    if-lt v1, v9, :cond_0

    if-le v1, v10, :cond_1

    :cond_0
    if-lt v1, v11, :cond_2

    const/16 v7, 0x7a

    if-gt v1, v7, :cond_2

    .line 326
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 328
    :goto_0
    add-int/lit8 v7, v2, 0x1

    if-ge v7, v4, :cond_8

    .line 329
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 330
    .local v5, "peek":C
    if-ne v5, v1, :cond_8

    .line 331
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 332
    add-int/lit8 v2, v2, 0x1

    .line 336
    goto :goto_0

    .line 339
    .end local v5    # "peek":C
    :cond_2
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 341
    const/4 v3, 0x0

    .line 343
    .local v3, "inLiteral":Z
    :goto_1
    if-ge v2, v4, :cond_8

    .line 344
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 346
    if-ne v1, v8, :cond_5

    .line 347
    add-int/lit8 v7, v2, 0x1

    if-ge v7, v4, :cond_3

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v8, :cond_3

    .line 349
    add-int/lit8 v2, v2, 0x1

    .line 350
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 343
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 352
    :cond_3
    if-nez v3, :cond_4

    const/4 v3, 0x1

    :goto_3
    goto :goto_2

    :cond_4
    move v3, v6

    goto :goto_3

    .line 354
    :cond_5
    if-nez v3, :cond_9

    if-lt v1, v9, :cond_6

    if-le v1, v10, :cond_7

    :cond_6
    if-lt v1, v11, :cond_9

    const/16 v7, 0x7a

    if-gt v1, v7, :cond_9

    .line 356
    :cond_7
    add-int/lit8 v2, v2, -0x1

    .line 364
    .end local v3    # "inLiteral":Z
    :cond_8
    aput v2, p2, v6

    .line 365
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 359
    .restart local v3    # "inLiteral":Z
    :cond_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method protected selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;
    .locals 1
    .param p1, "field"    # I
    .param p2, "padding"    # I

    .prologue
    .line 376
    packed-switch p2, :pswitch_data_0

    .line 382
    new-instance v0, Lorg/apache/commons/lang3/time/FastDatePrinter$PaddedNumberField;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter$PaddedNumberField;-><init>(II)V

    :goto_0
    return-object v0

    .line 378
    :pswitch_0
    new-instance v0, Lorg/apache/commons/lang3/time/FastDatePrinter$UnpaddedNumberField;

    invoke-direct {v0, p1}, Lorg/apache/commons/lang3/time/FastDatePrinter$UnpaddedNumberField;-><init>(I)V

    goto :goto_0

    .line 380
    :pswitch_1
    new-instance v0, Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitNumberField;

    invoke-direct {v0, p1}, Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitNumberField;-><init>(I)V

    goto :goto_0

    .line 376
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FastDatePrinter["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mPattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
