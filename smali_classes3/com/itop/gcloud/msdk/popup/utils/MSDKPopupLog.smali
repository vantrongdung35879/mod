.class public Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;
.super Ljava/lang/Object;
.source "MSDKPopupLog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MSDKPopup"

.field private static isDebugEnable:Z = false


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

    .line 15
    const-string v0, "MSDKPopup"

    invoke-static {v0, p0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 19
    sget-boolean v0, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->isDebugEnable:Z

    if-eqz v0, :cond_0

    .line 20
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    .line 25
    const-string v0, "MSDKPopup"

    invoke-static {v0, p0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setDebugEnable(Z)V
    .locals 0

    .line 11
    sput-boolean p0, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->isDebugEnable:Z

    return-void
.end method
