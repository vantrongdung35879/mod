.class Lcom/tencent/ngame/utility/SGameUtility$BatteryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SGameUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/ngame/utility/SGameUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BatteryReceiver"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 934
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/ngame/utility/SGameUtility$1;)V
    .locals 0

    .line 934
    invoke-direct {p0}, Lcom/tencent/ngame/utility/SGameUtility$BatteryReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "arg0",
            "arg1"
        }
    .end annotation

    .line 937
    const-string/jumbo p1, "status"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 938
    invoke-static {p1}, Lcom/tencent/ngame/utility/SGameUtility;->access$100(I)I

    move-result p1

    .line 939
    invoke-static {}, Lcom/tencent/ngame/utility/SGameUtility;->access$200()I

    move-result p2

    if-eq p2, p1, :cond_0

    .line 940
    invoke-static {p1}, Lcom/tencent/ngame/utility/SGameUtility;->access$202(I)I

    .line 941
    const-string p2, "batteryStateDidChange"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NatviceCallbackUtilGameObject"

    invoke-static {v1, p2, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Current battery status "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Battery"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
