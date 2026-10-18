.class Lcom/centauri/api/UnityPayHelper$10;
.super Ljava/lang/Object;
.source "UnityPayHelper.java"

# interfaces
.implements Lcom/centauri/oversea/api/ICTINetCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/api/UnityPayHelper;->_GetInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public CentauriNetError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 508
    const-string p1, "CentauriGetInfoCallback"

    const-string/jumbo p2, "{\"ret\":-1,\"err_code\":\"\",\"msg\":\"get info failed\"}"

    const-string p3, "CentauriPay.CallBackUtils"

    invoke-static {p3, p1, p2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public CentauriNetFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 518
    const-string p1, "CentauriPay.CallBackUtils"

    const-string v0, "CentauriGetInfoCallback"

    invoke-static {p1, v0, p2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public CentauriNetStop(Ljava/lang/String;)V
    .locals 2

    .line 513
    const-string p1, "CentauriGetInfoCallback"

    const-string/jumbo v0, "{\"ret\":-1,\"err_code\":\"\",\"msg\":\"get info failed\"}"

    const-string v1, "CentauriPay.CallBackUtils"

    invoke-static {v1, p1, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
