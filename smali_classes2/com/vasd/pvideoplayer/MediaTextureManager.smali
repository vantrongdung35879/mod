.class public Lcom/vasd/pvideoplayer/MediaTextureManager;
.super Ljava/lang/Object;
.source "MediaTextureManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PixVideo"

.field private static final MAX_TEXTURE_COUNT:I = 0x10

.field private static final PLAYER_COUNT:I = 0x2

.field private static s_textureList:[[Lcom/vasd/pvideoplayer/MediaTexture;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    .line 18
    new-array v1, v0, [I

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v0, 0x0

    const/16 v2, 0x10

    aput v2, v1, v0

    const-class v0, Lcom/vasd/pvideoplayer/MediaTexture;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/vasd/pvideoplayer/MediaTexture;

    sput-object v0, Lcom/vasd/pvideoplayer/MediaTextureManager;->s_textureList:[[Lcom/vasd/pvideoplayer/MediaTexture;

    .line 22
    const-string v0, "PixVideo"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 23
    const-string v0, "videotexture"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CreateSurface(I)V
    .locals 4

    const/16 v0, 0x10

    if-lt p0, v0, :cond_0

    .line 49
    const-string p0, "PixVideo"

    const-string v0, "error: tag is bigger than MAX_VIDEO_COUNT!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 53
    :cond_0
    sget-object v0, Lcom/vasd/pvideoplayer/MediaTextureManager;->s_textureList:[[Lcom/vasd/pvideoplayer/MediaTexture;

    aget-object v0, v0, p0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 55
    new-instance v2, Lcom/vasd/pvideoplayer/MediaTexture;

    invoke-direct {v2}, Lcom/vasd/pvideoplayer/MediaTexture;-><init>()V

    aput-object v2, v0, v1

    .line 56
    sget-object v0, Lcom/vasd/pvideoplayer/MediaTextureManager;->s_textureList:[[Lcom/vasd/pvideoplayer/MediaTexture;

    aget-object v0, v0, p0

    new-instance v2, Lcom/vasd/pvideoplayer/MediaTexture;

    invoke-direct {v2}, Lcom/vasd/pvideoplayer/MediaTexture;-><init>()V

    aput-object v2, v0, v3

    .line 59
    :cond_1
    sget-object v0, Lcom/vasd/pvideoplayer/MediaTextureManager;->s_textureList:[[Lcom/vasd/pvideoplayer/MediaTexture;

    aget-object v0, v0, p0

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    .line 61
    invoke-virtual {v0}, Lcom/vasd/pvideoplayer/MediaTexture;->CreateSurface()Landroid/view/Surface;

    move-result-object v0

    .line 62
    sget-object v1, Lcom/vasd/pvideoplayer/MediaTextureManager;->s_textureList:[[Lcom/vasd/pvideoplayer/MediaTexture;

    aget-object v1, v1, p0

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/vasd/pvideoplayer/MediaTexture;->CreateSurface()Landroid/view/Surface;

    move-result-object v1

    .line 63
    invoke-static {v0, v1, p0}, Lcom/vasd/pvideoplayer/MediaTextureManager;->SetSurface(Landroid/view/Surface;Landroid/view/Surface;I)V

    :cond_2
    return-void
.end method

.method public static DestroySurface(I)V
    .locals 3

    const/16 v0, 0x10

    if-lt p0, v0, :cond_0

    .line 95
    const-string p0, "PixVideo"

    const-string v0, "error: tag is bigger than MAX_VIDEO_COUNT!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 101
    sget-object v1, Lcom/vasd/pvideoplayer/MediaTextureManager;->s_textureList:[[Lcom/vasd/pvideoplayer/MediaTexture;

    aget-object v1, v1, p0

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 103
    invoke-virtual {v1}, Lcom/vasd/pvideoplayer/MediaTexture;->DestroySurface()V

    .line 104
    sget-object v1, Lcom/vasd/pvideoplayer/MediaTextureManager;->s_textureList:[[Lcom/vasd/pvideoplayer/MediaTexture;

    aget-object v1, v1, p0

    const/4 v2, 0x0

    aput-object v2, v1, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static native SetSurface(Landroid/view/Surface;Landroid/view/Surface;I)V
.end method

.method public static UpdateTexture(II)I
    .locals 2

    const/16 v0, 0x10

    const/4 v1, 0x0

    if-lt p0, v0, :cond_0

    .line 74
    const-string p0, "PixVideo"

    const-string p1, "error: tag is bigger than MAX_VIDEO_COUNT!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 78
    :cond_0
    sget-object v0, Lcom/vasd/pvideoplayer/MediaTextureManager;->s_textureList:[[Lcom/vasd/pvideoplayer/MediaTexture;

    aget-object v0, v0, p0

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    .line 80
    invoke-virtual {v0}, Lcom/vasd/pvideoplayer/MediaTexture;->UpdateTexture()I

    move-result v0

    .line 81
    sget-object v1, Lcom/vasd/pvideoplayer/MediaTextureManager;->s_textureList:[[Lcom/vasd/pvideoplayer/MediaTexture;

    aget-object p0, v1, p0

    const/4 v1, 0x1

    aget-object p0, p0, v1

    invoke-virtual {p0}, Lcom/vasd/pvideoplayer/MediaTexture;->UpdateTexture()I

    move-result p0

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    return v0

    :cond_2
    return v1
.end method

.method public static UpdateTextureSize(IIII)V
    .locals 1

    const/16 v0, 0x10

    if-ge p2, v0, :cond_2

    const/4 v0, 0x1

    if-le p3, v0, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    sget-object v0, Lcom/vasd/pvideoplayer/MediaTextureManager;->s_textureList:[[Lcom/vasd/pvideoplayer/MediaTexture;

    aget-object p2, v0, p2

    aget-object p2, p2, p3

    if-eqz p2, :cond_1

    .line 41
    invoke-virtual {p2, p0, p1}, Lcom/vasd/pvideoplayer/MediaTexture;->UpdateTextureSize(II)V

    :cond_1
    return-void

    .line 35
    :cond_2
    :goto_0
    const-string p0, "PixVideo"

    const-string p1, "error: tag is bigger than MAX_VIDEO_COUNT!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
