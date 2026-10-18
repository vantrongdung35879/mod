.class public Lcom/ngame/extractor/sevenzwrapper;
.super Ljava/lang/Object;
.source "sevenzwrapper.java"


# static fields
.field public static final DEFAULT_IN_BUF_SIZE:J = 0x4000000L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-string v0, "extractor"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Init(Landroid/content/res/AssetManager;Lcom/ngame/extractor/IExtractCallback;)V
    .locals 0

    .line 118
    invoke-static {p0, p1}, Lcom/ngame/extractor/sevenzwrapper;->vInit(Landroid/content/res/AssetManager;Lcom/ngame/extractor/IExtractCallback;)V

    return-void
.end method

.method public static UnInit()V
    .locals 0

    .line 124
    invoke-static {}, Lcom/ngame/extractor/sevenzwrapper;->vUnInit()V

    return-void
.end method

.method public static extractAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;Lcom/ngame/extractor/IExtractCallback;)I
    .locals 6

    .line 88
    invoke-static {p2}, Lcom/ngame/extractor/sevenzwrapper;->prepareOutPath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 p0, 0x3e6

    if-eqz p3, :cond_0

    .line 92
    const-string p1, "Output File Path Error!"

    invoke-interface {p3, p0, p1}, Lcom/ngame/extractor/IExtractCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return p0

    :cond_1
    const-wide/32 v4, 0x4000000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 96
    invoke-static/range {v0 .. v5}, Lcom/ngame/extractor/sevenzwrapper;->nExtractAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;Lcom/ngame/extractor/IExtractCallback;J)I

    move-result p0

    return p0
.end method

.method public static extractAsset2(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;J)I
    .locals 0

    .line 106
    invoke-virtual {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-wide/32 p3, 0x4000000

    .line 107
    invoke-static {p0, p1, p2, p3, p4}, Lcom/ngame/extractor/sevenzwrapper;->nExtractAsset2(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;J)I

    move-result p0

    return p0
.end method

.method public static extractFile(Ljava/lang/String;Ljava/lang/String;Lcom/ngame/extractor/IExtractCallback;)I
    .locals 2

    .line 58
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 p0, 0x3e7

    if-eqz p2, :cond_0

    .line 62
    const-string p1, "File Path Error!"

    invoke-interface {p2, p0, p1}, Lcom/ngame/extractor/IExtractCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return p0

    .line 66
    :cond_1
    invoke-static {p1}, Lcom/ngame/extractor/sevenzwrapper;->prepareOutPath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 p0, 0x3e6

    if-eqz p2, :cond_2

    .line 69
    const-string p1, "Output File Path Error!"

    invoke-interface {p2, p0, p1}, Lcom/ngame/extractor/IExtractCallback;->onError(ILjava/lang/String;)V

    :cond_2
    return p0

    :cond_3
    const-wide/32 v0, 0x4000000

    .line 73
    invoke-static {p0, p1, p2, v0, v1}, Lcom/ngame/extractor/sevenzwrapper;->nExtractFile(Ljava/lang/String;Ljava/lang/String;Lcom/ngame/extractor/IExtractCallback;J)I

    move-result p0

    return p0
.end method

.method public static getVersion()I
    .locals 1

    .line 101
    invoke-static {}, Lcom/ngame/extractor/sevenzwrapper;->nGetVersion()I

    move-result v0

    return v0
.end method

.method public static native nExtractAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;Lcom/ngame/extractor/IExtractCallback;J)I
.end method

.method public static native nExtractAsset2(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;J)I
.end method

.method public static native nExtractFile(Ljava/lang/String;Ljava/lang/String;Lcom/ngame/extractor/IExtractCallback;J)I
.end method

.method public static native nGetVersion()I
.end method

.method private static prepareOutPath(Ljava/lang/String;)Z
    .locals 2

    .line 38
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v1, 0x1

    if-nez p0, :cond_0

    .line 41
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-eqz p0, :cond_0

    return v1

    .line 44
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static setAssetManager(Landroid/app/Activity;)V
    .locals 0

    .line 112
    invoke-virtual {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-static {p0}, Lcom/ngame/extractor/sevenzwrapper;->vSetAssetManager(Landroid/content/res/AssetManager;)V

    return-void
.end method

.method public static native vInit(Landroid/content/res/AssetManager;Lcom/ngame/extractor/IExtractCallback;)V
.end method

.method public static native vSetAssetManager(Landroid/content/res/AssetManager;)V
.end method

.method public static native vUnInit()V
.end method
