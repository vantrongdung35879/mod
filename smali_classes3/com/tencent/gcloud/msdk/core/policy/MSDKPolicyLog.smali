.class public Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;
.super Ljava/lang/Object;
.source "MSDKPolicyLog.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "MSDKPolicy"

.field private static isDebug:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 15
    sget-boolean v0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->isDebug:Z

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    .line 16
    const-string p0, ""

    :cond_0
    const-string v0, "MSDKPolicy"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 29
    const-string p0, ""

    :cond_0
    const-string v0, "MSDKPolicy"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 21
    const-string p0, ""

    :cond_0
    const-string v0, "MSDKPolicy"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static init(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "debug"
        }
    .end annotation

    .line 11
    sput-boolean p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->isDebug:Z

    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 25
    const-string p0, ""

    :cond_0
    const-string v0, "MSDKPolicy"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
