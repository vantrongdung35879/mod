.class public Lcom/perfsight/apm/portal/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile a:Lcom/perfsight/apm/portal/a;


# instance fields
.field private b:J

.field private c:J

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:I

.field private l:I

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/perfsight/apm/portal/a;->b:J

    iput-wide v0, p0, Lcom/perfsight/apm/portal/a;->c:J

    iput-wide v0, p0, Lcom/perfsight/apm/portal/a;->d:J

    const-string v0, ""

    iput-object v0, p0, Lcom/perfsight/apm/portal/a;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfsight/apm/portal/a;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfsight/apm/portal/a;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfsight/apm/portal/a;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfsight/apm/portal/a;->i:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/perfsight/apm/portal/a;->j:I

    iput v0, p0, Lcom/perfsight/apm/portal/a;->k:I

    iput v0, p0, Lcom/perfsight/apm/portal/a;->l:I

    iput-boolean v0, p0, Lcom/perfsight/apm/portal/a;->m:Z

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 10

    const-string v0, "NA"

    iput-object v0, p0, Lcom/perfsight/apm/portal/a;->f:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/perfsight/apm/portal/a;->c:J

    iput-wide v1, p0, Lcom/perfsight/apm/portal/a;->d:J

    const-string/jumbo v3, "tri_cfg"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v3, "tri_uuid_high"

    invoke-interface {p1, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/perfsight/apm/portal/a;->c:J

    const-string/jumbo v4, "tri_uuid_low"

    invoke-interface {p1, v4, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/perfsight/apm/portal/a;->d:J

    const-string/jumbo v5, "tri_uuid_str"

    invoke-interface {p1, v5, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/perfsight/apm/portal/a;->f:Ljava/lang/String;

    iget-wide v7, p0, Lcom/perfsight/apm/portal/a;->c:J

    cmp-long v9, v7, v1

    if-eqz v9, :cond_1

    iget-wide v7, p0, Lcom/perfsight/apm/portal/a;->d:J

    cmp-long v9, v7, v1

    if-eqz v9, :cond_1

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/perfsight/apm/portal/a;->c:J

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/perfsight/apm/portal/a;->d:J

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perfsight/apm/portal/a;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "perfsight did: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfsight/apm/portal/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-wide v0, p0, Lcom/perfsight/apm/portal/a;->c:J

    invoke-interface {p1, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-wide v0, p0, Lcom/perfsight/apm/portal/a;->d:J

    invoke-interface {p1, v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/perfsight/apm/portal/a;->f:Ljava/lang/String;

    invoke-interface {p1, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    return-void
.end method

.method public static b()Lcom/perfsight/apm/portal/a;
    .locals 2

    sget-object v0, Lcom/perfsight/apm/portal/a;->a:Lcom/perfsight/apm/portal/a;

    if-nez v0, :cond_1

    const-class v0, Lcom/perfsight/apm/portal/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/perfsight/apm/portal/a;->a:Lcom/perfsight/apm/portal/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/perfsight/apm/portal/a;

    invoke-direct {v1}, Lcom/perfsight/apm/portal/a;-><init>()V

    sput-object v1, Lcom/perfsight/apm/portal/a;->a:Lcom/perfsight/apm/portal/a;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/perfsight/apm/portal/a;->a:Lcom/perfsight/apm/portal/a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfsight/apm/portal/a;->m:Z

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/perfsight/apm/portal/a;->g:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perfsight/apm/portal/a;->b:J

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    iput v1, v0, Lcom/perfsight/apm/portal/a;->l:I

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perfsight/apm/portal/a;->e:Ljava/lang/String;

    invoke-direct/range {p0 .. p1}, Lcom/perfsight/apm/portal/a;->a(Landroid/content/Context;)V

    move-object/from16 v1, p3

    iput-object v1, v0, Lcom/perfsight/apm/portal/a;->h:Ljava/lang/String;

    move-object/from16 v1, p4

    iput-object v1, v0, Lcom/perfsight/apm/portal/a;->i:Ljava/lang/String;

    move/from16 v1, p5

    iput v1, v0, Lcom/perfsight/apm/portal/a;->j:I

    const/16 v1, 0x8

    iput v1, v0, Lcom/perfsight/apm/portal/a;->k:I

    const-string/jumbo v1, "unity"

    move-object/from16 v2, p6

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput v1, v0, Lcom/perfsight/apm/portal/a;->k:I

    :cond_0
    iget-object v2, v0, Lcom/perfsight/apm/portal/a;->g:Ljava/lang/String;

    iget-object v5, v0, Lcom/perfsight/apm/portal/a;->i:Ljava/lang/String;

    iget v6, v0, Lcom/perfsight/apm/portal/a;->j:I

    iget v7, v0, Lcom/perfsight/apm/portal/a;->k:I

    iget-wide v3, v0, Lcom/perfsight/apm/portal/a;->b:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v3, v8

    long-to-int v8, v3

    iget v9, v0, Lcom/perfsight/apm/portal/a;->l:I

    iget-object v10, v0, Lcom/perfsight/apm/portal/a;->h:Ljava/lang/String;

    iget-object v11, v0, Lcom/perfsight/apm/portal/a;->e:Ljava/lang/String;

    iget-object v12, v0, Lcom/perfsight/apm/portal/a;->f:Ljava/lang/String;

    iget-wide v13, v0, Lcom/perfsight/apm/portal/a;->c:J

    iget-wide v3, v0, Lcom/perfsight/apm/portal/a;->d:J

    move-wide v15, v3

    const-string v4, "8.3.9.2.3.3"

    const v17, 0x1350249

    const/16 v3, 0x347

    move/from16 v18, p7

    invoke-static/range {v2 .. v18}, Lcom/perfsight/apm/jni/TApmNativeHelper;->initNativeSession(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIZ)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/perfsight/apm/portal/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/perfsight/apm/portal/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/perfsight/apm/portal/a;->m:Z

    return v0
.end method
