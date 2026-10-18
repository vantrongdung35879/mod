.class Lcom/ihoc/mgpa/gradish/m1$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ihoc/mgpa/vendor/ServerConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ihoc/mgpa/gradish/m1;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectFail()V
    .locals 0

    return-void
.end method

.method public onConnectFinished()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/m1;->a(Z)Z

    .line 2
    invoke-static {}, Lcom/ihoc/mgpa/gradish/m1;->b()V

    .line 3
    invoke-static {}, Lcom/ihoc/mgpa/gradish/m1;->j()V

    return-void
.end method

.method public onConnectSuccess(Lcom/ihoc/mgpa/vendor/VendorBridgeType;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/ihoc/mgpa/gradish/m1;->a(Lcom/ihoc/mgpa/vendor/VendorBridgeType;)Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    return-void
.end method

.method public onConnectionBroken()V
    .locals 0

    return-void
.end method

.method public onUpdatePhoneInfo(Lcom/ihoc/mgpa/vendor/VendorKey;Ljava/lang/String;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Lcom/ihoc/mgpa/vendor/VendorKey;->getKey()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const-string v1, "phone info update key: %d , value: %s"

    invoke-static {v1, v3}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    sget-object v1, Lcom/ihoc/mgpa/gradish/m1$d;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const-string v3, "offer"

    const-string v5, "INSTANCE"

    const-string v6, "com.ihoc.mgpa.superframe.VendorDataObserver"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 55
    :pswitch_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 56
    invoke-virtual {p1}, Lcom/ihoc/mgpa/vendor/VendorKey;->getKey()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 58
    sget-object v7, Lcom/ihoc/mgpa/gradish/p1;->b:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v7, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->offer(Ljava/lang/Object;)Z

    .line 59
    invoke-static {}, Lcom/ihoc/mgpa/gradish/s1;->b()Lcom/ihoc/mgpa/gradish/s1;

    move-result-object v7

    new-instance v8, Lcom/ihoc/mgpa/gradish/I;

    sget-object v9, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;->VENDOR:Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

    invoke-direct {v8, v9, v1}, Lcom/ihoc/mgpa/gradish/I;-><init>(Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/ihoc/mgpa/gradish/s1;->a(Lcom/ihoc/mgpa/gradish/I;)V

    .line 62
    invoke-static {v6}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->onClass(Ljava/lang/String;)Lcom/ihoc/mgpa/toolkit/util/Reflect;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->field(Ljava/lang/String;)Lcom/ihoc/mgpa/toolkit/util/Reflect;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object p2, v2, v0

    .line 63
    invoke-virtual {v1, v3, v2}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/ihoc/mgpa/toolkit/util/Reflect;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p1

    .line 65
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 66
    :pswitch_1
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 67
    invoke-virtual {p1}, Lcom/ihoc/mgpa/vendor/VendorKey;->getKey()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 69
    sget-object v7, Lcom/ihoc/mgpa/gradish/p1;->a:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v7, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->offer(Ljava/lang/Object;)Z

    .line 70
    invoke-static {}, Lcom/ihoc/mgpa/gradish/s1;->b()Lcom/ihoc/mgpa/gradish/s1;

    move-result-object v7

    new-instance v8, Lcom/ihoc/mgpa/gradish/I;

    sget-object v9, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;->VENDOR:Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

    invoke-direct {v8, v9, v1}, Lcom/ihoc/mgpa/gradish/I;-><init>(Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/ihoc/mgpa/gradish/s1;->a(Lcom/ihoc/mgpa/gradish/I;)V

    .line 73
    invoke-static {v6}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->onClass(Ljava/lang/String;)Lcom/ihoc/mgpa/toolkit/util/Reflect;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->field(Ljava/lang/String;)Lcom/ihoc/mgpa/toolkit/util/Reflect;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object p2, v2, v0

    .line 74
    invoke-virtual {v1, v3, v2}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/ihoc/mgpa/toolkit/util/Reflect;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 77
    :pswitch_2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 79
    :try_start_2
    const-string v0, "PreDownloadServiceSwitch"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception p2

    .line 81
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 83
    :goto_0
    invoke-static {}, Lcom/ihoc/mgpa/gradish/s1;->b()Lcom/ihoc/mgpa/gradish/s1;

    move-result-object p2

    new-instance v0, Lcom/ihoc/mgpa/gradish/I;

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;->PRE_DOWNLOAD_SERVICE:Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

    .line 84
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/ihoc/mgpa/gradish/I;-><init>(Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2, v0}, Lcom/ihoc/mgpa/gradish/s1;->a(Lcom/ihoc/mgpa/gradish/I;)V

    goto :goto_1

    .line 86
    :pswitch_3
    invoke-static {}, Lcom/ihoc/mgpa/gradish/m1;->a()Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/ihoc/mgpa/gradish/m1;->a(Lcom/ihoc/mgpa/vendor/VendorBridgeType;Lcom/ihoc/mgpa/vendor/VendorKey;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    new-array p1, v4, [Ljava/lang/Object;

    const-string/jumbo p2, "thermal state update frequency is limited!."

    invoke-static {p2, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 90
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/gradish/m1;->a()Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/ihoc/mgpa/gradish/m1;->b(Lcom/ihoc/mgpa/vendor/VendorBridgeType;Lcom/ihoc/mgpa/vendor/VendorKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 92
    new-array p1, v4, [Ljava/lang/Object;

    const-string/jumbo p2, "wrapper vendor thermal data exception."

    invoke-static {p2, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 94
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-gt p2, v2, :cond_2

    .line 95
    new-array p1, v4, [Ljava/lang/Object;

    const-string/jumbo p2, "wrapper vendor thermal data is empty, no need to send to app!"

    invoke-static {p2, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 98
    :cond_2
    invoke-static {}, Lcom/ihoc/mgpa/gradish/s1;->b()Lcom/ihoc/mgpa/gradish/s1;

    move-result-object p2

    new-instance v0, Lcom/ihoc/mgpa/gradish/I;

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;->VENDOR:Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

    invoke-direct {v0, v1, p1}, Lcom/ihoc/mgpa/gradish/I;-><init>(Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/ihoc/mgpa/gradish/s1;->a(Lcom/ihoc/mgpa/gradish/I;)V

    return-void

    .line 99
    :pswitch_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 100
    invoke-static {p2}, Lcom/ihoc/mgpa/gradish/i1;->a(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onUpdatePhoneInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 101
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 102
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 104
    invoke-static {}, Lcom/ihoc/mgpa/gradish/s1;->b()Lcom/ihoc/mgpa/gradish/s1;

    move-result-object p2

    new-instance v0, Lcom/ihoc/mgpa/gradish/I;

    sget-object v1, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;->VENDOR:Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

    .line 105
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/ihoc/mgpa/gradish/I;-><init>(Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/ihoc/mgpa/gradish/s1;->a(Lcom/ihoc/mgpa/gradish/I;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
