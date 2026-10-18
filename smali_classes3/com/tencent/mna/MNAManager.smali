.class public Lcom/tencent/mna/MNAManager;
.super Ljava/lang/Object;
.source "MNAManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Init(Landroid/content/Context;Ljava/lang/String;ZIZZ)I
    .locals 7

    const/4 v5, 0x0

    .line 1
    const-string v6, ""

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Lcom/tencent/mna/MNAPlatform;->MNAInit(Landroid/content/Context;Ljava/lang/String;ZIZZLjava/lang/String;)V

    if-eqz p5, :cond_0

    const/4 p1, 0x1

    .line 4
    invoke-static {p0, p1}, Lcom/tencent/mna/o3;->a(Landroid/content/Context;Z)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static QueryKartin(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tencent/mna/MNAPlatform;->MNAQueryKartin(Ljava/lang/String;)V

    return-void
.end method

.method public static SetObserver(Lcom/tencent/mna/GHObserver;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tencent/mna/MNAPlatform;->MNASetGHObserver(Lcom/tencent/mna/GHObserver;)V

    return-void
.end method

.method public static SetUserName(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/tencent/mna/MNAPlatform;->MNASetUserName(ILjava/lang/String;)V

    return-void
.end method

.method public static StartWifiActivity(Landroid/app/Activity;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tencent/mna/o3;->a(Landroid/app/Activity;)I

    move-result p0

    return p0
.end method
