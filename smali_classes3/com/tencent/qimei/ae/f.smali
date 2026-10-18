.class public final Lcom/tencent/qimei/ae/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/qimei/ae/f;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2
    const-string p1, "handlerName"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    const-string v3, "appKey"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4
    const-string/jumbo v4, "time"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5
    const-string/jumbo v5, "token"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    new-instance v5, Lcom/tencent/qimei/ae/c;

    invoke-direct {v5, p1, v3, v4, v2}, Lcom/tencent/qimei/ae/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    new-array p1, v1, [Ljava/lang/Object;

    const-string v2, "QMBridge"

    const-string v3, "parse message error"

    invoke-static {v2, v3, p1}, Lcom/tencent/qimei/af/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v5, v0

    :goto_0
    if-eqz v5, :cond_b

    .line 9
    iget-object p1, v5, Lcom/tencent/qimei/ae/c;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, v5, Lcom/tencent/qimei/ae/c;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, v5, Lcom/tencent/qimei/ae/c;->c:Ljava/lang/String;

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, v5, Lcom/tencent/qimei/ae/c;->d:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 11
    iget-object p1, v5, Lcom/tencent/qimei/ae/c;->d:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 14
    rem-int/lit8 v3, v2, 0x2

    const-string v4, "0"

    const/4 v6, 0x1

    if-ne v3, v6, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 17
    div-int/lit8 v3, v2, 0x2

    new-array v3, v3, [B

    .line 18
    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 21
    :cond_0
    div-int/lit8 v3, v2, 0x2

    new-array v3, v3, [B

    :goto_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_2
    if-ge v7, v2, :cond_1

    add-int/lit8 v9, v7, 0x2

    .line 25
    invoke-virtual {p1, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/16 v10, 0x10

    .line 26
    invoke-static {v7, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    int-to-byte v7, v7

    .line 27
    aput-byte v7, v3, v8

    add-int/2addr v8, v6

    move v7, v9

    goto :goto_2

    .line 28
    :cond_1
    :try_start_1
    const-string p1, "35b4cfe6f7eae7acbd7bace522d0db54"

    .line 29
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 30
    invoke-static {v3, p1}, Lcom/tencent/qimei/uin/U;->a([B[B)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "do plain message exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "a"

    invoke-static {v2, p1, v1}, Lcom/tencent/qimei/af/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    if-eqz v0, :cond_2

    .line 35
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_4

    .line 37
    :cond_2
    const-string p1, ""

    .line 38
    :goto_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 39
    const-string p1, "102"

    goto/16 :goto_8

    .line 40
    :cond_3
    iget-object v0, v5, Lcom/tencent/qimei/ae/c;->b:Ljava/lang/String;

    .line 41
    iget-object v1, v5, Lcom/tencent/qimei/ae/c;->c:Ljava/lang/String;

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 44
    const-string p1, "103"

    goto :goto_8

    .line 46
    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 47
    aget-object p1, p1, v6

    .line 48
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    const-wide/16 v0, 0x0

    .line 53
    :try_start_2
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    nop

    move-wide v2, v0

    :goto_5
    const-wide/16 v5, 0x3e8

    mul-long v2, v2, v5

    const-wide/16 v5, 0xa

    .line 57
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 58
    invoke-virtual {p1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    cmp-long p1, v2, v0

    if-eqz p1, :cond_9

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    cmp-long p1, v0, v5

    if-ltz p1, :cond_6

    goto :goto_7

    .line 61
    :cond_6
    sget-object p1, Lcom/tencent/qimei/v/a;->a:Ljava/lang/String;

    .line 62
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "-3"

    if-nez v0, :cond_8

    .line 64
    invoke-static {p1}, Lcom/tencent/qimei/sdk/QimeiSDK;->getInstance(Ljava/lang/String;)Lcom/tencent/qimei/sdk/IQimeiSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/tencent/qimei/sdk/IQimeiSDK;->getQimei()Lcom/tencent/qimei/sdk/Qimei;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_6

    :cond_7
    move-object p1, v4

    goto :goto_8

    :cond_8
    :goto_6
    move-object p1, v1

    goto :goto_8

    .line 73
    :cond_9
    :goto_7
    const-string p1, "101"

    .line 74
    :goto_8
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 75
    sget-object p1, Lcom/tencent/qimei/v/a;->a:Ljava/lang/String;

    .line 76
    invoke-static {p1}, Lcom/tencent/qimei/sdk/QimeiSDK;->getInstance(Ljava/lang/String;)Lcom/tencent/qimei/sdk/IQimeiSDK;

    move-result-object p1

    .line 77
    new-instance v0, Lcom/tencent/qimei/ae/d;

    invoke-direct {v0, p0}, Lcom/tencent/qimei/ae/d;-><init>(Lcom/tencent/qimei/ae/f;)V

    invoke-interface {p1, v0}, Lcom/tencent/qimei/sdk/IQimeiSDK;->getQimei(Lcom/tencent/qimei/sdk/IAsyncQimeiListener;)V

    .line 78
    invoke-static {v4}, Lcom/tencent/qimei/ae/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_9

    .line 79
    :cond_a
    const-string/jumbo v0, "{}"

    invoke-virtual {p0, v0}, Lcom/tencent/qimei/ae/f;->b(Ljava/lang/String;)V

    .line 80
    invoke-static {p1}, Lcom/tencent/qimei/ae/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_9
    return-object p1

    .line 81
    :cond_b
    const-string p1, "100"

    invoke-static {p1}, Lcom/tencent/qimei/ae/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x0

    .line 1
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 2
    const-string v1, "35b4cfe6f7eae7acbd7bace522d0db54"

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 4
    invoke-static {p1, v1}, Lcom/tencent/qimei/uin/U;->a([B[B)[B

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    array-length v1, p1

    shl-int/lit8 v2, v1, 0x1

    .line 6
    new-array v2, v2, [C

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    add-int/lit8 v5, v4, 0x1

    .line 8
    sget-object v6, Lcom/tencent/qimei/ae/a;->a:[C

    aget-byte v7, p1, v3

    and-int/lit16 v8, v7, 0xf0

    ushr-int/lit8 v8, v8, 0x4

    aget-char v8, v6, v8

    aput-char v8, v2, v4

    add-int/lit8 v4, v4, 0x2

    and-int/lit8 v7, v7, 0xf

    .line 9
    aget-char v6, v6, v7

    aput-char v6, v2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "do encrypt message exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "a"

    invoke-static {v1, p1, v0}, Lcom/tencent/qimei/af/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    :cond_1
    const-string p1, ""

    .line 16
    :goto_1
    sget-object v0, Lcom/tencent/qimei/ae/g;->a:Landroid/os/Handler;

    .line 17
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_4

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:window.qimeiCallback(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\')"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 20
    iget-object v0, p0, Lcom/tencent/qimei/ae/f;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 21
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 23
    :goto_2
    instance-of v1, v0, Landroid/webkit/WebView;

    if-eqz v1, :cond_3

    .line 24
    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_3

    .line 25
    :cond_3
    instance-of v1, v0, Lcom/tencent/smtt/sdk/WebView;

    if-eqz v1, :cond_5

    .line 26
    check-cast v0, Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_3

    .line 27
    :cond_4
    new-instance v0, Lcom/tencent/qimei/ae/e;

    invoke-direct {v0, p0, p1}, Lcom/tencent/qimei/ae/e;-><init>(Lcom/tencent/qimei/ae/f;Ljava/lang/String;)V

    .line 28
    sget-object p1, Lcom/tencent/qimei/ae/g;->a:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_3
    return-void
.end method
