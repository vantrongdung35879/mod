.class public abstract Lcom/tencent/qimei/ak/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Lcom/tencent/qimei/r/b;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/qimei/ak/a;->a:Ljava/lang/String;

    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Lcom/tencent/qimei/r/b;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/qimei/ak/a;->b:Ljava/lang/String;

    const/4 v0, 0x4

    .line 3
    invoke-static {v0}, Lcom/tencent/qimei/r/b;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/qimei/ak/a;->c:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/qimei/sdk/Qimei;
    .locals 7

    const-class v0, Lcom/tencent/qimei/ak/a;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/tencent/qimei/ak/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_7

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v1

    goto :goto_1

    .line 6
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 11
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 12
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 13
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 18
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 19
    const-string v3, "A3"

    invoke-virtual {v2, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_1
    if-nez v2, :cond_3

    monitor-exit v0

    return-object v1

    .line 20
    :cond_3
    :try_start_3
    const-string p0, "A3"

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 21
    const-string v3, "A153"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 22
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_4

    monitor-exit v0

    return-object v1

    .line 26
    :cond_4
    :try_start_4
    new-instance v1, Lcom/tencent/qimei/sdk/Qimei;

    invoke-direct {v1, p1}, Lcom/tencent/qimei/sdk/Qimei;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 29
    iput-object p0, v1, Lcom/tencent/qimei/sdk/Qimei;->b:Ljava/lang/String;

    .line 30
    :cond_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6

    .line 31
    iput-object v2, v1, Lcom/tencent/qimei/sdk/Qimei;->c:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_6
    monitor-exit v0

    return-object v1

    :cond_7
    :goto_2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    .line 32
    const-string p0, ""

    return-object p0

    .line 34
    :cond_0
    const-class v0, Lcom/tencent/qimei/ak/a;

    monitor-enter v0

    .line 35
    :try_start_0
    invoke-static {p0}, Lcom/tencent/qimei/ac/h;->a(Landroid/content/Context;)Lcom/tencent/qimei/ac/h;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 37
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    if-eqz v1, :cond_1

    .line 38
    invoke-virtual {v1}, Lcom/tencent/qimei/ac/h;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 40
    invoke-virtual {v1}, Lcom/tencent/qimei/ac/h;->a()V

    .line 41
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 46
    :cond_1
    invoke-static {p0}, Lcom/tencent/qimei/ac/a;->a(Landroid/content/Context;)Lcom/tencent/qimei/ac/a;

    move-result-object p0

    .line 47
    sget-object v0, Lcom/tencent/qimei/ak/a;->a:Ljava/lang/String;

    sget-object v1, Lcom/tencent/qimei/ak/a;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/qimei/ac/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 49
    sget-object v1, Lcom/tencent/qimei/ak/a;->b:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/tencent/qimei/ac/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 52
    invoke-virtual {p0, v0}, Lcom/tencent/qimei/ac/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    return-object v1

    .line 54
    :goto_1
    monitor-exit v0

    throw p0
.end method
