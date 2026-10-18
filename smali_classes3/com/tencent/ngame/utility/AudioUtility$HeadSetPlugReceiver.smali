.class Lcom/tencent/ngame/utility/AudioUtility$HeadSetPlugReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/ngame/utility/AudioUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeadSetPlugReceiver"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/ngame/utility/AudioUtility$1;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/tencent/ngame/utility/AudioUtility$HeadSetPlugReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public measure(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 69
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 70
    const-string v0, "CSoundManager"

    const-string v1, "OnHeadSetPlug"

    invoke-static {v0, v1, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
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

    .line 60
    const-string/jumbo p1, "state"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 61
    invoke-virtual {p0, p1}, Lcom/tencent/ngame/utility/AudioUtility$HeadSetPlugReceiver;->measure(I)V

    .line 63
    invoke-static {}, Lcom/tencent/ngame/utility/AudioUtility;->access$000()Landroid/database/ContentObserver;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 64
    invoke-static {}, Lcom/tencent/ngame/utility/AudioUtility;->access$000()Landroid/database/ContentObserver;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/database/ContentObserver;->onChange(Z)V

    :cond_0
    return-void
.end method
