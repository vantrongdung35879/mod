.class public final Lcom/tencent/qimei/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/content/SharedPreferences;

.field public b:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/SharedPreferences;
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/tencent/qimei/b/b;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_2

    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qimei/b/b;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qimei/b/b;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    const-string v1, "qm_od_sp"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qimei/b/b;->a:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    goto :goto_1

    .line 11
    :cond_1
    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 12
    monitor-exit p0

    throw v0

    .line 14
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/tencent/qimei/b/b;->a:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tencent/qimei/b/b;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/tencent/qimei/b/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 9

    .line 2
    invoke-virtual {p0}, Lcom/tencent/qimei/b/b;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/qimei/b/b;->b:Landroid/content/Context;

    const-wide/16 v2, 0x0

    if-nez v0, :cond_1

    :goto_0
    move-wide v4, v2

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 9
    :try_start_0
    iget-object v4, p0, Lcom/tencent/qimei/b/b;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-wide v4, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 13
    :goto_1
    invoke-virtual {p0}, Lcom/tencent/qimei/b/b;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v6, "qm_od_i_tm"

    if-nez v0, :cond_2

    move-wide v7, v2

    goto :goto_2

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/tencent/qimei/b/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, v6, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    :goto_2
    cmp-long v0, v7, v2

    if-nez v0, :cond_4

    .line 18
    invoke-virtual {p0}, Lcom/tencent/qimei/b/b;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_4

    .line 21
    :cond_3
    iget-object v0, p0, Lcom/tencent/qimei/b/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v6, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_4

    :cond_4
    cmp-long v0, v4, v7

    if-lez v0, :cond_6

    .line 22
    invoke-virtual {p0}, Lcom/tencent/qimei/b/b;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_3

    .line 25
    :cond_5
    iget-object v0, p0, Lcom/tencent/qimei/b/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_3
    return-object v1

    .line 26
    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/tencent/qimei/b/b;->a:Landroid/content/SharedPreferences;

    const-string v2, "qm_ch_od"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_5

    :cond_7
    move-object v1, v0

    :goto_5
    return-object v1
.end method
