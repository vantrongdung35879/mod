.class public final Lcom/tencent/qimei/ao/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/tencent/qimei/ao/g;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/ao/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/ao/f;->a:Lcom/tencent/qimei/ao/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/tencent/qimei/ao/f;->a:Lcom/tencent/qimei/ao/g;

    iget-object v0, v0, Lcom/tencent/qimei/ao/g;->a:Lcom/tencent/qimei/ao/h;

    sget-object v2, Lcom/tencent/qimei/ao/h;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    sget-object v2, Lcom/tencent/qimei/ac/d;->a:Lcom/tencent/qimei/ac/e;

    .line 3
    invoke-virtual {v2}, Lcom/tencent/qimei/ac/e;->a()Landroid/content/SharedPreferences;

    move-result-object v3

    const-wide/16 v4, 0x0

    if-nez v3, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v3, v2, Lcom/tencent/qimei/ac/e;->a:Landroid/content/SharedPreferences;

    const-string v6, "l_u_time"

    invoke-interface {v3, v6, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 7
    :goto_0
    iget-object v3, v0, Lcom/tencent/qimei/ao/h;->a:Ljava/lang/String;

    .line 8
    invoke-static {v3}, Lcom/tencent/qimei/at/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/at/a;

    move-result-object v3

    .line 9
    iget-object v3, v3, Lcom/tencent/qimei/at/a;->b:Lcom/tencent/qimei/av/a;

    .line 10
    sget-object v6, Lcom/tencent/qimei/au/b;->B:Lcom/tencent/qimei/aa/c;

    .line 11
    iget-object v3, v3, Lcom/tencent/qimei/av/a;->q:Ljava/lang/String;

    .line 12
    invoke-static {v6, v3}, Lcom/tencent/qimei/au/d;->a(Lcom/tencent/qimei/aa/c;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v6, v3

    .line 13
    invoke-static {v4, v5, v6, v7}, Lcom/tencent/qimei/ad/e;->a(JJ)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    const/4 v2, 0x0

    goto :goto_2

    .line 18
    :cond_1
    iget-object v0, v0, Lcom/tencent/qimei/ao/h;->a:Ljava/lang/String;

    .line 19
    invoke-static {v0}, Lcom/tencent/qimei/at/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/at/a;

    move-result-object v0

    .line 20
    iget-object v0, v0, Lcom/tencent/qimei/at/a;->b:Lcom/tencent/qimei/av/a;

    .line 21
    sget-object v3, Lcom/tencent/qimei/au/a;->w:Lcom/tencent/qimei/aa/b;

    iget-object v0, v0, Lcom/tencent/qimei/av/a;->q:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/tencent/qimei/au/d;->a(Lcom/tencent/qimei/aa/b;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 23
    invoke-virtual {v2}, Lcom/tencent/qimei/ac/e;->a()Landroid/content/SharedPreferences;

    move-result-object v3

    if-nez v3, :cond_2

    .line 24
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    .line 26
    :cond_2
    iget-object v2, v2, Lcom/tencent/qimei/ac/e;->a:Landroid/content/SharedPreferences;

    const-string v3, "sp_need_report"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 27
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    :goto_2
    if-nez v2, :cond_4

    return-void

    .line 28
    :cond_4
    new-instance v0, Lcom/tencent/qimei/ao/c;

    invoke-direct {v0}, Lcom/tencent/qimei/ao/c;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/qimei/ao/c;->a()Lcom/tencent/qimei/sdk/S/DataFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qimei/sdk/S/DataFormatter;->a()Ljava/util/HashMap;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v2

    if-gt v2, v5, :cond_5

    return-void

    .line 34
    :cond_5
    iget-object v2, v1, Lcom/tencent/qimei/ao/f;->a:Lcom/tencent/qimei/ao/g;

    iget-object v2, v2, Lcom/tencent/qimei/ao/g;->a:Lcom/tencent/qimei/ao/h;

    .line 35
    iget-object v3, v2, Lcom/tencent/qimei/ao/h;->a:Ljava/lang/String;

    .line 36
    iget-object v6, v2, Lcom/tencent/qimei/ao/h;->c:Ljava/lang/String;

    .line 37
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 38
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/qimei/sdk/S/SpreadValue;

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    :goto_3
    if-nez v6, :cond_7

    goto/16 :goto_6

    .line 43
    :cond_7
    iget-object v7, v2, Lcom/tencent/qimei/ao/h;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-eqz v7, :cond_8

    goto/16 :goto_6

    .line 47
    :cond_8
    iget-object v7, v2, Lcom/tencent/qimei/ao/h;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 48
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 49
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qimei/sdk/S/SpreadValue;

    .line 50
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 52
    :try_start_0
    const-string v10, "aid"

    invoke-virtual {v0}, Lcom/tencent/qimei/sdk/S/SpreadValue;->a()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    const-string v10, "appKey"

    invoke-virtual {v0}, Lcom/tencent/qimei/sdk/S/SpreadValue;->b()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    const-string v10, "firstTime"

    invoke-virtual {v0}, Lcom/tencent/qimei/sdk/S/SpreadValue;->c()J

    move-result-wide v11

    invoke-virtual {v9, v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 55
    const-string v10, "oaid"

    invoke-virtual {v0}, Lcom/tencent/qimei/sdk/S/SpreadValue;->f()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    const-string v10, "q16"

    invoke-virtual {v0}, Lcom/tencent/qimei/sdk/S/SpreadValue;->g()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string v10, "q36"

    invoke-virtual {v0}, Lcom/tencent/qimei/sdk/S/SpreadValue;->h()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string v10, "source"

    invoke-virtual {v0}, Lcom/tencent/qimei/sdk/S/SpreadValue;->i()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    const-string/jumbo v10, "updateTime"

    invoke-virtual {v0}, Lcom/tencent/qimei/sdk/S/SpreadValue;->j()J

    move-result-wide v11

    invoke-virtual {v9, v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 60
    const-string v10, "fromKey"

    invoke-virtual {v0}, Lcom/tencent/qimei/sdk/S/SpreadValue;->d()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    const-string v10, "fromSource"

    invoke-virtual {v0}, Lcom/tencent/qimei/sdk/S/SpreadValue;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 63
    invoke-static {v0}, Lcom/tencent/qimei/af/c;->a(Ljava/lang/Throwable;)V

    .line 64
    :goto_5
    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_4

    .line 66
    :cond_9
    invoke-virtual {v7}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    goto/16 :goto_6

    .line 70
    :cond_a
    sget-object v7, Lcom/tencent/qimei/ac/d;->a:Lcom/tencent/qimei/ac/e;

    invoke-virtual {v7, v4}, Lcom/tencent/qimei/ac/e;->a(Z)V

    .line 73
    invoke-virtual {v6}, Lcom/tencent/qimei/sdk/S/SpreadValue;->b()Ljava/lang/String;

    move-result-object v7

    .line 74
    invoke-virtual {v6}, Lcom/tencent/qimei/sdk/S/SpreadValue;->c()J

    move-result-wide v8

    .line 75
    invoke-virtual {v6}, Lcom/tencent/qimei/sdk/S/SpreadValue;->f()Ljava/lang/String;

    move-result-object v10

    .line 76
    invoke-virtual {v6}, Lcom/tencent/qimei/sdk/S/SpreadValue;->a()Ljava/lang/String;

    move-result-object v11

    .line 77
    invoke-virtual {v6}, Lcom/tencent/qimei/sdk/S/SpreadValue;->j()J

    move-result-wide v12

    .line 78
    invoke-static {v3}, Lcom/tencent/qimei/at/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/at/a;

    move-result-object v6

    .line 79
    iget-object v6, v6, Lcom/tencent/qimei/at/a;->b:Lcom/tencent/qimei/av/a;

    .line 80
    sget-object v14, Lcom/tencent/qimei/au/b;->B:Lcom/tencent/qimei/aa/c;

    .line 81
    iget-object v6, v6, Lcom/tencent/qimei/av/a;->q:Ljava/lang/String;

    .line 82
    invoke-static {v14, v6}, Lcom/tencent/qimei/au/d;->a(Lcom/tencent/qimei/aa/c;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 83
    invoke-static {v3}, Lcom/tencent/qimei/at/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/at/a;

    move-result-object v3

    .line 84
    iget-object v3, v3, Lcom/tencent/qimei/at/a;->b:Lcom/tencent/qimei/av/a;

    .line 85
    sget-object v14, Lcom/tencent/qimei/au/a;->w:Lcom/tencent/qimei/aa/b;

    iget-object v3, v3, Lcom/tencent/qimei/av/a;->q:Ljava/lang/String;

    invoke-static {v14, v3}, Lcom/tencent/qimei/au/d;->a(Lcom/tencent/qimei/aa/b;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 86
    new-instance v14, Lcom/tencent/qimei/ao/e;

    invoke-direct {v14, v2}, Lcom/tencent/qimei/ao/e;-><init>(Lcom/tencent/qimei/ao/h;)V

    .line 87
    invoke-static {}, Lcom/tencent/qimei/ai/h;->a()Lcom/tencent/qimei/ai/h;

    move-result-object v2

    .line 88
    invoke-static {v2}, Lcom/tencent/qimei/q/b;->a(Lcom/tencent/qimei/ai/h;)Lcom/tencent/qimei/ai/e;

    move-result-object v15

    .line 89
    const-string v4, "6"

    .line 90
    iget-object v5, v15, Lcom/tencent/qimei/ai/e;->a:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v4, "7"

    .line 92
    iget-object v5, v15, Lcom/tencent/qimei/ai/e;->a:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 95
    iget-object v5, v15, Lcom/tencent/qimei/ai/e;->a:Ljava/util/HashMap;

    const-string v8, "8"

    invoke-virtual {v5, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 98
    iget-object v5, v15, Lcom/tencent/qimei/ai/e;->a:Ljava/util/HashMap;

    const-string v8, "9"

    invoke-virtual {v5, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 101
    iget-object v5, v15, Lcom/tencent/qimei/ai/e;->a:Ljava/util/HashMap;

    const-string v6, "10"

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 104
    iget-object v4, v15, Lcom/tencent/qimei/ai/e;->a:Ljava/util/HashMap;

    const-string v5, "11"

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v3, "12"

    .line 106
    iget-object v4, v15, Lcom/tencent/qimei/ai/e;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iput-object v14, v15, Lcom/tencent/qimei/ai/e;->b:Lcom/tencent/qimei/ao/e;

    .line 108
    const-string v0, "s1"

    invoke-virtual {v2, v15, v0, v7}, Lcom/tencent/qimei/ai/h;->a(Lcom/tencent/qimei/ai/e;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 109
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v7, v0, v2

    const-string v2, "d"

    const-string v3, "Spread data has been reported over,appKey = %s"

    invoke-static {v2, v3, v0}, Lcom/tencent/qimei/af/c;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_6
    return-void
.end method
