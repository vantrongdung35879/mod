.class Lcom/tencent/tme/live/aov/api/SDKProcessService$1;
.super Lcom/tencent/tme/biz/api/SDKApiInterface$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/aov/api/SDKProcessService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/tencent/tme/live/aov/api/SDKProcessService;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/aov/api/SDKProcessService;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/aov/api/SDKProcessService$1;->this$0:Lcom/tencent/tme/live/aov/api/SDKProcessService;

    invoke-direct {p0}, Lcom/tencent/tme/biz/api/SDKApiInterface$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1

    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/tme/biz/api/SDKApiInterface$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "onTransact Exception:"

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1
    const-string p4, "SDKProcessService"

    const/4 v0, 0x0

    invoke-static {p4, p2, v0}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 p2, 0x196

    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public registerListener(Lcom/tencent/tme/biz/api/HostListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/tme/live/aov/api/SDKProcessService$1;->this$0:Lcom/tencent/tme/live/aov/api/SDKProcessService;

    invoke-static {v0, p1}, Lcom/tencent/tme/live/aov/api/SDKProcessService;->access$002(Lcom/tencent/tme/live/aov/api/SDKProcessService;Lcom/tencent/tme/biz/api/HostListener;)Lcom/tencent/tme/biz/api/HostListener;

    :cond_0
    return-void
.end method

.method public sendCommand(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const-string v0, "initOrUpdate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;->getInstance()Lcom/tencent/tme/live/aov/api/SDKAPIImplement;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/tme/live/aov/api/SDKProcessService$1;->this$0:Lcom/tencent/tme/live/aov/api/SDKProcessService;

    invoke-virtual {p1, p2, v0}, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;->init(Ljava/lang/String;Lcom/tencent/tme/live/aov/api/SDKProcessService;)I

    move-result p1

    return p1

    :cond_0
    invoke-static {}, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;->getInstance()Lcom/tencent/tme/live/aov/api/SDKAPIImplement;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tme/live/aov/api/SDKAPIImplement;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public unRegisterListener()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/aov/api/SDKProcessService$1;->this$0:Lcom/tencent/tme/live/aov/api/SDKProcessService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/tme/live/aov/api/SDKProcessService;->access$002(Lcom/tencent/tme/live/aov/api/SDKProcessService;Lcom/tencent/tme/biz/api/HostListener;)Lcom/tencent/tme/biz/api/HostListener;

    return-void
.end method
