.class public Lcom/qiang/framework/recommend/Product;
.super Ljava/lang/Object;
.source "Product.java"


# static fields
.field private static gson:Lcom/google/gson/Gson;


# instance fields
.field public app_code:I

.field public app_packagename:Ljava/lang/String;

.field public app_scanimg:Ljava/lang/String;

.field public app_type:Ljava/lang/String;

.field public app_updateinfo:Ljava/lang/String;

.field public app_version:Ljava/lang/String;

.field public appname:Ljava/lang/String;

.field public dangbei_appId:I

.field public dislike:I

.field public download_url:Ljava/lang/String;

.field public multiplayer:Z

.field public name:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public releaseNote:Ljava/lang/String;

.field public screenshotUrls:[Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public versionCode:I

.field public versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lcom/qiang/framework/recommend/Product;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/qiang/framework/recommend/Product;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
