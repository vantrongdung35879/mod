.class public Lcom/tencent/beacon/e/b;
.super Ljava/lang/Object;
.source "DefaultStrategy.java"

# interfaces
.implements Lcom/tencent/beacon/a/a/d;


# static fields
.field private static volatile a:Lcom/tencent/beacon/e/b;

.field private static final b:Ljava/util/Random;

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected A:Z

.field protected B:Z

.field protected C:Z

.field protected D:Z

.field protected E:Z

.field protected F:I

.field protected G:Z

.field protected H:Z

.field protected I:Z

.field protected J:I

.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:I

.field protected h:Ljava/lang/Boolean;

.field protected i:Z

.field protected j:Lcom/tencent/beacon/e/c;

.field protected k:Z

.field protected l:Z

.field protected m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field protected o:Z

.field protected p:Z

.field protected q:Z

.field protected r:F

.field protected s:Z

.field protected t:Z

.field protected u:Z

.field protected v:I

.field protected w:J

.field protected x:I

.field protected y:I

.field protected z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/tencent/beacon/e/b;->b:Ljava/util/Random;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/beacon/e/b;->c:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x30

    .line 2
    iput v0, p0, Lcom/tencent/beacon/e/b;->d:I

    const/16 v1, 0x7d0

    .line 3
    iput v1, p0, Lcom/tencent/beacon/e/b;->e:I

    .line 4
    iput v0, p0, Lcom/tencent/beacon/e/b;->f:I

    const/16 v0, 0x1388

    .line 5
    iput v0, p0, Lcom/tencent/beacon/e/b;->g:I

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/tencent/beacon/e/b;->i:Z

    .line 7
    iput-boolean v0, p0, Lcom/tencent/beacon/e/b;->k:Z

    .line 8
    iput-boolean v0, p0, Lcom/tencent/beacon/e/b;->l:Z

    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Lcom/tencent/beacon/e/b;->m:Ljava/util/Set;

    .line 10
    iput-object v1, p0, Lcom/tencent/beacon/e/b;->n:Ljava/util/Map;

    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Lcom/tencent/beacon/e/b;->o:Z

    .line 12
    iput-boolean v1, p0, Lcom/tencent/beacon/e/b;->p:Z

    .line 13
    iput-boolean v1, p0, Lcom/tencent/beacon/e/b;->q:Z

    const/high16 v2, 0x3f800000    # 1.0f

    .line 14
    iput v2, p0, Lcom/tencent/beacon/e/b;->r:F

    .line 15
    iput-boolean v1, p0, Lcom/tencent/beacon/e/b;->s:Z

    .line 16
    iput-boolean v1, p0, Lcom/tencent/beacon/e/b;->t:Z

    .line 17
    iput-boolean v1, p0, Lcom/tencent/beacon/e/b;->u:Z

    .line 18
    iput v0, p0, Lcom/tencent/beacon/e/b;->v:I

    const-wide/16 v2, 0x1900

    .line 19
    iput-wide v2, p0, Lcom/tencent/beacon/e/b;->w:J

    const/16 v2, 0x14

    .line 20
    iput v2, p0, Lcom/tencent/beacon/e/b;->x:I

    const/16 v2, 0x12c

    .line 21
    iput v2, p0, Lcom/tencent/beacon/e/b;->y:I

    .line 22
    iput-boolean v0, p0, Lcom/tencent/beacon/e/b;->z:Z

    .line 23
    iput-boolean v0, p0, Lcom/tencent/beacon/e/b;->A:Z

    .line 24
    iput-boolean v0, p0, Lcom/tencent/beacon/e/b;->B:Z

    .line 25
    iput-boolean v0, p0, Lcom/tencent/beacon/e/b;->C:Z

    .line 26
    iput-boolean v0, p0, Lcom/tencent/beacon/e/b;->D:Z

    .line 27
    iput-boolean v0, p0, Lcom/tencent/beacon/e/b;->E:Z

    const/16 v2, 0x2710

    .line 28
    iput v2, p0, Lcom/tencent/beacon/e/b;->F:I

    .line 29
    iput-boolean v0, p0, Lcom/tencent/beacon/e/b;->G:Z

    .line 30
    iput-boolean v0, p0, Lcom/tencent/beacon/e/b;->H:Z

    .line 31
    iput-boolean v1, p0, Lcom/tencent/beacon/e/b;->I:Z

    .line 32
    iput v0, p0, Lcom/tencent/beacon/e/b;->J:I

    .line 33
    invoke-static {}, Lcom/tencent/beacon/a/a/b;->a()Lcom/tencent/beacon/a/a/b;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p0}, Lcom/tencent/beacon/a/a/b;->a(ILcom/tencent/beacon/a/a/d;)V

    return-void
