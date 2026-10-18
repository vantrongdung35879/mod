.class public final Lcom/uqm/crashsight/proguard/y;
.super Ljava/lang/Object;
.source "CrashSight"


# static fields
.field private static d:Lcom/uqm/crashsight/proguard/y; = null

.field private static l:I = -0x1

.field private static m:Ljava/lang/String; = ""


# instance fields
.field private final a:Lcom/uqm/crashsight/crashreport/common/info/a;

.field private b:Ljava/lang/String;

.field private final c:Lcom/uqm/crashsight/crashreport/crash/b;

.field private final e:Ljava/lang/Object;

.field private f:Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/uqm/crashsight/crashreport/common/info/a;Lcom/uqm/crashsight/crashreport/crash/b;)V
    .locals 2

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/uqm/crashsight/proguard/y;->e:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/uqm/crashsight/proguard/y;->f:Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/uqm/crashsight/proguard/y;->g:Z

    .line 63
    iput-boolean v0, p0, Lcom/uqm/crashsight/proguard/y;->h:Z

    .line 64
    iput-boolean v0, p0, Lcom/uqm/crashsight/proguard/y;->i:Z

    .line 65
    iput-boolean v0, p0, Lcom/uqm/crashsight/proguard/y;->j:Z

    .line 66
    iput-boolean v0, p0, Lcom/uqm/crashsight/proguard/y;->k:Z

    .line 97
    const-string v1, "crashSight"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    .line 98
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/proguard/y;->b:Ljava/lang/String;

    .line 99
    iput-object p2, p0, Lcom/uqm/crashsight/proguard/y;->a:Lcom/uqm/crashsight/crashreport/common/info/a;

    .line 100
    iput-object p3, p0, Lcom/uqm/crashsight/proguard/y;->c:Lcom/uqm/crashsight/crashreport/crash/b;

    return-void
.end method

