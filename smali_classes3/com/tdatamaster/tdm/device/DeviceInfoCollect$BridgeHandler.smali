.class Lcom/tdatamaster/tdm/device/DeviceInfoCollect$BridgeHandler;
.super Ljava/lang/Object;
.source "DeviceInfoCollect.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tdatamaster/tdm/device/DeviceInfoCollect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BridgeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tdatamaster/tdm/device/DeviceInfoCollect;


# direct methods
.method private constructor <init>(Lcom/tdatamaster/tdm/device/DeviceInfoCollect;)V
    .locals 0

    .line 614
    iput-object p1, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect$BridgeHandler;->this$0:Lcom/tdatamaster/tdm/device/DeviceInfoCollect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tdatamaster/tdm/device/DeviceInfoCollect;Lcom/tdatamaster/tdm/device/DeviceInfoCollect$1;)V
    .locals 0

    .line 614
    invoke-direct {p0, p1}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect$BridgeHandler;-><init>(Lcom/tdatamaster/tdm/device/DeviceInfoCollect;)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p1, 0x0

    if-eqz p2, :cond_b

    if-nez p3, :cond_0

    goto/16 :goto_3

    .line 620
    :cond_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    .line 624
    const-string v0, "OnResult"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_a

    array-length v0, p3

    const/4 v4, 0x3

    if-ne v0, v4, :cond_a

    .line 626
    aget-object p2, p3, v3

    if-eqz p2, :cond_9

    .line 627
    instance-of v0, p2, Ljava/lang/String;

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 631
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 634
    aget-object v0, p3, v1

    if-eqz v0, :cond_8

    .line 635
    instance-of v4, v0, Ljava/lang/Integer;

    if-nez v4, :cond_2

    goto/16 :goto_1

    .line 638
    :cond_2
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_3

    .line 640
    const-string p3, "TDMBridge"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error when "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", code:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 645
    :cond_3
    aget-object p3, p3, v2

    if-eqz p3, :cond_7

    .line 646
    instance-of v0, p3, Ljava/lang/String;

    if-nez v0, :cond_4

    goto :goto_0

    .line 650
    :cond_4
    check-cast p3, Ljava/lang/String;

    .line 652
    const-string v0, "TDMBridge"

    const-string v4, "Success %s , data = %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    aput-object p3, v2, v1

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->Info(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const-string v0, "TDMQimei_GetQimei36"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "TDMQimei_GetQimei"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_3

    .line 656
    :cond_5
    iget-object p2, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect$BridgeHandler;->this$0:Lcom/tdatamaster/tdm/device/DeviceInfoCollect;

    invoke-static {p2}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->access$200(Lcom/tdatamaster/tdm/device/DeviceInfoCollect;)Lcom/tdatamaster/tdm/device/DeviceInfo;

    move-result-object p2

    monitor-enter p2

    .line 657
    :try_start_0
    iget-object v0, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect$BridgeHandler;->this$0:Lcom/tdatamaster/tdm/device/DeviceInfoCollect;

    new-instance v1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {v1, p3, v3}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, v1}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->access$202(Lcom/tdatamaster/tdm/device/DeviceInfoCollect;Lcom/tdatamaster/tdm/device/DeviceInfo;)Lcom/tdatamaster/tdm/device/DeviceInfo;

    .line 658
    monitor-exit p2

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 661
    :cond_6
    iget-object p2, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect$BridgeHandler;->this$0:Lcom/tdatamaster/tdm/device/DeviceInfoCollect;

    invoke-static {p2}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->access$300(Lcom/tdatamaster/tdm/device/DeviceInfoCollect;)Lcom/tdatamaster/tdm/device/DeviceInfo;

    move-result-object v0

    monitor-enter v0

    .line 662
    :try_start_1
    iget-object p2, p0, Lcom/tdatamaster/tdm/device/DeviceInfoCollect$BridgeHandler;->this$0:Lcom/tdatamaster/tdm/device/DeviceInfoCollect;

    new-instance v1, Lcom/tdatamaster/tdm/device/DeviceInfo;

    invoke-direct {v1, p3, v3}, Lcom/tdatamaster/tdm/device/DeviceInfo;-><init>(Ljava/lang/Object;I)V

    invoke-static {p2, v1}, Lcom/tdatamaster/tdm/device/DeviceInfoCollect;->access$302(Lcom/tdatamaster/tdm/device/DeviceInfoCollect;Lcom/tdatamaster/tdm/device/DeviceInfo;)Lcom/tdatamaster/tdm/device/DeviceInfo;

    .line 663
    monitor-exit v0

    goto :goto_3

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 647
    :cond_7
    :goto_0
    const-string p3, "TDMBridge"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error when "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", data is null"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_1
    return-object p1

    .line 628
    :cond_9
    :goto_2
    const-string p2, "TDMBridge"

    const-string p3, "call back method is null"

    invoke-static {p2, p3}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 670
    :cond_a
    const-string v0, "TDMBridge"

    const-string v4, "%s,%s"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    aput-object p3, v2, v1

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/tdatamaster/tdm/system/TDMLog;->Info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_3
    return-object p1
.end method
