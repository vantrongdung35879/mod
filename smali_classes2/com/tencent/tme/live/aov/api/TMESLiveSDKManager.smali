.class public Lcom/tencent/tme/live/aov/api/TMESLiveSDKManager;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "TMESSDKManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendCommand(Ljava/lang/String;Ljava/lang/String;)J
    .locals 3

    invoke-static {}, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->getInstance()Lcom/tencent/tme/live/aov/api/HostAPIWrapper;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "sendCommand event:"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",code:"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TMESSDKManager"

    invoke-static {p1, p0}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->getInstance()Lcom/tencent/tme/live/aov/api/HostAPIWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/tme/live/aov/api/HostAPIWrapper;->setContext(Landroid/content/Context;)V

    return-void
.end method