.method private a(Landroid/content/Context;JJ)Landroid/app/ActivityManager$ProcessErrorStateInfo;
    .locals 16

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    move-wide v2, v0

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p2

    .line 110
    :goto_0
    :try_start_0
    const-string v4, "[AnrHandler] waiting for process state!"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v4, v6}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 111
    const-string v4, "activity"

    move-object/from16 v6, p1

    .line 112
    invoke-virtual {v6, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    const-wide/16 v6, 0x1f4

    .line 113
    div-long/2addr v2, v6

    .line 114
    div-long v8, p4, v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 118
    :goto_1
    const-string v12, "[AnrHandler] waiting!"

    new-array v13, v5, [Ljava/lang/Object;

    invoke-static {v12, v13}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 119
    invoke-virtual {v4}, Landroid/app/ActivityManager;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 121
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 122
    const-string v14, "[AnrHandler] state info is %s %d"

    iget-object v15, v13, Landroid/app/ActivityManager$ProcessErrorStateInfo;->processName:Ljava/lang/String;

    iget v6, v13, Landroid/app/ActivityManager$ProcessErrorStateInfo;->condition:I

    .line 123
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    new-array v0, v7, [Ljava/lang/Object;

    aput-object v15, v0, v5

    const/4 v1, 0x1

    aput-object v6, v0, v1

    .line 122
    invoke-static {v14, v0}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 124
    iget v0, v13, Landroid/app/ActivityManager$ProcessErrorStateInfo;->condition:I

    if-ne v0, v7, :cond_1

    .line 127
    iget v0, v13, Landroid/app/ActivityManager$ProcessErrorStateInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 130
    const-string v0, "[AnrHandler] find not responding state of this process!"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-object v13

    :cond_1
    const-wide/16 v0, 0x0

    const-wide/16 v6, 0x1f4

    goto :goto_2

    :cond_2
    cmp-long v6, v8, v0

    if-lez v6, :cond_4

    move-object/from16 v6, p0

    .line 136
    :try_start_1
    iget-object v7, v6, Lcom/uqm/crashsight/proguard/y;->a:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v7}, Lcom/uqm/crashsight/crashreport/common/info/a;->c()Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v10, 0x0

    goto :goto_3

    :cond_3
    add-int/lit8 v10, v10, 0x1

    int-to-long v12, v10

    cmp-long v7, v12, v8

    if-gez v7, :cond_5

    goto :goto_3

    :cond_4
    move-object/from16 v6, p0

    :goto_3
    const-wide/16 v12, 0x1f4

    .line 145
    invoke-static {v12, v13}, Lcom/uqm/crashsight/proguard/v;->b(J)V

    add-int/lit8 v7, v11, 0x1

    int-to-long v14, v11

    cmp-long v11, v14, v2

    if-ltz v11, :cond_6

    .line 147
    :cond_5
    const-string v0, "end!"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :cond_6
    move v11, v7

    move-wide v6, v12

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v6, p0

    .line 149
    :goto_4
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    :goto_5
    const/4 v0, 0x0

    return-object v0
.end method

.method private a(Landroid/content/Context;JLjava/util/Map;)Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;"
        }
    .end annotation

    .line 158
    const-string v0, ".txt"

    new-instance v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;

    invoke-direct {v1}, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;-><init>()V

    .line 159
    iget-object v2, p0, Lcom/uqm/crashsight/proguard/y;->c:Lcom/uqm/crashsight/crashreport/crash/b;

    invoke-virtual {v2, v1}, Lcom/uqm/crashsight/crashreport/crash/b;->e(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;)V

    .line 162
    :try_start_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/e;->h()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->H:J

    .line 163
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/e;->f()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->I:J

    .line 164
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/e;->j()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->J:J

    .line 165
    iget-object v2, p0, Lcom/uqm/crashsight/proguard/y;->a:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/a;->r()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->K:J

    .line 166
    iget-object v2, p0, Lcom/uqm/crashsight/proguard/y;->a:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/a;->q()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->L:J

    .line 167
    iget-object v2, p0, Lcom/uqm/crashsight/proguard/y;->a:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/a;->s()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->M:J

    .line 168
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/e;->v()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/uqm/crashsight/proguard/z;->T:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v2}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 169
    sget v2, Lcom/uqm/crashsight/crashreport/crash/c;->b:I

    sget-object v3, Lcom/uqm/crashsight/crashreport/crash/c;->e:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/v;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->B:Ljava/lang/String;

    :cond_0
    const/4 v2, 0x3

    .line 172
    iput v2, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->b:I

    .line 173
    iget-object v2, p0, Lcom/uqm/crashsight/proguard/y;->a:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/a;->k()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->e:Ljava/lang/String;

    .line 174
    iget-object v2, p0, Lcom/uqm/crashsight/proguard/y;->a:Lcom/uqm/crashsight/crashreport/common/info/a;

    iget-object v2, v2, Lcom/uqm/crashsight/crashreport/common/info/a;->n:Ljava/lang/String;

    iput-object v2, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    .line 175
    iget-object v2, p0, Lcom/uqm/crashsight/proguard/y;->a:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/a;->y()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->g:Ljava/lang/String;

    .line 176
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/a;->j()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    .line 177
    const-string v2, "ANR_EXCEPTION"

    iput-object v2, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    .line 178
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-eqz p4, :cond_2

    .line 180
    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 181
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 182
    invoke-interface {p4, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->r:Ljava/lang/String;

    .line 187
    :cond_2
    iget-object v2, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->r:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 188
    const-string v2, "main stack is null , some error may be encountered."

    iput-object v2, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->r:Ljava/lang/String;

    .line 190
    :cond_3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->U:Ljava/util/Map;

    .line 193
    iget-object v2, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->r:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 194
    iget-object v2, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->r:Ljava/lang/String;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_4
    const/4 v2, -0x1

    :goto_0
    const/4 v3, 0x0

    if-lez v2, :cond_5

    .line 196
    iget-object v4, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->r:Ljava/lang/String;

    .line 197
    invoke-virtual {v4, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_5
    const-string v2, "GET_FAIL"

    :goto_1
    iput-object v2, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    .line 199
    iput-wide p2, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->t:J

    .line 200
    iget-object p2, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->r:Ljava/lang/String;

    if-eqz p2, :cond_6

    .line 201
    iget-object p2, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->r:Ljava/lang/String;

    .line 202
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-static {p2}, Lcom/uqm/crashsight/proguard/v;->b([B)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    .line 204
    :cond_6
    iput-object p4, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->E:Ljava/util/Map;

    .line 205
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p2

    invoke-static {p2}, Lcom/uqm/crashsight/crashreport/common/info/AppInfo;->a(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->F:Ljava/lang/String;

    .line 206
    const-string p2, "main(1)"

    iput-object p2, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->G:Ljava/lang/String;

    .line 207
    iget-object p2, p0, Lcom/uqm/crashsight/proguard/y;->a:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {p2}, Lcom/uqm/crashsight/crashreport/common/info/a;->A()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->N:Ljava/lang/String;

    .line 208
    iget-object p2, p0, Lcom/uqm/crashsight/proguard/y;->a:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {p2}, Lcom/uqm/crashsight/crashreport/common/info/a;->x()Ljava/util/Map;

    move-result-object p2

    iput-object p2, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    .line 209
    iget-object p2, p0, Lcom/uqm/crashsight/proguard/y;->a:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {p2}, Lcom/uqm/crashsight/crashreport/common/info/a;->L()Ljava/util/Map;

    move-result-object p2

    iput-object p2, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->i:Ljava/util/Map;

    .line 210
    iget-object p2, p0, Lcom/uqm/crashsight/proguard/y;->a:Lcom/uqm/crashsight/crashreport/common/info/a;

    iget-object p2, p2, Lcom/uqm/crashsight/crashreport/common/info/a;->q:Ljava/lang/String;

    iput-object p2, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->Q:Ljava/lang/String;

    .line 211
    iget-object p2, p0, Lcom/uqm/crashsight/proguard/y;->a:Lcom/uqm/crashsight/crashreport/common/info/a;

    iget-wide p2, p2, Lcom/uqm/crashsight/crashreport/common/info/a;->a:J

    iput-wide p2, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->R:J

    .line 212
    iget-object p2, p0, Lcom/uqm/crashsight/proguard/y;->a:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {p2}, Lcom/uqm/crashsight/crashreport/common/info/a;->c()Z

    move-result p2

    iput-boolean p2, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->S:Z

    .line 214
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/e;->v()Z

    move-result p2

    if-nez p2, :cond_7

    .line 216
    iget-object p2, p0, Lcom/uqm/crashsight/proguard/y;->c:Lcom/uqm/crashsight/crashreport/crash/b;

    invoke-virtual {p2, v1}, Lcom/uqm/crashsight/crashreport/crash/b;->b(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;)V

    .line 219
    :cond_7
    iget-object p2, p0, Lcom/uqm/crashsight/proguard/y;->a:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {p2}, Lcom/uqm/crashsight/crashreport/common/info/a;->J()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->ag:Ljava/lang/String;

    .line 220
    iget-object p2, p0, Lcom/uqm/crashsight/proguard/y;->a:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {p2}, Lcom/uqm/crashsight/crashreport/common/info/a;->K()I

    move-result p2

    iput p2, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->W:I

    .line 221
    iget-object p2, p0, Lcom/uqm/crashsight/proguard/y;->a:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {p2}, Lcom/uqm/crashsight/crashreport/common/info/a;->D()Ljava/util/Map;

    move-result-object p2

    iput-object p2, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->X:Ljava/util/Map;

    .line 222
    iget-object p2, p0, Lcom/uqm/crashsight/proguard/y;->a:Lcom/uqm/crashsight/crashreport/common/info/a;

    invoke-virtual {p2}, Lcom/uqm/crashsight/crashreport/common/info/a;->I()Ljava/util/Map;

    move-result-object p2

    iput-object p2, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->Y:Ljava/util/Map;

    .line 223
    invoke-static {p1}, Lcom/uqm/crashsight/proguard/v;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    .line 224
    invoke-static {}, Lcom/uqm/crashsight/proguard/s;->b()[B

    move-result-object p1

    iput-object p1, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->D:[B

    .line 225
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uqm/crashsight/b;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "crashSight_trace_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/uqm/crashsight/proguard/y;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 227
    const-string p2, "traceFile is %s"

    const/4 p3, 0x1

    new-array p4, p3, [Ljava/lang/Object;

    aput-object p1, p4, v3

    invoke-static {p2, p4}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    if-eqz p1, :cond_8

    .line 229
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->x:Ljava/lang/String;

    .line 231
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uqm/crashsight/b;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "crashSight_crash_minidump_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, ".dmp"

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/proguard/y;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 233
    const-string p2, "minidumpFile is %s"

    new-array p4, p3, [Ljava/lang/Object;

    aput-object p1, p4, v3

    invoke-static {p2, p4}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    if-eqz p1, :cond_9

    .line 235
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->y:Ljava/lang/String;

    .line 237
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uqm/crashsight/b;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "CrashSight_StackTrace_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/uqm/crashsight/proguard/y;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 239
    const-string p2, "stacktraceFile is %s"

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p1, p3, v3

    invoke-static {p2, p3}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    if-eqz p1, :cond_a

    .line 241
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->z:Ljava/lang/String;

    .line 242
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "System SO infos:\n"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/uqm/crashsight/proguard/y;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->aa:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 245
    invoke-static {p1}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    :cond_a
    :goto_2
    return-object v1
.end method

.method public static declared-synchronized a()Lcom/uqm/crashsight/proguard/y;
    .locals 2

    const-class v0, Lcom/uqm/crashsight/proguard/y;

    monitor-enter v0

    .line 85
    :try_start_0
    sget-object v1, Lcom/uqm/crashsight/proguard/y;->d:Lcom/uqm/crashsight/proguard/y;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static a(Landroid/content/Context;Lcom/uqm/crashsight/crashreport/common/info/a;Lcom/uqm/crashsight/crashreport/crash/b;)Lcom/uqm/crashsight/proguard/y;
    .locals 1

    .line 78
    sget-object v0, Lcom/uqm/crashsight/proguard/y;->d:Lcom/uqm/crashsight/proguard/y;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/uqm/crashsight/proguard/y;

    invoke-direct {v0, p0, p1, p2}, Lcom/uqm/crashsight/proguard/y;-><init>(Landroid/content/Context;Lcom/uqm/crashsight/crashreport/common/info/a;Lcom/uqm/crashsight/crashreport/crash/b;)V

    sput-object v0, Lcom/uqm/crashsight/proguard/y;->d:Lcom/uqm/crashsight/proguard/y;

    .line 81
    :cond_0
    sget-object p0, Lcom/uqm/crashsight/proguard/y;->d:Lcom/uqm/crashsight/proguard/y;

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 19

    .line 391
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 393
    new-instance v2, Ljava/io/File;

    move-object/from16 v3, p0

    iget-object v4, v3, Lcom/uqm/crashsight/proguard/y;->b:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 394
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 396
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 397
    array-length v4, v2

    if-nez v4, :cond_0

    goto/16 :goto_2

    .line 400
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 401
    array-length v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_5

    aget-object v9, v2, v8

    .line 402
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v11, p1

    .line 403
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v12, :cond_2

    move-object/from16 v12, p2

    .line 405
    :try_start_1
    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-lez v13, :cond_3

    .line 407
    invoke-virtual {v10, v4, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    sub-long v15, v0, v13

    const-wide/16 v17, 0x3e8

    .line 408
    div-long v15, v15, v17

    .line 409
    const-string v5, "current time %d trace time is %d s"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v18, v14, v7

    const/4 v7, 0x1

    aput-object v13, v14, v7

    invoke-static {v5, v14}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 410
    const-string v5, "current time minus trace time is %d s"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v13, v7, v14

    invoke-static {v5, v7}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v13, 0x1e

    cmp-long v5, v15, v13

    if-ltz v5, :cond_1

    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    return-object v9

    .line 419
    :catchall_0
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Trace file that has invalid format: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {v5, v9}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :cond_2
    move-object/from16 v12, p2

    :cond_3
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    const/4 v1, 0x0

    return-object v1

    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    .line 425
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    return-object v1
.end method

.method public static a(I)V
    .locals 1

    .line 556
    sget-object v0, Lcom/uqm/crashsight/proguard/z;->au:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v0}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;->getInstance()Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;->processEngineAnr(I)V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 559
    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "Engine ANR disabled"

    invoke-static {v0, p0}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(ILjava/lang/String;)V
    .locals 0

    .line 564
    sput p0, Lcom/uqm/crashsight/proguard/y;->l:I

    .line 565
    sput-object p1, Lcom/uqm/crashsight/proguard/y;->m:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;Lorg/json/JSONObject;)Z
    .locals 6

    const/4 v0, 0x0

    .line 573
    :try_start_0
    const-string v1, "M23"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 574
    iget-wide v3, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->t:J

    sub-long/2addr v1, v3

    .line 575
    sget-object v3, Lcom/uqm/crashsight/proguard/z;->az:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v3}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-gtz v5, :cond_2

    neg-long v3, v3

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    goto :goto_0

    .line 579
    :cond_0
    sget-object v1, Lcom/uqm/crashsight/proguard/z;->ax:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v1}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->ai:Ljava/lang/String;

    const-string v1, "Unity"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v2

    .line 582
    :cond_1
    const-string p0, "M20"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x6

    if-ne p0, p1, :cond_3

    return v2

    :cond_2
    :goto_0
    return v0

    :catchall_0
    move-exception p0

    .line 586
    invoke-static {p0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    :cond_3
    return v0
.end method

.method public static c()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x1e

    if-ge v1, v3, :cond_0

    .line 380
    :try_start_0
    const-string v1, "try main sleep for make a test anr! try:%d/30 , kill it if you don\'t want to wait!"

    .line 382
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v0

    .line 380
    invoke-static {v1, v4}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-wide/16 v3, 0x1388

    .line 383
    invoke-static {v3, v4}, Lcom/uqm/crashsight/proguard/v;->b(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 386
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 6

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uqm/crashsight/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "CrashSight_StackTrace_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".maps"

    invoke-direct {p0, v0, v1}, Lcom/uqm/crashsight/proguard/y;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 434
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_5

    .line 437
    :cond_0
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/v;->a(Ljava/io/File;)Ljava/io/BufferedReader;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v1

    .line 442
    :cond_1
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 443
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_3

    if-eqz v2, :cond_2

    .line 460
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 463
    invoke-static {v2}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/Throwable;)V

    .line 466
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-object v1

    .line 447
    :cond_3
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 448
    const-string v5, "  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 452
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_5

    .line 460
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    .line 463
    invoke-static {v2}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/Throwable;)V

    .line 466
    :cond_5
    :goto_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-object v1

    :catchall_0
    move-exception v3

    .line 455
    :try_start_4
    invoke-static {v3}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_6

    .line 460
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    move-exception v2

    .line 463
    invoke-static {v2}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/Throwable;)V

    .line 466
    :cond_6
    :goto_3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-object v1

    :catchall_1
    move-exception v1

    if-eqz v2, :cond_7

    .line 460
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    :catch_3
    move-exception v2

    .line 463
    invoke-static {v2}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/Throwable;)V

    .line 466
    :cond_7
    :goto_4
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 467
    throw v1

    :cond_8
    :goto_5
    return-object v1
.end method

.method private e()V
    .locals 3

    .line 471
    iget-object v0, p0, Lcom/uqm/crashsight/proguard/y;->e:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 472
    :try_start_0
    iput-object v1, p0, Lcom/uqm/crashsight/proguard/y;->f:Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;

    const/4 v1, 0x0

    .line 473
    iput-boolean v1, p0, Lcom/uqm/crashsight/proguard/y;->h:Z

    .line 474
    iput-boolean v1, p0, Lcom/uqm/crashsight/proguard/y;->i:Z

    .line 475
    iput-boolean v1, p0, Lcom/uqm/crashsight/proguard/y;->j:Z

    const/4 v2, -0x1

    .line 476
    sput v2, Lcom/uqm/crashsight/proguard/y;->l:I

    .line 477
    iput-boolean v1, p0, Lcom/uqm/crashsight/proguard/y;->k:Z

    .line 478
    iput-boolean v1, p0, Lcom/uqm/crashsight/proguard/y;->g:Z

    .line 479
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;->getInstance()Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/crashreport/crash/jni/NativeBridge;->handleAnrFinish()V

    .line 480
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private f()V
    .locals 8

    .line 484
    iget-object v0, p0, Lcom/uqm/crashsight/proguard/y;->f:Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;

    if-nez v0, :cond_0

    return-void

    .line 488
    :cond_0
    iget-boolean v0, p0, Lcom/uqm/crashsight/proguard/y;->h:Z

    if-eqz v0, :cond_1

    .line 489
    const-string v0, "Signal Quit;"

    goto :goto_0

    .line 488
    :cond_1
    const-string v0, ""

    .line 491
    :goto_0
    iget-boolean v1, p0, Lcom/uqm/crashsight/proguard/y;->i:Z

    if-eqz v1, :cond_2

    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Unity Watchdog;"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 494
    :cond_2
    iget-boolean v1, p0, Lcom/uqm/crashsight/proguard/y;->j:Z

    if-eqz v1, :cond_3

    .line 495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Unreal Watchdog;"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 497
    :cond_3
    iget-object v1, p0, Lcom/uqm/crashsight/proguard/y;->f:Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;

    iput-object v0, v1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->ai:Ljava/lang/String;

    .line 498
    sget-object v0, Lcom/uqm/crashsight/proguard/z;->ay:Lcom/uqm/crashsight/proguard/z$a;

    invoke-virtual {v0}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/uqm/crashsight/proguard/y;->k:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/uqm/crashsight/proguard/y;->i:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/uqm/crashsight/proguard/y;->j:Z

    if-eqz v0, :cond_e

    :cond_4
    sget v0, Lcom/uqm/crashsight/proguard/y;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    iget-object v0, p0, Lcom/uqm/crashsight/proguard/y;->f:Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->z:Ljava/lang/String;

    .line 499
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/v;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 503
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    iget-object v5, p0, Lcom/uqm/crashsight/proguard/y;->f:Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;

    iget-object v5, v5, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->z:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    .line 506
    :cond_5
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    const/4 v5, 0x3

    if-eqz v2, :cond_9

    const/4 v6, 0x2

    if-eq v2, v1, :cond_8

    if-eq v2, v6, :cond_6

    goto :goto_1

    .line 519
    :cond_6
    const-string v6, "----------------------------"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v2, 0x3

    goto :goto_1

    .line 523
    :cond_7
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 514
    :cond_8
    const-string v7, "Stack:"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v2, 0x2

    goto :goto_1

    .line 509
    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[Thread "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v7, Lcom/uqm/crashsight/proguard/y;->l:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v2, 0x1

    :cond_a
    :goto_1
    if-ne v2, v5, :cond_5

    .line 529
    iget-object v2, p0, Lcom/uqm/crashsight/proguard/y;->f:Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->r:Ljava/lang/String;

    .line 530
    sget-object v0, Lcom/uqm/crashsight/proguard/y;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 531
    iget-object v0, p0, Lcom/uqm/crashsight/proguard/y;->f:Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/uqm/crashsight/proguard/y;->m:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/uqm/crashsight/proguard/y;->l:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->G:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 541
    :cond_b
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v3

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 537
    :goto_2
    :try_start_3
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v2, :cond_c

    .line 541
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    .line 543
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    .line 547
    :cond_c
    :goto_3
    iput-boolean v1, p0, Lcom/uqm/crashsight/proguard/y;->k:Z

    goto :goto_5

    :catchall_3
    move-exception v0

    if-eqz v2, :cond_d

    .line 541
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v1

    .line 543
    invoke-static {v1}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    .line 546
    :cond_d
    :goto_4
    throw v0

    .line 549
    :cond_e
    :goto_5
    iget-object v0, p0, Lcom/uqm/crashsight/proguard/y;->c:Lcom/uqm/crashsight/crashreport/crash/b;

    iget-object v1, p0, Lcom/uqm/crashsight/proguard/y;->f:Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/crashreport/crash/b;->d(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Z
    .locals 10

    const/4 v0, 0x0

    .line 262
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "[processCustomAnr] Receive a custom anr."

    invoke-static {v2, v1}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 263
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const v2, 0x30d40

    .line 265
    :try_start_0
    invoke-static {v2, v0}, Lcom/uqm/crashsight/proguard/v;->a(IZ)Ljava/util/Map;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 267
    invoke-static {v2}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    .line 268
    const-string v3, "main"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3, v1}, Lcom/uqm/crashsight/proguard/y;->a(Landroid/content/Context;JLjava/util/Map;)Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;

    move-result-object p1

    .line 1115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/uqm/crashsight/proguard/v;->a(J)Ljava/lang/String;

    move-result-object v5

    .line 279
    iget-object v6, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->F:Ljava/lang/String;

    const-string v7, "main"

    iget-object v8, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->r:Ljava/lang/String;

    const-string v4, "ANR"

    move-object v9, p1

    invoke-static/range {v4 .. v9}, Lcom/uqm/crashsight/crashreport/crash/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;)V

    .line 282
    iget-wide v1, p1, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->a:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    .line 283
    const-string v1, "backup anr record success!"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1

    .line 285
    :cond_0
    const-string v1, "backup anr record fail!"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 288
    :goto_1
    iget-object v0, p0, Lcom/uqm/crashsight/proguard/y;->c:Lcom/uqm/crashsight/crashreport/crash/b;

    const v1, -0x75bcd15

    .line 1212
    invoke-virtual {v0, p1, v1}, Lcom/uqm/crashsight/crashreport/crash/b;->a(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/uqm/crashsight/proguard/y;->c:Lcom/uqm/crashsight/crashreport/crash/b;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, p1, v2, v3, v1}, Lcom/uqm/crashsight/crashreport/crash/b;->a(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;JZ)V

    .line 291
    :cond_1
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/crash/b;->a(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;)V

    return v1
.end method

.method public final a(Landroid/content/Context;I)Z
    .locals 9

    .line 301
    iget-object v0, p0, Lcom/uqm/crashsight/proguard/y;->e:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    if-eq p2, v1, :cond_1

    const/4 v2, 0x2

    if-eq p2, v2, :cond_0

    goto :goto_0

    .line 310
    :cond_0
    :try_start_0
    iput-boolean v1, p0, Lcom/uqm/crashsight/proguard/y;->j:Z

    goto :goto_0

    .line 307
    :cond_1
    iput-boolean v1, p0, Lcom/uqm/crashsight/proguard/y;->i:Z

    goto :goto_0

    .line 304
    :cond_2
    iput-boolean v1, p0, Lcom/uqm/crashsight/proguard/y;->h:Z

    .line 315
    :goto_0
    iget-boolean p2, p0, Lcom/uqm/crashsight/proguard/y;->g:Z

    if-eqz p2, :cond_3

    .line 316
    invoke-direct {p0}, Lcom/uqm/crashsight/proguard/y;->f()V

    .line 317
    monitor-exit v0

    return v1

    .line 319
    :cond_3
    iput-boolean v1, p0, Lcom/uqm/crashsight/proguard/y;->g:Z

    .line 320
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 322
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const v0, 0x30d40

    const/4 v2, 0x0

    .line 324
    :try_start_1
    invoke-static {v0, v2}, Lcom/uqm/crashsight/proguard/v;->a(IZ)Ljava/util/Map;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 326
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    .line 327
    const-string v3, "main"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    :goto_1
    iget-object v3, p0, Lcom/uqm/crashsight/proguard/y;->e:Ljava/lang/Object;

    monitor-enter v3

    .line 332
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {p0, p1, v4, v5, p2}, Lcom/uqm/crashsight/proguard/y;->a(Landroid/content/Context;JLjava/util/Map;)Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;

    move-result-object p2

    iput-object p2, p0, Lcom/uqm/crashsight/proguard/y;->f:Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;

    .line 333
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez p2, :cond_4

    .line 336
    const-string p1, "pack anr fail!"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 337
    invoke-direct {p0}, Lcom/uqm/crashsight/proguard/y;->e()V

    return v2

    .line 341
    :cond_4
    iget-object p2, p0, Lcom/uqm/crashsight/proguard/y;->e:Ljava/lang/Object;

    monitor-enter p2

    .line 342
    :try_start_3
    invoke-direct {p0}, Lcom/uqm/crashsight/proguard/y;->f()V

    .line 343
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 345
    sget-object p2, Lcom/uqm/crashsight/proguard/z;->av:Lcom/uqm/crashsight/proguard/z$a;

    .line 346
    invoke-virtual {p2}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long v5, p2

    sget-object p2, Lcom/uqm/crashsight/proguard/z;->aw:Lcom/uqm/crashsight/proguard/z$a;

    .line 347
    invoke-virtual {p2}, Lcom/uqm/crashsight/proguard/z$a;->c()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long v7, p2

    move-object v3, p0

    move-object v4, p1

    .line 345
    invoke-direct/range {v3 .. v8}, Lcom/uqm/crashsight/proguard/y;->a(Landroid/content/Context;JJ)Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object p1

    if-nez p1, :cond_5

    .line 350
    const-string p1, "[AnrHandler] This is not a anr."

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 351
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 352
    iget-object p2, p0, Lcom/uqm/crashsight/proguard/y;->f:Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/crash/b;->a(Ljava/util/List;)V

    .line 354
    invoke-direct {p0}, Lcom/uqm/crashsight/proguard/y;->e()V

    return v2

    .line 358
    :cond_5
    const-string v3, "ANR"

    .line 2115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/uqm/crashsight/proguard/v;->a(J)Ljava/lang/String;

    move-result-object v4

    .line 358
    iget-object p2, p0, Lcom/uqm/crashsight/proguard/y;->f:Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;

    iget-object v5, p2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->F:Ljava/lang/String;

    iget-object p2, p0, Lcom/uqm/crashsight/proguard/y;->f:Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;

    iget-object v6, p2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->G:Ljava/lang/String;

    iget-object p2, p0, Lcom/uqm/crashsight/proguard/y;->f:Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;

    iget-object v7, p2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->r:Ljava/lang/String;

    iget-object v8, p0, Lcom/uqm/crashsight/proguard/y;->f:Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;

    invoke-static/range {v3 .. v8}, Lcom/uqm/crashsight/crashreport/crash/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;)V

    .line 360
    iget-object p2, p0, Lcom/uqm/crashsight/proguard/y;->f:Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;

    iget-object v0, p1, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    iput-object v0, p2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    .line 361
    iget-object p2, p0, Lcom/uqm/crashsight/proguard/y;->f:Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;

    iget-object p2, p2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->U:Ljava/util/Map;

    const-string v0, "CS_CR_01"

    iget-object v2, p1, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    invoke-interface {p2, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    iget-object p2, p0, Lcom/uqm/crashsight/proguard/y;->f:Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;

    iget-object p1, p1, Landroid/app/ActivityManager$ProcessErrorStateInfo;->processName:Ljava/lang/String;

    iput-object p1, p2, Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;->F:Ljava/lang/String;

    .line 363
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/f;->a()Lcom/uqm/crashsight/crashreport/common/info/f;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/uqm/crashsight/crashreport/common/info/f;->b(Z)V

    .line 365
    iget-object p1, p0, Lcom/uqm/crashsight/proguard/y;->c:Lcom/uqm/crashsight/crashreport/crash/b;

    iget-object p2, p0, Lcom/uqm/crashsight/proguard/y;->f:Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;

    const v0, -0x75bcd15

    .line 2212
    invoke-virtual {p1, p2, v0}, Lcom/uqm/crashsight/crashreport/crash/b;->a(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;I)Z

    move-result p1

    if-nez p1, :cond_6

    .line 366
    iget-object p1, p0, Lcom/uqm/crashsight/proguard/y;->c:Lcom/uqm/crashsight/crashreport/crash/b;

    iget-object p2, p0, Lcom/uqm/crashsight/proguard/y;->f:Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;

    const-wide/16 v2, 0xbb8

    invoke-virtual {p1, p2, v2, v3, v1}, Lcom/uqm/crashsight/crashreport/crash/b;->a(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;JZ)V

    .line 368
    :cond_6
    iget-object p1, p0, Lcom/uqm/crashsight/proguard/y;->f:Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;

    invoke-static {p1}, Lcom/uqm/crashsight/crashreport/crash/b;->a(Lcom/uqm/crashsight/crashreport/crash/CrashDetailBean;)V

    .line 369
    invoke-direct {p0}, Lcom/uqm/crashsight/proguard/y;->e()V

    return v1

    :catchall_1
    move-exception p1

    .line 343
    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    .line 333
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1

    :catchall_3
    move-exception p1

    .line 320
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p1
.end method

.method public final b()Z
    .locals 1

    .line 254
    iget-boolean v0, p0, Lcom/uqm/crashsight/proguard/y;->g:Z

    return v0
.end method
