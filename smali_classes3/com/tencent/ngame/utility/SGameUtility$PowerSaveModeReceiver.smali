.class Lcom/tencent/ngame/utility/SGameUtility$PowerSaveModeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SGameUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/ngame/utility/SGameUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PowerSaveModeReceiver"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1073
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/ngame/utility/SGameUtility$1;)V
    .locals 0

    .line 1073
    invoke-direct {p0}, Lcom/tencent/ngame/utility/SGameUtility$PowerSaveModeReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    const-string p2, "Current power save mode "

    .line 1076
    invoke-static {p1}, Lcom/tencent/ngame/utility/SGameUtility;->access$400(Landroid/content/Context;)I

    move-result p1

    .line 1077
    const-string v0, "SGameUtility"

    if-gez p1, :cond_0

    .line 1078
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "PowerSaveModeReceiver onReceive invalid ret = "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1082
    :cond_0
    invoke-static {}, Lcom/tencent/ngame/utility/SGameUtility;->access$500()I

    move-result v1

    if-eq v1, p1, :cond_1

    .line 1083
    invoke-static {p1}, Lcom/tencent/ngame/utility/SGameUtility;->access$502(I)I

    .line 1085
    :try_start_0
    const-string v1, "NatviceCallbackUtilGameObject"

    const-string v2, "powerSaveModeDidChange"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1088
    const-string p2, "notify powerSaveModeDidChange failed."

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method