.end method

.method public static a()Lcom/tencent/beacon/e/b;
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/beacon/e/b;->a:Lcom/tencent/beacon/e/b;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/tencent/beacon/e/b;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/tencent/beacon/e/b;->a:Lcom/tencent/beacon/e/b;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/tencent/beacon/e/b;

    invoke-direct {v1}, Lcom/tencent/beacon/e/b;-><init>()V

    sput-object v1, Lcom/tencent/beacon/e/b;->a:Lcom/tencent/beacon/e/b;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/beacon/e/b;->a:Lcom/tencent/beacon/e/b;

    return-object v0
.end method

.method private b(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string p1, "d_m"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/tencent/beacon/a/a/b;->a()Lcom/tencent/beacon/a/a/b;

    move-result-object p1

    new-instance v1, Lcom/tencent/beacon/a/a/c;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Lcom/tencent/beacon/a/a/c;-><init>(ILjava/util/Map;)V

    invoke-virtual {p1, v1}, Lcom/tencent/beacon/a/a/b;->b(Lcom/tencent/beacon/a/a/c;)V

    return-void
.end method

.method private p()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/beacon/e/b;->j:Lcom/tencent/beacon/e/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/tencent/beacon/e/c;->c()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    const/16 v0, 0x18

    if-lt p1, v0, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    .line 62
    iput p1, p0, Lcom/tencent/beacon/e/b;->f:I

    :cond_0
    return-void
.end method

.method public a(Lcom/tencent/beacon/a/a/c;)V
    .locals 2

    .line 7
    iget v0, p1, Lcom/tencent/beacon/a/a/c;->a:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto/16 :goto_5

    .line 8
    :cond_0
    iget-object v0, p1, Lcom/tencent/beacon/a/a/c;->b:Ljava/util/Map;

    const-string/jumbo v1, "u_c_a_e"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/tencent/beacon/a/a/c;->b:Ljava/util/Map;

    .line 9
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/tencent/beacon/e/b;->A:Z

    :goto_0
    iput-boolean v0, p0, Lcom/tencent/beacon/e/b;->A:Z

    .line 10
    iget-object v0, p1, Lcom/tencent/beacon/a/a/c;->b:Ljava/util/Map;

    const-string/jumbo v1, "u_c_b_e"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/tencent/beacon/a/a/c;->b:Ljava/util/Map;

    .line 11
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/tencent/beacon/e/b;->z:Z

    :goto_1
    iput-boolean v0, p0, Lcom/tencent/beacon/e/b;->z:Z

    .line 12
    iget-object v0, p1, Lcom/tencent/beacon/a/a/c;->b:Ljava/util/Map;

    const-string/jumbo v1, "u_c_d_s"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/tencent/beacon/a/a/c;->b:Ljava/util/Map;

    .line 13
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/tencent/beacon/e/b;->F:I

    :goto_2
    iput v0, p0, Lcom/tencent/beacon/e/b;->F:I

    .line 14
    iget-object v0, p1, Lcom/tencent/beacon/a/a/c;->b:Ljava/util/Map;

    const-string/jumbo v1, "u_c_p_s"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/tencent/beacon/a/a/c;->b:Ljava/util/Map;

    .line 15
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_3

    :cond_4
    iget-boolean v0, p0, Lcom/tencent/beacon/e/b;->k:Z

    :goto_3
    iput-boolean v0, p0, Lcom/tencent/beacon/e/b;->k:Z

    .line 16
    iget-object v0, p1, Lcom/tencent/beacon/a/a/c;->b:Ljava/util/Map;

    const-string/jumbo v1, "u_s_o_h"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p1, Lcom/tencent/beacon/a/a/c;->b:Ljava/util/Map;

    .line 17
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_4

    :cond_5
    iget-boolean p1, p0, Lcom/tencent/beacon/e/b;->B:Z

    :goto_4
    iput-boolean p1, p0, Lcom/tencent/beacon/e/b;->B:Z

    :goto_5
    return-void
.end method

.method public a(Lcom/tencent/beacon/e/c;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/tencent/beacon/e/b;->j:Lcom/tencent/beacon/e/c;

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 56
    :try_start_0
    sget-object v0, Lcom/tencent/beacon/e/b;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized a(Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_5

    .line 18
    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/beacon/e/b;->b(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :try_start_1
    iget v0, p0, Lcom/tencent/beacon/e/b;->d:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v1, 0x18

    const/16 v2, 0x30

    const/16 v3, 0x64

    if-ne v0, v2, :cond_0

    :try_start_2
    const-string v0, "realtimeUploadNum"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    :try_start_3
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v4, p0, Lcom/tencent/beacon/e/b;->d:I

    invoke-static {v0, v4, v1, v3}, Lcom/tencent/beacon/base/util/b;->a(Ljava/lang/String;III)I

    move-result v0

    iput v0, p0, Lcom/tencent/beacon/e/b;->d:I

    .line 21
    :cond_0
    iget v0, p0, Lcom/tencent/beacon/e/b;->f:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v0, v2, :cond_1

    :try_start_4
    const-string v0, "normalUploadNum"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 22
    :try_start_5
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v2, p0, Lcom/tencent/beacon/e/b;->f:I

    invoke-static {v0, v2, v1, v3}, Lcom/tencent/beacon/base/util/b;->a(Ljava/lang/String;III)I

    move-result v0

    iput v0, p0, Lcom/tencent/beacon/e/b;->f:I

    .line 23
    :cond_1
    iget v0, p0, Lcom/tencent/beacon/e/b;->g:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/16 v1, 0x1388

    const/16 v2, 0x7d0

    if-ne v0, v1, :cond_2

    :try_start_6
    const-string v0, "normalPollingTime"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 24
    :try_start_7
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v1, p0, Lcom/tencent/beacon/e/b;->g:I

    const v4, 0x36ee80

    invoke-static {v0, v1, v2, v4}, Lcom/tencent/beacon/base/util/b;->a(Ljava/lang/String;III)I

    move-result v0

    iput v0, p0, Lcom/tencent/beacon/e/b;->g:I

    .line 25
    :cond_2
    iget v0, p0, Lcom/tencent/beacon/e/b;->e:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/16 v1, 0x2710

    if-ne v0, v2, :cond_3

    :try_start_8
    const-string v0, "realtimePollingTime"
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 26
    :try_start_9
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v2, p0, Lcom/tencent/beacon/e/b;->e:I

    const/16 v4, 0x3e8

    invoke-static {v0, v2, v4, v1}, Lcom/tencent/beacon/base/util/b;->a(Ljava/lang/String;III)I

    move-result v0

    iput v0, p0, Lcom/tencent/beacon/e/b;->e:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_3
    :try_start_a
    const-string v0, "heartOnOff"
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 27
    :try_start_b
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-boolean v2, p0, Lcom/tencent/beacon/e/b;->l:Z

    invoke-static {v0, v2}, Lcom/tencent/beacon/base/util/b;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/beacon/e/b;->l:Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    const-string/jumbo v0, "tidyEF"
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 28
    :try_start_d
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-boolean v2, p0, Lcom/tencent/beacon/e/b;->o:Z

    invoke-static {v0, v2}, Lcom/tencent/beacon/base/util/b;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/beacon/e/b;->o:Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :try_start_e
    const-string v0, "lauEveSim"
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 29
    :try_start_f
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-boolean v2, p0, Lcom/tencent/beacon/e/b;->p:Z

    invoke-static {v0, v2}, Lcom/tencent/beacon/base/util/b;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/beacon/e/b;->p:Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :try_start_10
    const-string/jumbo v0, "zeroPeakOnOff"
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 30
    :try_start_11
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-boolean v2, p0, Lcom/tencent/beacon/e/b;->q:Z

    invoke-static {v0, v2}, Lcom/tencent/beacon/base/util/b;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/beacon/e/b;->q:Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :try_start_12
    const-string/jumbo v0, "zeroPeakRate"
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 31
    :try_start_13
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 32
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    if-lez v4, :cond_4

    :try_start_14
    const-string v4, ","
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 34
    :try_start_15
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 35
    array-length v4, v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_1
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    const/4 v4, 0x0

    .line 36
    :try_start_16
    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    div-float/2addr v4, v0

    iput v4, p0, Lcom/tencent/beacon/e/b;->r:F
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 37
    :try_start_17
    invoke-static {v0}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/Throwable;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_1
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    :cond_4
    :goto_0
    :try_start_18
    const-string/jumbo v0, "straOnOff"
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 38
    :try_start_19
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-boolean v4, p0, Lcom/tencent/beacon/e/b;->I:Z

    invoke-static {v0, v4}, Lcom/tencent/beacon/base/util/b;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/beacon/e/b;->I:Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_1
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    :try_start_1a
    const-string/jumbo v0, "straDayMaxCount"
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 39
    :try_start_1b
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v4, p0, Lcom/tencent/beacon/e/b;->J:I

    const v5, 0x7fffffff

    invoke-static {v0, v4, v2, v5}, Lcom/tencent/beacon/base/util/b;->a(Ljava/lang/String;III)I

    move-result v0

    iput v0, p0, Lcom/tencent/beacon/e/b;->J:I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_1
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    :try_start_1c
    const-string v0, "acceleEnable"
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    .line 40
    :try_start_1d
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-boolean v4, p0, Lcom/tencent/beacon/e/b;->s:Z

    invoke-static {v0, v4}, Lcom/tencent/beacon/base/util/b;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/beacon/e/b;->s:Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_1
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    :try_start_1e
    const-string v0, "gyroEnable"
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    .line 41
    :try_start_1f
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-boolean v4, p0, Lcom/tencent/beacon/e/b;->t:Z

    invoke-static {v0, v4}, Lcom/tencent/beacon/base/util/b;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/beacon/e/b;->t:Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_1
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    :try_start_20
    const-string v0, "magneticEnable"
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    .line 42
    :try_start_21
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-boolean v4, p0, Lcom/tencent/beacon/e/b;->u:Z

    invoke-static {v0, v4}, Lcom/tencent/beacon/base/util/b;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/beacon/e/b;->u:Z
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_1
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    :try_start_22
    const-string v0, "gatherCount"
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    .line 43
    :try_start_23
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v4, p0, Lcom/tencent/beacon/e/b;->v:I

    const/16 v5, 0x32

    invoke-static {v0, v4, v2, v5}, Lcom/tencent/beacon/base/util/b;->a(Ljava/lang/String;III)I

    move-result v0

    iput v0, p0, Lcom/tencent/beacon/e/b;->v:I
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_1
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    :try_start_24
    const-string v0, "gatherDur"
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    .line 44
    :try_start_25
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    iget-wide v5, p0, Lcom/tencent/beacon/e/b;->w:J

    const-wide/16 v7, 0x3e8

    const-wide/16 v9, 0x4e20

    invoke-static/range {v4 .. v10}, Lcom/tencent/beacon/base/util/b;->a(Ljava/lang/String;JJJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/tencent/beacon/e/b;->w:J
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_1
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    :try_start_26
    const-string v0, "hertzCount"
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_0

    .line 45
    :try_start_27
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v2, p0, Lcom/tencent/beacon/e/b;->x:I

    const/16 v4, 0x14

    invoke-static {v0, v2, v4, v3}, Lcom/tencent/beacon/base/util/b;->a(Ljava/lang/String;III)I

    move-result v0

    iput v0, p0, Lcom/tencent/beacon/e/b;->x:I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_1
    .catchall {:try_start_27 .. :try_end_27} :catchall_0

    :try_start_28
    const-string v0, "consuming"
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    .line 46
    :try_start_29
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v2, p0, Lcom/tencent/beacon/e/b;->y:I

    const/16 v3, 0x3c

    const v4, 0x15180

    invoke-static {v0, v2, v3, v4}, Lcom/tencent/beacon/base/util/b;->a(Ljava/lang/String;III)I

    move-result v0

    iput v0, p0, Lcom/tencent/beacon/e/b;->y:I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_1
    .catchall {:try_start_29 .. :try_end_29} :catchall_0

    :try_start_2a
    const-string v0, "bidEnable"
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0

    .line 47
    :try_start_2b
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-boolean v2, p0, Lcom/tencent/beacon/e/b;->z:Z

    invoke-static {v0, v2}, Lcom/tencent/beacon/base/util/b;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/beacon/e/b;->z:Z
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_1
    .catchall {:try_start_2b .. :try_end_2b} :catchall_0

    :try_start_2c
    const-string v0, "auditEnable"
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0

    .line 48
    :try_start_2d
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-boolean v2, p0, Lcom/tencent/beacon/e/b;->A:Z

    invoke-static {v0, v2}, Lcom/tencent/beacon/base/util/b;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/beacon/e/b;->A:Z
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_1
    .catchall {:try_start_2d .. :try_end_2d} :catchall_0

    :try_start_2e
    const-string v0, "maxDBCount"
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_0

    .line 49
    :try_start_2f
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v2, p0, Lcom/tencent/beacon/e/b;->F:I

    const v3, 0x186a0

    invoke-static {v0, v2, v1, v3}, Lcom/tencent/beacon/base/util/b;->a(Ljava/lang/String;III)I

    move-result v0

    iput v0, p0, Lcom/tencent/beacon/e/b;->F:I
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_1
    .catchall {:try_start_2f .. :try_end_2f} :catchall_0

    :try_start_30
    const-string v0, "eventUrl"
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_0

    .line 50
    :try_start_31
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/beacon/base/net/b/b;->c(Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_1
    .catchall {:try_start_31 .. :try_end_31} :catchall_0

    :try_start_32
    const-string/jumbo v0, "strategyUrl"
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_0

    .line 51
    :try_start_33
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/beacon/base/net/b/b;->e(Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_1
    .catchall {:try_start_33 .. :try_end_33} :catchall_0

    goto :goto_1

    :catch_1
    move-exception p1

    .line 52
    :try_start_34
    invoke-static {p1}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_0

    throw p1

    :cond_5
    :goto_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 53
    :try_start_0
    iput-object p1, p0, Lcom/tencent/beacon/e/b;->m:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Z)V
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/tencent/beacon/e/b;->D:Z

    return-void
.end method

.method public a(ZZ)V
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "event report state changed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    invoke-virtual {p0}, Lcom/tencent/beacon/e/b;->h()Z

    move-result v0

    if-eqz p2, :cond_0

    .line 65
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/beacon/e/b;->h:Ljava/lang/Boolean;

    goto :goto_0

    .line 66
    :cond_0
    iput-boolean p1, p0, Lcom/tencent/beacon/e/b;->i:Z

    .line 67
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/beacon/e/b;->h()Z

    move-result p1

    if-eq v0, p1, :cond_1

    .line 68
    invoke-direct {p0}, Lcom/tencent/beacon/e/b;->p()V

    :cond_1
    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/tencent/beacon/e/b;->m:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/tencent/beacon/e/b;->m:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    monitor-enter p0

    .line 57
    :try_start_0
    sget-object v0, Lcom/tencent/beacon/e/b;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 58
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 60
    sget-object p2, Lcom/tencent/beacon/e/b;->b:Ljava/util/Random;

    const/16 v1, 0x2710

    invoke-virtual {p2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    add-int/2addr p2, v1

    if-lt p2, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    monitor-exit p0

    return v0

    :cond_2
    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/tencent/beacon/e/b;->F:I

    return v0
.end method

.method public b(I)V
    .locals 1

    const/16 v0, 0x18

    if-lt p1, v0, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    .line 17
    iput p1, p0, Lcom/tencent/beacon/e/b;->d:I

    :cond_0
    return-void
.end method

.method public declared-synchronized b(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/tencent/beacon/e/b;->n:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/beacon/e/b;->n:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-nez p1, :cond_1

    monitor-exit p0

    return-void

    .line 6
    :cond_1
    :try_start_1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ","

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 8
    array-length v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    .line 9
    :try_start_2
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    div-float/2addr v1, v2

    .line 10
    iget-object v2, p0, Lcom/tencent/beacon/e/b;->n:Ljava/util/Map;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    :try_start_3
    invoke-static {v0}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public b(Z)V
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/tencent/beacon/e/b;->C:Z

    return-void
.end method

.method public declared-synchronized b(Ljava/lang/String;)Z
    .locals 3

    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/tencent/beacon/e/b;->n:Ljava/util/Map;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/tencent/beacon/e/b;->n:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 14
    sget-object v0, Lcom/tencent/beacon/e/b;->b:Ljava/util/Random;

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v1

    if-le v0, p1, :cond_1

    const/4 v1, 0x0

    :cond_1
    monitor-exit p0

    return v1

    :cond_2
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized c()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/tencent/beacon/e/b;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public c(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/tencent/beacon/e/b;->E:Z

    return-void
.end method

.method public declared-synchronized d()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/tencent/beacon/e/b;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized e()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/tencent/beacon/e/b;->J:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/beacon/e/b;->A:Z

    return v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/beacon/e/b;->z:Z

    return v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/beacon/e/b;->h:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/beacon/e/b;->i:Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public declared-synchronized i()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/beacon/e/b;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/beacon/e/b;->D:Z

    return v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/beacon/e/b;->C:Z

    return v0
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/beacon/e/b;->k:Z

    return v0
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/beacon/e/b;->E:Z

    return v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/beacon/e/b;->B:Z

    return v0
.end method

.method public declared-synchronized o()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/beacon/e/b;->I:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
