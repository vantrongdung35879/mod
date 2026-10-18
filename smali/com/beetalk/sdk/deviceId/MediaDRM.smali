.class public final Lcom/beetalk/sdk/deviceId/MediaDRM;
.super Ljava/lang/Object;
.source "MediaDRM.kt"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0001\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0006\u0010\u0011\u001a\u00020\u000cJ\u0006\u0010\u0012\u001a\u00020\u000cR\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u0016\u0010\u0008\u001a\n \n*\u0004\u0018\u00010\t0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/beetalk/sdk/deviceId/MediaDRM;",
        "Ljava/lang/AutoCloseable;",
        "()V",
        "_drm",
        "Landroid/media/MediaDrm;",
        "drm",
        "getDrm",
        "()Landroid/media/MediaDrm;",
        "widevineUUID",
        "Ljava/util/UUID;",
        "kotlin.jvm.PlatformType",
        "bytesToHex",
        "",
        "bytes",
        "",
        "close",
        "",
        "getUID",
        "getVendor",
        "sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final _drm:Landroid/media/MediaDrm;

.field private final widevineUUID:Ljava/util/UUID;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/beetalk/sdk/deviceId/MediaDRM;->widevineUUID:Ljava/util/UUID;

    .line 33
    :try_start_0
    new-instance v1, Landroid/media/MediaDrm;

    invoke-direct {v1, v0}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    .line 32
    :goto_0
    iput-object v1, p0, Lcom/beetalk/sdk/deviceId/MediaDRM;->_drm:Landroid/media/MediaDrm;

    return-void
.end method

.method private final bytesToHex([B)Ljava/lang/String;
    .locals 10

    .line 49
    const-string v0, ""

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    sget-object v0, Lcom/beetalk/sdk/deviceId/MediaDRM$bytesToHex$1;->INSTANCE:Lcom/beetalk/sdk/deviceId/MediaDRM$bytesToHex$1;

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function1;

    const/16 v8, 0x1e

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v9}, Lkotlin/collections/ArraysKt;->joinToString$default([BLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final getDrm()Landroid/media/MediaDrm;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/beetalk/sdk/deviceId/MediaDRM;->_drm:Landroid/media/MediaDrm;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 71
    sget-object v0, Lcom/beetalk/sdk/helper/BuildEnv$Version;->INSTANCE:Lcom/beetalk/sdk/helper/BuildEnv$Version;

    invoke-virtual {v0}, Lcom/beetalk/sdk/helper/BuildEnv$Version;->isAndroid9orAbove()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-direct {p0}, Lcom/beetalk/sdk/deviceId/MediaDRM;->getDrm()Landroid/media/MediaDrm;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaDrm;->release()V

    goto :goto_0

    .line 75
    :cond_0
    invoke-direct {p0}, Lcom/beetalk/sdk/deviceId/MediaDRM;->getDrm()Landroid/media/MediaDrm;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaDrm;->release()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final getUID()Ljava/lang/String;
    .locals 3

    .line 56
    const-string v0, ""

    .line 58
    :try_start_0
    invoke-direct {p0}, Lcom/beetalk/sdk/deviceId/MediaDRM;->getDrm()Landroid/media/MediaDrm;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "deviceUniqueId"

    invoke-virtual {v1, v2}, Landroid/media/MediaDrm;->getPropertyByteArray(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [B

    .line 59
    :cond_1
    array-length v2, v1

    if-nez v2, :cond_2

    goto :goto_0

    .line 63
    :cond_2
    invoke-direct {p0, v1}, Lcom/beetalk/sdk/deviceId/MediaDRM;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-object v0
.end method

.method public final getVendor()Ljava/lang/String;
    .locals 3

    .line 41
    const-string v0, ""

    .line 42
    :try_start_0
    invoke-direct {p0}, Lcom/beetalk/sdk/deviceId/MediaDRM;->getDrm()Landroid/media/MediaDrm;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "vendor"

    invoke-virtual {v1, v2}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    :catch_0
    :goto_1
    return-object v0
.end method
