.class public abstract Lcom/tencent/qimei/ak/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/tencent/qimei/v/c;Lcom/tencent/qimei/ag/o;Lcom/tencent/qimei/am/a;)Ljava/lang/String;
    .locals 7

    .line 103
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 105
    :try_start_0
    const-string v1, "harmony"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    const-string v2, "com.huawei.system.BuildEx"

    const-string v3, "getOsBrand"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    new-array v6, v4, [Ljava/lang/Object;

    .line 107
    invoke-static {v2, v3, v5, v6}, Lcom/tencent/qimei/ad/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 108
    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    const-string v3, "harmony"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    :goto_0
    if-eqz v4, :cond_1

    .line 117
    const-string v2, "1"

    goto :goto_1

    :cond_1
    const-string v2, "0"

    :goto_1
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    const-string v1, "clone"

    invoke-static {}, Lcom/tencent/qimei/v/c;->q()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "1"

    goto :goto_2

    :cond_2
    const-string v2, "0"

    :goto_2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    const-string v1, "containe"

    invoke-static {}, Lcom/tencent/qimei/v/c;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    const-string v1, "oz"

    .line 121
    iget-object v2, p1, Lcom/tencent/qimei/ag/o;->a:Ljava/lang/String;

    .line 122
    invoke-static {v2}, Lcom/tencent/qimei/at/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/at/a;

    move-result-object v2

    .line 123
    iget-object v2, v2, Lcom/tencent/qimei/at/a;->b:Lcom/tencent/qimei/av/a;

    .line 124
    iget-boolean v3, v2, Lcom/tencent/qimei/av/a;->i:Z

    if-eqz v3, :cond_3

    .line 125
    sget-object v3, Lcom/tencent/qimei/au/a;->s:Lcom/tencent/qimei/aa/b;

    iget-object v2, v2, Lcom/tencent/qimei/av/a;->q:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/tencent/qimei/au/d;->a(Lcom/tencent/qimei/aa/b;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 126
    invoke-static {}, Lcom/tencent/qimei/ag/p;->a()Lcom/tencent/qimei/ag/p;

    move-result-object v2

    new-instance v3, Lcom/tencent/qimei/ag/c;

    invoke-direct {v3}, Lcom/tencent/qimei/ag/c;-><init>()V

    const/16 v4, 0x8

    invoke-virtual {v2, v4, v3}, Lcom/tencent/qimei/ag/p;->a(ILcom/tencent/qimei/ag/r;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 127
    :cond_3
    const-string v2, ""

    .line 128
    :goto_3
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    const-string v1, "oz2"

    .line 130
    iget-object v2, p1, Lcom/tencent/qimei/ag/o;->a:Ljava/lang/String;

    .line 131
    invoke-static {v2}, Lcom/tencent/qimei/at/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/at/a;

    move-result-object v2

    .line 132
    iget-object v2, v2, Lcom/tencent/qimei/at/a;->b:Lcom/tencent/qimei/av/a;

    .line 133
    sget-object v3, Lcom/tencent/qimei/au/a;->t:Lcom/tencent/qimei/aa/b;

    iget-object v2, v2, Lcom/tencent/qimei/av/a;->q:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/tencent/qimei/au/d;->a(Lcom/tencent/qimei/aa/b;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    .line 134
    const-string v2, ""

    goto :goto_4

    .line 136
    :cond_4
    invoke-static {}, Lcom/tencent/qimei/ag/p;->a()Lcom/tencent/qimei/ag/p;

    move-result-object v2

    new-instance v3, Lcom/tencent/qimei/ag/d;

    invoke-direct {v3}, Lcom/tencent/qimei/ag/d;-><init>()V

    const/16 v4, 0xa

    invoke-virtual {v2, v4, v3}, Lcom/tencent/qimei/ag/p;->a(ILcom/tencent/qimei/ag/r;)Ljava/lang/String;

    move-result-object v2

    .line 137
    :goto_4
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    const-string v1, "oo"

    .line 139
    iget-object v2, p1, Lcom/tencent/qimei/ag/o;->a:Ljava/lang/String;

    .line 140
    invoke-static {v2}, Lcom/tencent/qimei/at/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/at/a;

    move-result-object v2

    .line 141
    iget-object v2, v2, Lcom/tencent/qimei/at/a;->b:Lcom/tencent/qimei/av/a;

    .line 142
    sget-object v3, Lcom/tencent/qimei/au/a;->u:Lcom/tencent/qimei/aa/b;

    iget-object v2, v2, Lcom/tencent/qimei/av/a;->q:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/tencent/qimei/au/d;->a(Lcom/tencent/qimei/aa/b;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    .line 143
    const-string v2, ""

    goto :goto_5

    .line 145
    :cond_5
    invoke-static {}, Lcom/tencent/qimei/ag/p;->a()Lcom/tencent/qimei/ag/p;

    move-result-object v2

    new-instance v3, Lcom/tencent/qimei/ag/e;

    invoke-direct {v3}, Lcom/tencent/qimei/ag/e;-><init>()V

    const/16 v4, 0x9

    invoke-virtual {v2, v4, v3}, Lcom/tencent/qimei/ag/p;->a(ILcom/tencent/qimei/ag/r;)Ljava/lang/String;

    move-result-object v2

    .line 146
    :goto_5
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    const-string v1, "kelong"

    invoke-virtual {p2}, Lcom/tencent/qimei/am/a;->a()Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p2, "1"

    goto :goto_6

    :cond_6
    const-string p2, "0"

    :goto_6
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    const-string p2, "ip"

    invoke-virtual {p1}, Lcom/tencent/qimei/ag/o;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    invoke-static {}, Lcom/tencent/qimei/ar/d;->a()Lcom/tencent/qimei/ar/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/qimei/ar/d;->i()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/qimei/ad/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 151
    const-string p2, "multiUser"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    const-string p1, "bod"

    const/16 p2, 0xc

    invoke-static {p2}, Lcom/tencent/qimei/r/b;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/qimei/uin/U;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    const-string p1, "brd"

    const/16 p2, 0xd

    invoke-static {p2}, Lcom/tencent/qimei/r/b;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/qimei/uin/U;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    const-string p1, "dv"

    const/16 p2, 0xe

    invoke-static {p2}, Lcom/tencent/qimei/r/b;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/qimei/uin/U;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    const-string p1, "firstLevel"

    const/16 p2, 0xf

    invoke-static {p2}, Lcom/tencent/qimei/r/b;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/qimei/uin/U;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    const-string p1, "manufact"

    const/16 p2, 0x10

    invoke-static {p2}, Lcom/tencent/qimei/r/b;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/qimei/uin/U;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    const-string p1, "name"

    const/16 p2, 0x11

    invoke-static {p2}, Lcom/tencent/qimei/r/b;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/qimei/uin/U;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    const-string p1, "host"

    const/16 p2, 0x12

    invoke-static {p2}, Lcom/tencent/qimei/r/b;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/qimei/uin/U;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    const-string p1, "kernel"

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 160
    :try_start_1
    iget-object p2, p0, Lcom/tencent/qimei/v/c;->n:Ljava/lang/String;

    if-nez p2, :cond_7

    .line 161
    invoke-static {}, Lcom/tencent/qimei/uin/U;->c()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/tencent/qimei/v/c;->n:Ljava/lang/String;

    .line 163
    :cond_7
    iget-object p2, p0, Lcom/tencent/qimei/v/c;->n:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    .line 164
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    const-string p0, "pre"

    invoke-static {}, Lcom/tencent/qimei/v/a;->h()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    const-string p0, "av"

    invoke-static {}, Lcom/tencent/qimei/v/a;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    const-string p0, "ch"

    invoke-static {}, Lcom/tencent/qimei/v/a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    const-string/jumbo p0, "svr"

    .line 169
    invoke-static {}, Lcom/tencent/qimei/v/a;->c()Ljava/lang/String;

    move-result-object p1

    .line 170
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-static {}, Lcom/tencent/qimei/v/a;->e()Ljava/lang/String;

    move-result-object p1

    .line 171
    :cond_8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 172
    const-string p1, ""

    goto :goto_7

    :cond_9
    const/16 p2, 0x3a

    .line 174
    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p2

    if-gez p2, :cond_a

    .line 176
    const-string p1, ""

    goto :goto_7

    :cond_a
    add-int/lit8 p2, p2, 0x1

    .line 178
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 179
    :goto_7
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    const-string p0, "fit"

    invoke-static {}, Lcom/tencent/qimei/v/a;->d()J

    move-result-wide p1

    invoke-virtual {v0, p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 181
    const-string p0, "jv"

    invoke-static {}, Lcom/tencent/qimei/ar/d;->a()Lcom/tencent/qimei/ar/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/qimei/ar/d;->getSdkVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_8

    :catchall_0
    move-exception p1

    .line 183
    monitor-exit p0

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p0

    .line 184
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 186
    :goto_8
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 1
    new-instance v0, Lcom/tencent/qimei/ar/a;

    invoke-direct {v0, p0}, Lcom/tencent/qimei/ar/a;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/tencent/qimei/ag/o;->a(Ljava/lang/String;)Lcom/tencent/qimei/ag/o;

    move-result-object v1

    .line 3
    const-class v2, Lcom/tencent/qimei/v/c;

    monitor-enter v2

    .line 4
    :try_start_0
    sget-object v3, Lcom/tencent/qimei/v/c;->p:Lcom/tencent/qimei/v/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 5
    invoke-static {p0}, Lcom/tencent/qimei/am/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/am/a;

    move-result-object v2

    .line 6
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const/4 v5, 0x0

    .line 8
    :try_start_1
    const-string v6, "1"

    invoke-virtual {v0}, Lcom/tencent/qimei/ar/a;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    const-string v6, "2"

    invoke-static {}, Lcom/tencent/qimei/ar/d;->a()Lcom/tencent/qimei/ar/d;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/qimei/ar/d;->i()Landroid/content/Context;

    move-result-object v7

    .line 10
    invoke-virtual {v7}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 11
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    const-string v6, "3"

    .line 14
    invoke-static {p0}, Lcom/tencent/qimei/at/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/at/a;

    move-result-object v7

    .line 15
    iget-object v7, v7, Lcom/tencent/qimei/at/a;->b:Lcom/tencent/qimei/av/a;

    .line 16
    sget-object v8, Lcom/tencent/qimei/au/a;->h:Lcom/tencent/qimei/aa/b;

    iget-object v7, v7, Lcom/tencent/qimei/av/a;->q:Ljava/lang/String;

    invoke-static {v8, v7}, Lcom/tencent/qimei/au/d;->a(Lcom/tencent/qimei/aa/b;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_0

    .line 17
    const-string v7, ""

    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/qimei/ar/a;->d()Ljava/lang/String;

    move-result-object v7

    .line 21
    :goto_0
    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    const-string v6, "4"

    const/16 v7, 0xd

    invoke-static {v7}, Lcom/tencent/qimei/r/b;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/qimei/uin/U;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    const-string v6, "5"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    const-string v6, "6"

    .line 25
    iget-object v7, v1, Lcom/tencent/qimei/ag/o;->a:Ljava/lang/String;

    .line 26
    invoke-static {v7}, Lcom/tencent/qimei/at/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/at/a;

    move-result-object v7

    .line 27
    iget-object v7, v7, Lcom/tencent/qimei/at/a;->b:Lcom/tencent/qimei/av/a;

    .line 28
    iget-object v7, v7, Lcom/tencent/qimei/av/a;->m:Ljava/lang/String;

    .line 29
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_1

    .line 32
    :cond_1
    iget-object v7, v1, Lcom/tencent/qimei/ag/o;->a:Ljava/lang/String;

    .line 33
    invoke-static {v7}, Lcom/tencent/qimei/at/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/at/a;

    move-result-object v7

    .line 34
    iget-object v7, v7, Lcom/tencent/qimei/at/a;->b:Lcom/tencent/qimei/av/a;

    .line 35
    iget-boolean v8, v7, Lcom/tencent/qimei/av/a;->a:Z

    if-eqz v8, :cond_2

    iget-boolean v8, v7, Lcom/tencent/qimei/av/a;->i:Z

    if-eqz v8, :cond_2

    sget-object v8, Lcom/tencent/qimei/au/a;->g:Lcom/tencent/qimei/aa/b;

    iget-object v7, v7, Lcom/tencent/qimei/av/a;->q:Ljava/lang/String;

    invoke-static {v8, v7}, Lcom/tencent/qimei/au/d;->a(Lcom/tencent/qimei/aa/b;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 36
    invoke-static {}, Lcom/tencent/qimei/ag/p;->a()Lcom/tencent/qimei/ag/p;

    move-result-object v7

    new-instance v8, Lcom/tencent/qimei/ag/b;

    invoke-direct {v8}, Lcom/tencent/qimei/ag/b;-><init>()V

    const/4 v9, 0x7

    invoke-virtual {v7, v9, v8}, Lcom/tencent/qimei/ag/p;->a(ILcom/tencent/qimei/ag/r;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 37
    :cond_2
    const-string v7, ""

    .line 38
    :goto_1
    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    const-string v6, "7"

    .line 40
    iget-object v7, v1, Lcom/tencent/qimei/ag/o;->a:Ljava/lang/String;

    .line 41
    invoke-static {v7}, Lcom/tencent/qimei/at/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/at/a;

    move-result-object v7

    .line 42
    iget-object v7, v7, Lcom/tencent/qimei/at/a;->b:Lcom/tencent/qimei/av/a;

    .line 43
    iget-boolean v8, v7, Lcom/tencent/qimei/av/a;->b:Z

    if-eqz v8, :cond_3

    .line 44
    iget-boolean v8, v7, Lcom/tencent/qimei/av/a;->i:Z

    if-eqz v8, :cond_3

    sget-object v8, Lcom/tencent/qimei/au/a;->n:Lcom/tencent/qimei/aa/b;

    iget-object v7, v7, Lcom/tencent/qimei/av/a;->q:Ljava/lang/String;

    invoke-static {v8, v7}, Lcom/tencent/qimei/au/d;->a(Lcom/tencent/qimei/aa/b;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 45
    invoke-static {}, Lcom/tencent/qimei/ag/p;->a()Lcom/tencent/qimei/ag/p;

    move-result-object v7

    new-instance v8, Lcom/tencent/qimei/ag/i;

    invoke-direct {v8}, Lcom/tencent/qimei/ag/i;-><init>()V

    const/4 v9, 0x1

    invoke-virtual {v7, v9, v8}, Lcom/tencent/qimei/ag/p;->a(ILcom/tencent/qimei/ag/r;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 46
    :cond_3
    const-string v7, ""

    .line 47
    :goto_2
    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    const-string v6, "8"

    .line 49
    iget-object v7, v1, Lcom/tencent/qimei/ag/o;->a:Ljava/lang/String;

    .line 50
    invoke-static {v7}, Lcom/tencent/qimei/at/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/at/a;

    move-result-object v7

    .line 51
    iget-object v7, v7, Lcom/tencent/qimei/at/a;->b:Lcom/tencent/qimei/av/a;

    .line 52
    iget-boolean v8, v7, Lcom/tencent/qimei/av/a;->c:Z

    if-eqz v8, :cond_4

    .line 53
    iget-boolean v8, v7, Lcom/tencent/qimei/av/a;->i:Z

    if-eqz v8, :cond_4

    sget-object v8, Lcom/tencent/qimei/au/a;->o:Lcom/tencent/qimei/aa/b;

    iget-object v7, v7, Lcom/tencent/qimei/av/a;->q:Ljava/lang/String;

    invoke-static {v8, v7}, Lcom/tencent/qimei/au/d;->a(Lcom/tencent/qimei/aa/b;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 54
    invoke-static {}, Lcom/tencent/qimei/ag/p;->a()Lcom/tencent/qimei/ag/p;

    move-result-object v7

    new-instance v8, Lcom/tencent/qimei/ag/j;

    invoke-direct {v8}, Lcom/tencent/qimei/ag/j;-><init>()V

    const/4 v9, 0x2

    invoke-virtual {v7, v9, v8}, Lcom/tencent/qimei/ag/p;->a(ILcom/tencent/qimei/ag/r;)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 55
    :cond_4
    const-string v7, ""

    .line 56
    :goto_3
    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string v6, "9"

    invoke-virtual {v1}, Lcom/tencent/qimei/ag/o;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string v6, "10"

    .line 59
    iget-object v7, v1, Lcom/tencent/qimei/ag/o;->a:Ljava/lang/String;

    .line 60
    invoke-static {v7}, Lcom/tencent/qimei/at/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/at/a;

    move-result-object v7

    .line 61
    iget-object v7, v7, Lcom/tencent/qimei/at/a;->b:Lcom/tencent/qimei/av/a;

    .line 62
    iget-boolean v8, v7, Lcom/tencent/qimei/av/a;->e:Z

    if-eqz v8, :cond_5

    .line 63
    iget-boolean v8, v7, Lcom/tencent/qimei/av/a;->i:Z

    if-eqz v8, :cond_5

    sget-object v8, Lcom/tencent/qimei/au/a;->p:Lcom/tencent/qimei/aa/b;

    iget-object v7, v7, Lcom/tencent/qimei/av/a;->q:Ljava/lang/String;

    invoke-static {v8, v7}, Lcom/tencent/qimei/au/d;->a(Lcom/tencent/qimei/aa/b;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 64
    invoke-static {}, Lcom/tencent/qimei/ag/p;->a()Lcom/tencent/qimei/ag/p;

    move-result-object v7

    new-instance v8, Lcom/tencent/qimei/ag/l;

    invoke-direct {v8}, Lcom/tencent/qimei/ag/l;-><init>()V

    const/4 v9, 0x4

    invoke-virtual {v7, v9, v8}, Lcom/tencent/qimei/ag/p;->a(ILcom/tencent/qimei/ag/r;)Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    .line 65
    :cond_5
    const-string v7, ""

    .line 66
    :goto_4
    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    const-string v6, "11"

    .line 68
    iget-object v7, v1, Lcom/tencent/qimei/ag/o;->a:Ljava/lang/String;

    .line 69
    invoke-static {v7}, Lcom/tencent/qimei/at/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/at/a;

    move-result-object v7

    .line 70
    iget-object v7, v7, Lcom/tencent/qimei/at/a;->b:Lcom/tencent/qimei/av/a;

    .line 71
    iget-boolean v8, v7, Lcom/tencent/qimei/av/a;->f:Z

    if-eqz v8, :cond_6

    .line 72
    iget-boolean v8, v7, Lcom/tencent/qimei/av/a;->i:Z

    if-eqz v8, :cond_6

    sget-object v8, Lcom/tencent/qimei/au/a;->q:Lcom/tencent/qimei/aa/b;

    iget-object v7, v7, Lcom/tencent/qimei/av/a;->q:Ljava/lang/String;

    invoke-static {v8, v7}, Lcom/tencent/qimei/au/d;->a(Lcom/tencent/qimei/aa/b;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 73
    invoke-static {}, Lcom/tencent/qimei/ag/p;->a()Lcom/tencent/qimei/ag/p;

    move-result-object v7

    new-instance v8, Lcom/tencent/qimei/ag/n;

    invoke-direct {v8}, Lcom/tencent/qimei/ag/n;-><init>()V

    const/4 v9, 0x5

    invoke-virtual {v7, v9, v8}, Lcom/tencent/qimei/ag/p;->a(ILcom/tencent/qimei/ag/r;)Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    .line 74
    :cond_6
    const-string v7, ""

    .line 75
    :goto_5
    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    const-string v6, "13"

    invoke-virtual {v0}, Lcom/tencent/qimei/ar/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    const-string v0, "14"

    invoke-virtual {v3}, Lcom/tencent/qimei/v/c;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    invoke-static {}, Lcom/tencent/qimei/ad/g;->a()Lcom/tencent/qimei/ad/g;

    move-result-object v0

    .line 79
    iget-object v6, v0, Lcom/tencent/qimei/ad/g;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-nez v6, :cond_7

    .line 80
    invoke-virtual {v0, p0}, Lcom/tencent/qimei/ad/g;->a(Ljava/lang/String;)V

    .line 83
    :cond_7
    iget-object v6, v0, Lcom/tencent/qimei/ad/g;->b:Ljava/lang/String;

    .line 84
    iget-object v7, v0, Lcom/tencent/qimei/ad/g;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-nez v7, :cond_8

    .line 85
    invoke-virtual {v0, p0}, Lcom/tencent/qimei/ad/g;->a(Ljava/lang/String;)V

    .line 90
    :cond_8
    iget-object p0, v0, Lcom/tencent/qimei/ad/g;->c:Ljava/lang/String;

    .line 91
    const-string v0, "15"

    invoke-virtual {v4, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    const-string v0, "16"

    invoke-virtual {v4, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    const-string p0, "12"

    invoke-static {v3, v1, v2}, Lcom/tencent/qimei/ak/d;->a(Lcom/tencent/qimei/v/c;Lcom/tencent/qimei/ag/o;Lcom/tencent/qimei/am/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    .line 95
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-exception p0

    .line 97
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_6
    if-nez v5, :cond_9

    .line 100
    const-string v5, ""

    :cond_9
    return-object v5

    :catchall_0
    move-exception p0

    .line 102
    monitor-exit v2

    throw p0
.end method
