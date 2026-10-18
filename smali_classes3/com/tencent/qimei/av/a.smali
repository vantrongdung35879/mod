.class public final Lcom/tencent/qimei/av/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:[Ljava/lang/String;

.field public final q:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/tencent/qimei/av/a;->a:Z

    .line 3
    iput-boolean v0, p0, Lcom/tencent/qimei/av/a;->b:Z

    .line 4
    iput-boolean v0, p0, Lcom/tencent/qimei/av/a;->c:Z

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/tencent/qimei/av/a;->d:Z

    .line 6
    iput-boolean v0, p0, Lcom/tencent/qimei/av/a;->e:Z

    .line 7
    iput-boolean v0, p0, Lcom/tencent/qimei/av/a;->f:Z

    .line 8
    iput-boolean v0, p0, Lcom/tencent/qimei/av/a;->g:Z

    .line 10
    iput-boolean v0, p0, Lcom/tencent/qimei/av/a;->h:Z

    .line 11
    iput-boolean v0, p0, Lcom/tencent/qimei/av/a;->i:Z

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qimei/av/a;->k:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/tencent/qimei/av/a;->l:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/tencent/qimei/av/a;->m:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/tencent/qimei/av/a;->n:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/tencent/qimei/av/a;->o:Ljava/lang/String;

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/tencent/qimei/av/a;->p:[Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/tencent/qimei/av/a;->q:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final enableAndroidId(Z)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tencent/qimei/av/a;->d:Z

    return-object p0
.end method

.method public final enableAudit(Z)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;
    .locals 0

    return-object p0
.end method

.method public final enableBuildModel(Z)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tencent/qimei/av/a;->h:Z

    return-object p0
.end method

.method public final enableCid(Z)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tencent/qimei/av/a;->f:Z

    return-object p0
.end method

.method public final enableIMEI(Z)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tencent/qimei/av/a;->b:Z

    return-object p0
.end method

.method public final enableIMSI(Z)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tencent/qimei/av/a;->c:Z

    return-object p0
.end method

.method public final enableMAC(Z)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tencent/qimei/av/a;->e:Z

    return-object p0
.end method

.method public final enableOAID(Z)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tencent/qimei/av/a;->a:Z

    return-object p0
.end method

.method public final enableProcessInfo(Z)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tencent/qimei/av/a;->g:Z

    return-object p0
.end method

.method public final setAndroidId(Ljava/lang/String;)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/av/a;->n:Ljava/lang/String;

    return-object p0
.end method

.method public final setAuditDomain(Ljava/lang/String;I)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;
    .locals 0

    return-object p0
.end method

.method public final setAuditErrUrl(Ljava/lang/String;)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;
    .locals 0

    return-object p0
.end method

.method public final setAuditSoPath(Ljava/lang/String;)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;
    .locals 2

    .line 1
    const-class v0, Lcom/tencent/qimei/v/a;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/tencent/qimei/v/a;->b:Ljava/lang/String;

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    sput-object p1, Lcom/tencent/qimei/v/a;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    monitor-exit v0

    :goto_1
    return-object p0

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit v0

    throw p1
.end method

.method public final setBuildModel(Ljava/lang/String;)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/av/a;->o:Ljava/lang/String;

    return-object p0
.end method

.method public final setCid(Ljava/lang/String;)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;
    .locals 0

    return-object p0
.end method

.method public final setHidProcess(Ljava/lang/String;)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/av/a;->j:Ljava/lang/String;

    return-object p0
.end method

.method public final setIMEI(Ljava/lang/String;)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;
    .locals 0

    return-object p0
.end method

.method public final setIMSI(Ljava/lang/String;)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;
    .locals 0

    return-object p0
.end method

.method public final setMAC(Ljava/lang/String;)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;
    .locals 0

    return-object p0
.end method

.method public final setOAID(Ljava/lang/String;)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/av/a;->m:Ljava/lang/String;

    return-object p0
.end method

.method public final setQimeiSoPath(Ljava/lang/String;)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;
    .locals 2

    .line 1
    const-class v0, Lcom/tencent/qimei/v/a;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/tencent/qimei/v/a;->b:Ljava/lang/String;

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    sput-object p1, Lcom/tencent/qimei/v/a;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    monitor-exit v0

    .line 8
    :goto_1
    iput-object p1, p0, Lcom/tencent/qimei/av/a;->l:Ljava/lang/String;

    return-object p0

    :catchall_0
    move-exception p1

    .line 9
    monitor-exit v0

    throw p1
.end method

.method public final setReportDomain(Ljava/lang/String;)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/av/a;->k:Ljava/lang/String;

    return-object p0
.end method

.method public final setSoLoadedFlag(Z)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;
    .locals 0

    return-object p0
.end method

.method public final varargs setSubProcessNames([Ljava/lang/String;)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/av/a;->p:[Ljava/lang/String;

    return-object p0
.end method

.method public final setUserAgreePrivacy(Z)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tencent/qimei/av/a;->i:Z

    return-object p0
.end method
