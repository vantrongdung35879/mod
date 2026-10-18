.class public final Lcom/ihoc/mgpa/vendor/utils/g0;
.super Lcom/ihoc/mgpa/vendor/utils/b0$a;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/ihoc/mgpa/vendor/utils/f0;


# direct methods
.method public constructor <init>(Lcom/ihoc/mgpa/vendor/utils/f0;)V
    .locals 0

    iput-object p1, p0, Lcom/ihoc/mgpa/vendor/utils/g0;->a:Lcom/ihoc/mgpa/vendor/utils/f0;

    invoke-direct {p0}, Lcom/ihoc/mgpa/vendor/utils/b0$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final systemCallBack(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    iget-object v0, p0, Lcom/ihoc/mgpa/vendor/utils/g0;->a:Lcom/ihoc/mgpa/vendor/utils/f0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    const-string v1, "display="

    const-string v2, "input="

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "standard binder v2: callback type: %s, value: %s "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    aput-object p1, v7, v3

    const/4 v8, 0x1

    aput-object v5, v7, v8

    invoke-static {v4, v7}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x5

    const/4 v7, 0x4

    const/4 v9, 0x3

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "display"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x3

    goto :goto_1

    :sswitch_1
    const-string v4, "bss_list"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_1

    :sswitch_2
    const-string v4, "low_battery"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :sswitch_3
    const-string v4, "input"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    goto :goto_1

    :sswitch_4
    const-string v4, "sta_status"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x5

    goto :goto_1

    :sswitch_5
    const-string/jumbo v4, "thermal"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v4, -0x1

    :goto_1
    if-eqz v4, :cond_6

    if-eq v4, v8, :cond_5

    if-eq v4, v6, :cond_4

    if-eq v4, v9, :cond_3

    if-eq v4, v7, :cond_2

    if-eq v4, v5, :cond_1

    iget-object v0, v0, Lcom/ihoc/mgpa/vendor/utils/b;->a:Lcom/ihoc/mgpa/vendor/utils/a0;

    invoke-interface {v0, p1, p2}, Lcom/ihoc/mgpa/vendor/utils/a0;->onUpdatePhoneInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    iget-object p1, v0, Lcom/ihoc/mgpa/vendor/utils/b;->a:Lcom/ihoc/mgpa/vendor/utils/a0;

    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorKey;->STA_STATUS:Lcom/ihoc/mgpa/vendor/VendorKey;

    goto :goto_2

    :cond_2
    iget-object p1, v0, Lcom/ihoc/mgpa/vendor/utils/b;->a:Lcom/ihoc/mgpa/vendor/utils/a0;

    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorKey;->AVAILABLE_BSS_LIST:Lcom/ihoc/mgpa/vendor/VendorKey;

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    iget-object p1, v0, Lcom/ihoc/mgpa/vendor/utils/b;->a:Lcom/ihoc/mgpa/vendor/utils/a0;

    sget-object p2, Lcom/ihoc/mgpa/vendor/VendorKey;->FREQUENCY_SIGNAL:Lcom/ihoc/mgpa/vendor/VendorKey;

    const-string v0, "1"

    invoke-interface {p1, p2, v0}, Lcom/ihoc/mgpa/vendor/utils/a0;->onUpdatePhoneInfo(Lcom/ihoc/mgpa/vendor/VendorKey;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    iget-object p1, v0, Lcom/ihoc/mgpa/vendor/utils/b;->a:Lcom/ihoc/mgpa/vendor/utils/a0;

    sget-object v0, Lcom/ihoc/mgpa/vendor/VendorKey;->TEMPERATURE_LEVEL:Lcom/ihoc/mgpa/vendor/VendorKey;

    :goto_2
    invoke-interface {p1, v0, p2}, Lcom/ihoc/mgpa/vendor/utils/a0;->onUpdatePhoneInfo(Lcom/ihoc/mgpa/vendor/VendorKey;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    new-array p1, v3, [Ljava/lang/Object;

    const-string p2, "standard binder v2 callback exception."

    invoke-static {p2, p1}, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x50706869 -> :sswitch_5
        -0x4b70150f -> :sswitch_4
        0x5fb57ca -> :sswitch_3
        0x20f46422 -> :sswitch_2
        0x514a847b -> :sswitch_1
        0x63a518c2 -> :sswitch_0
    .end sparse-switch
.end method
