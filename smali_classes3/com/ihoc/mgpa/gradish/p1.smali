.class public abstract Lcom/ihoc/mgpa/gradish/p1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/util/concurrent/LinkedBlockingDeque;

.field public static b:Ljava/util/concurrent/LinkedBlockingDeque;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    sput-object v0, Lcom/ihoc/mgpa/gradish/p1;->a:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 2
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    sput-object v0, Lcom/ihoc/mgpa/gradish/p1;->b:Ljava/util/concurrent/LinkedBlockingDeque;

    return-void
.end method

.method public static a(Lcom/ihoc/mgpa/vendor/VendorKey;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_0
    const-string v1, "code"

    invoke-virtual {p0}, Lcom/ihoc/mgpa/vendor/VendorKey;->getKey()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4
    const-string v1, "msg"

    const-string v2, "run exception!"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    sget-object v1, Lcom/ihoc/mgpa/gradish/p1$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    goto :goto_1

    .line 11
    :cond_0
    sget-object p0, Lcom/ihoc/mgpa/gradish/p1;->b:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    .line 12
    invoke-static {p1}, Lcom/ihoc/mgpa/gradish/p1;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    .line 13
    :cond_1
    sget-object p0, Lcom/ihoc/mgpa/gradish/p1;->a:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    .line 14
    invoke-static {p1}, Lcom/ihoc/mgpa/gradish/p1;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v0, p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 23
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 9

    .line 26
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 27
    sget-object v1, Lcom/ihoc/mgpa/vendor/VendorKey;->FrameInterpolation:Lcom/ihoc/mgpa/vendor/VendorKey;

    invoke-virtual {v1}, Lcom/ihoc/mgpa/vendor/VendorKey;->getKey()I

    move-result v2

    const-string v3, "code"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 28
    sget-boolean v2, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->frameInterpolation:Z

    const-string v3, "msg"

    if-nez v2, :cond_0

    .line 29
    const-string p0, "cloud config is closed!"

    invoke-virtual {v0, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0

    .line 32
    :cond_0
    invoke-static {p0}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 33
    const-string p0, "param is is null"

    invoke-virtual {v0, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0

    .line 36
    :cond_1
    invoke-static {}, Lcom/ihoc/mgpa/vendor/VendorBridgeManager;->getAvailableVendorBridgeType()Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    move-result-object v2

    .line 39
    sget-object v4, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->VIVO_SOCKET:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    const/4 v5, 0x1

    if-eq v2, v4, :cond_3

    sget-object v4, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->KOGSOCKET:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    if-eq v2, v4, :cond_3

    sget-object v4, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->SOCKET:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    if-ne v2, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 40
    :cond_3
    :goto_0
    invoke-static {}, Lcom/ihoc/mgpa/gradish/u1;->a()Lcom/ihoc/mgpa/gradish/u1;

    move-result-object v4

    const/16 v6, 0xb

    const-wide/16 v7, 0x32

    invoke-virtual {v4, v6, p0, v7, v8}, Lcom/ihoc/mgpa/gradish/u1;->a(ILjava/lang/String;J)V

    const/4 v4, 0x1

    .line 43
    :goto_1
    sget-object v6, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->VIVO_BINDER:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    if-eq v2, v6, :cond_4

    sget-object v6, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->VIVO_KOG_BINDER:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    if-ne v2, v6, :cond_5

    :cond_4
    const-string v2, "setSwitchState"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 44
    invoke-virtual {v1}, Lcom/ihoc/mgpa/vendor/VendorKey;->getKey()I

    move-result v2

    invoke-static {p0}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->quoteJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/ihoc/mgpa/gradish/m1;->c(ILjava/lang/String;)V

    goto :goto_2

    :cond_5
    move v5, v4

    :goto_2
    const-string v2, "body"

    if-eqz v5, :cond_7

    .line 48
    sget-object p0, Lcom/ihoc/mgpa/gradish/p1;->a:Ljava/util/concurrent/LinkedBlockingDeque;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1f4

    invoke-virtual {p0, v4, v5, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->pollFirst(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_6

    .line 50
    const-string p0, "get result async fail"

    invoke-virtual {v0, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 52
    :cond_6
    const-string v1, "get result async success!"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_3
    return-object v0

    .line 57
    :cond_7
    invoke-static {v1, p0}, Lcom/ihoc/mgpa/gradish/m1;->a(Lcom/ihoc/mgpa/vendor/VendorKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 58
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    if-nez p0, :cond_8

    .line 60
    const-string p0, "get result sync fail"

    invoke-virtual {v0, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    .line 62
    :cond_8
    const-string v5, "get result sync success!"

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    invoke-virtual {v1}, Lcom/ihoc/mgpa/vendor/VendorKey;->getKeyStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_4
    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 9

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    sget-object v1, Lcom/ihoc/mgpa/vendor/VendorKey;->SuperResolution:Lcom/ihoc/mgpa/vendor/VendorKey;

    invoke-virtual {v1}, Lcom/ihoc/mgpa/vendor/VendorKey;->getKey()I

    move-result v2

    const-string v3, "code"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3
    sget-boolean v2, Lcom/ihoc/mgpa/toolkit/model/DataRecorder$FeatureStatus;->superResolution:Z

    const-string v3, "msg"

    if-nez v2, :cond_0

    .line 4
    const-string p0, "cloud config is closed!"

    invoke-virtual {v0, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0

    .line 7
    :cond_0
    invoke-static {p0}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    const-string p0, "param is is null"

    invoke-virtual {v0, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0

    .line 11
    :cond_1
    invoke-static {}, Lcom/ihoc/mgpa/vendor/VendorBridgeManager;->getAvailableVendorBridgeType()Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    move-result-object v2

    .line 14
    sget-object v4, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->VIVO_SOCKET:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    const/4 v5, 0x1

    if-eq v2, v4, :cond_3

    sget-object v4, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->KOGSOCKET:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    if-eq v2, v4, :cond_3

    sget-object v4, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->SOCKET:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    if-ne v2, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 16
    :cond_3
    :goto_0
    invoke-static {}, Lcom/ihoc/mgpa/gradish/u1;->a()Lcom/ihoc/mgpa/gradish/u1;

    move-result-object v4

    const/16 v6, 0xc

    const-wide/16 v7, 0x32

    invoke-virtual {v4, v6, p0, v7, v8}, Lcom/ihoc/mgpa/gradish/u1;->a(ILjava/lang/String;J)V

    const/4 v4, 0x1

    .line 19
    :goto_1
    sget-object v6, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->VIVO_BINDER:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    if-eq v2, v6, :cond_4

    sget-object v6, Lcom/ihoc/mgpa/vendor/VendorBridgeType;->VIVO_KOG_BINDER:Lcom/ihoc/mgpa/vendor/VendorBridgeType;

    if-ne v2, v6, :cond_5

    :cond_4
    const-string v2, "setSwitchState"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 20
    invoke-virtual {v1}, Lcom/ihoc/mgpa/vendor/VendorKey;->getKey()I

    move-result v2

    invoke-static {p0}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->quoteJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/ihoc/mgpa/gradish/m1;->c(ILjava/lang/String;)V

    .line 21
    const-string v2, "get result success!"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_5
    move v5, v4

    :goto_2
    const-string v2, "body"

    if-eqz v5, :cond_7

    .line 26
    sget-object p0, Lcom/ihoc/mgpa/gradish/p1;->b:Ljava/util/concurrent/LinkedBlockingDeque;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1f4

    invoke-virtual {p0, v4, v5, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->pollFirst(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_6

    .line 28
    const-string p0, "get result async fail"

    invoke-virtual {v0, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 30
    :cond_6
    const-string v1, "get result async success!"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_3
    return-object v0

    .line 35
    :cond_7
    invoke-static {v1, p0}, Lcom/ihoc/mgpa/gradish/m1;->a(Lcom/ihoc/mgpa/vendor/VendorKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 36
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    if-nez p0, :cond_8

    .line 38
    const-string p0, "get result sync fail"

    invoke-virtual {v0, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    .line 40
    :cond_8
    const-string v5, "get result sync success!"

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    invoke-virtual {v1}, Lcom/ihoc/mgpa/vendor/VendorKey;->getKeyStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_4
    return-object v0
.end method
