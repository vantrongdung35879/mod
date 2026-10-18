.class public abstract Lcom/tencent/qimei/ai/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/tencent/qimei/ai/h;->a()Lcom/tencent/qimei/ai/h;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/tencent/qimei/q/b;->a(Lcom/tencent/qimei/ai/h;)Lcom/tencent/qimei/ai/e;

    move-result-object v1

    .line 106
    const-string v2, "1005"

    .line 107
    iget-object v3, v1, Lcom/tencent/qimei/ai/e;->a:Ljava/util/HashMap;

    const-string v4, "6"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-static {p0}, Lcom/tencent/qimei/ag/o;->a(Ljava/lang/String;)Lcom/tencent/qimei/ag/o;

    move-result-object v2

    .line 110
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 112
    invoke-static {}, Lcom/tencent/qimei/ar/d;->a()Lcom/tencent/qimei/ar/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/qimei/ar/d;->i()Landroid/content/Context;

    move-result-object v4

    const-string v5, ""

    if-nez v4, :cond_0

    move-object v4, v5

    goto :goto_0

    .line 120
    :cond_0
    const-class v6, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 121
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 122
    const-string v7, "primaryCpuAbi"

    invoke-static {v6, v4, v7}, Lcom/tencent/qimei/ad/h;->a(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 123
    :goto_0
    const-string v6, "a1"

    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-static {}, Lcom/tencent/qimei/ar/d;->a()Lcom/tencent/qimei/ar/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/qimei/ar/d;->i()Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 133
    :cond_1
    const-class v5, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 134
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 135
    const-string v6, "nativeLibraryDir"

    invoke-static {v5, v4, v6}, Lcom/tencent/qimei/ad/h;->a(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    .line 136
    :goto_1
    const-string v4, "a2"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v4, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v5, "a3"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v4, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    const-string v5, "a4"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-virtual {v2}, Lcom/tencent/qimei/ag/o;->b()Ljava/lang/String;

    move-result-object v2

    const-string v4, "a5"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v4, "a6"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    const-string v4, "a7"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 144
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 145
    iget-object v3, v1, Lcom/tencent/qimei/ai/e;->a:Ljava/util/HashMap;

    const-string v4, "7"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string/jumbo v2, "v2"

    invoke-virtual {v0, v1, v2, p0}, Lcom/tencent/qimei/ai/h;->a(Lcom/tencent/qimei/ai/e;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static sendSoLoadError(Ljava/lang/String;)I
    .locals 4
    .annotation runtime Lcom/tencent/qimei/p/b;
    .end annotation

    .line 1
    invoke-static {}, Lcom/tencent/qimei/ai/h;->a()Lcom/tencent/qimei/ai/h;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/tencent/qimei/q/b;->a(Lcom/tencent/qimei/ai/h;)Lcom/tencent/qimei/ai/e;

    move-result-object v1

    .line 175
    const-string v2, "6"

    .line 176
    iget-object v3, v1, Lcom/tencent/qimei/ai/e;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object p0, Lcom/tencent/qimei/v/a;->a:Ljava/lang/String;

    .line 178
    const-string v2, "L1"

    invoke-virtual {v0, v1, v2, p0}, Lcom/tencent/qimei/ai/h;->a(Lcom/tencent/qimei/ai/e;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
