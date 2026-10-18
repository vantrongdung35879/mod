.class public Lcom/ihoc/mgpa/gradish/d1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile e:Lcom/ihoc/mgpa/gradish/d1; = null

.field private static f:Z = false


# instance fields
.field private a:Ljava/lang/Class;

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/d1;->c:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/d1;->d:Ljava/lang/String;

    .line 9
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/d1;->a()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->onClass(Ljava/lang/String;)Lcom/ihoc/mgpa/toolkit/util/Reflect;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->field(Ljava/lang/String;)Lcom/ihoc/mgpa/toolkit/util/Reflect;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    return-object p1

    :catchall_0
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a()V
    .locals 5

    const-string v0, "TransceiverTool: get task public class success! pkg: "

    .line 2
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/d1;->b()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 6
    :cond_0
    iput-object v1, p0, Lcom/ihoc/mgpa/gradish/d1;->d:Ljava/lang/String;

    const/4 v1, 0x0

    .line 10
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ihoc/mgpa/gradish/d1;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".TransceiverManager"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->onClass(Ljava/lang/String;)Lcom/ihoc/mgpa/toolkit/util/Reflect;

    move-result-object v2

    const-string v3, "getInstance"

    invoke-virtual {v2, v3}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->call(Ljava/lang/String;)Lcom/ihoc/mgpa/toolkit/util/Reflect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->get()Ljava/lang/Object;

    move-result-object v2

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ihoc/mgpa/gradish/d1;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".VmpCallback"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->onClass(Ljava/lang/String;)Lcom/ihoc/mgpa/toolkit/util/Reflect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/d1;->d:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " , version: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/d1;->c:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->print(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    iput-object v2, p0, Lcom/ihoc/mgpa/gradish/d1;->b:Ljava/lang/Object;

    .line 15
    iput-object v3, p0, Lcom/ihoc/mgpa/gradish/d1;->a:Ljava/lang/Class;

    const/4 v0, 0x1

    .line 16
    sput-boolean v0, Lcom/ihoc/mgpa/gradish/d1;->f:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 19
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "TransceiverTool: get task public class failed! pkg: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ihoc/mgpa/gradish/d1;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "com.ihoc.tgpatask.transceivertool.constant.ConfigConsts"

    const-string v1, "VERSION"

    invoke-direct {p0, v0, v1}, Lcom/ihoc/mgpa/gradish/d1;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 4
    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/d1;->c:Ljava/lang/String;

    .line 5
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "find task version with pkg: com.ihoc.tgpatask"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    const-string v0, "com.ihoc.tgpatask"

    return-object v0

    .line 8
    :cond_0
    const-string v0, "com.enq.transceiver.transceivertool.constant.ConfigConsts"

    invoke-direct {p0, v0, v1}, Lcom/ihoc/mgpa/gradish/d1;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/d1;->c:Ljava/lang/String;

    .line 11
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "find task version with pkg: com.enq.transceiver"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    const-string v0, "com.enq.transceiver"

    return-object v0

    .line 24
    :cond_1
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "can not find any task version in this project!"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static c()Lcom/ihoc/mgpa/gradish/d1;
    .locals 2

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/d1;->e:Lcom/ihoc/mgpa/gradish/d1;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ihoc/mgpa/gradish/d1;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ihoc/mgpa/gradish/d1;->e:Lcom/ihoc/mgpa/gradish/d1;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ihoc/mgpa/gradish/d1;

    invoke-direct {v1}, Lcom/ihoc/mgpa/gradish/d1;-><init>()V

    sput-object v1, Lcom/ihoc/mgpa/gradish/d1;->e:Lcom/ihoc/mgpa/gradish/d1;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcom/ihoc/mgpa/gradish/d1;->e:Lcom/ihoc/mgpa/gradish/d1;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/ihoc/mgpa/reflectinterface/ITransceiverCallback;)V
    .locals 4

    .line 40
    sget-boolean v0, Lcom/ihoc/mgpa/gradish/d1;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 42
    :try_start_0
    new-instance v1, Lcom/ihoc/mgpa/gradish/d1$a;

    invoke-direct {v1, p0, p1}, Lcom/ihoc/mgpa/gradish/d1$a;-><init>(Lcom/ihoc/mgpa/gradish/d1;Lcom/ihoc/mgpa/reflectinterface/ITransceiverCallback;)V

    .line 48
    invoke-static {v1}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->on(Ljava/lang/Object;)Lcom/ihoc/mgpa/toolkit/util/Reflect;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ihoc/mgpa/gradish/d1;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".VmpCallback"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 49
    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/d1;->b:Ljava/lang/Object;

    invoke-static {v1}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->on(Ljava/lang/Object;)Lcom/ihoc/mgpa/toolkit/util/Reflect;

    move-result-object v1

    const-string v2, "registerCallback"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/ihoc/mgpa/toolkit/util/Reflect;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    :catch_0
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "Transceiver registerCallback invoke exception!"

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .line 35
    sget-boolean v0, Lcom/ihoc/mgpa/gradish/d1;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 37
    :try_start_0
    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/d1;->b:Ljava/lang/Object;

    invoke-static {v1}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->on(Ljava/lang/Object;)Lcom/ihoc/mgpa/toolkit/util/Reflect;

    move-result-object v1

    const-string v2, "localTaskTapd"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/ihoc/mgpa/toolkit/util/Reflect;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 39
    :catch_0
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "Transceiver localTaskTapd invoke exception!"

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/ihoc/mgpa/reflectinterface/ITransceiverCallback;)V
    .locals 4

    .line 52
    sget-boolean v0, Lcom/ihoc/mgpa/gradish/d1;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 54
    :try_start_0
    new-instance v1, Lcom/ihoc/mgpa/gradish/d1$b;

    invoke-direct {v1, p0, p2}, Lcom/ihoc/mgpa/gradish/d1$b;-><init>(Lcom/ihoc/mgpa/gradish/d1;Lcom/ihoc/mgpa/reflectinterface/ITransceiverCallback;)V

    .line 60
    invoke-static {v1}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->on(Ljava/lang/Object;)Lcom/ihoc/mgpa/toolkit/util/Reflect;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ihoc/mgpa/gradish/d1;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".VmpCallback"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    .line 61
    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/d1;->b:Ljava/lang/Object;

    invoke-static {v1}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->on(Ljava/lang/Object;)Lcom/ihoc/mgpa/toolkit/util/Reflect;

    move-result-object v1

    const-string v2, "localTaskApi"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    const/4 p1, 0x1

    aput-object p2, v3, p1

    invoke-virtual {v1, v2, v3}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/ihoc/mgpa/toolkit/util/Reflect;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "Transceiver registerCallback invoke exception!"

    invoke-static {p2, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    .line 20
    sget-boolean v0, Lcom/ihoc/mgpa/gradish/d1;->f:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 22
    :try_start_0
    iget-object v4, p0, Lcom/ihoc/mgpa/gradish/d1;->b:Ljava/lang/Object;

    invoke-static {v4}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->on(Ljava/lang/Object;)Lcom/ihoc/mgpa/toolkit/util/Reflect;

    move-result-object v4

    const-string v5, "initBase"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v3

    aput-object p2, v6, v2

    aput-object p3, v6, v1

    aput-object p4, v6, v0

    const/4 v7, 0x4

    aput-object p5, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/ihoc/mgpa/toolkit/util/Reflect;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    nop

    .line 26
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_0

    .line 28
    :try_start_1
    iget-object p5, p0, Lcom/ihoc/mgpa/gradish/d1;->b:Ljava/lang/Object;

    invoke-static {p5}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->on(Ljava/lang/Object;)Lcom/ihoc/mgpa/toolkit/util/Reflect;

    move-result-object p5

    const-string v4, "init"

    new-array v5, v0, [Ljava/lang/Object;

    aput-object p1, v5, v3

    aput-object p3, v5, v2

    aput-object p4, v5, v1

    invoke-virtual {p5, v4, v5}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/ihoc/mgpa/toolkit/util/Reflect;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    nop

    .line 32
    :cond_0
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 34
    :try_start_2
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/d1;->b:Ljava/lang/Object;

    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->on(Ljava/lang/Object;)Lcom/ihoc/mgpa/toolkit/util/Reflect;

    move-result-object p1

    const-string p5, "initByXid"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v3

    aput-object p3, v0, v2

    aput-object p4, v0, v1

    invoke-virtual {p1, p5, v0}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/ihoc/mgpa/toolkit/util/Reflect;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    .line 25
    sget-boolean v0, Lcom/ihoc/mgpa/gradish/d1;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 27
    :try_start_0
    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/d1;->b:Ljava/lang/Object;

    invoke-static {v1}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->on(Ljava/lang/Object;)Lcom/ihoc/mgpa/toolkit/util/Reflect;

    move-result-object v1

    const-string v2, "localTaskApi"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/ihoc/mgpa/toolkit/util/Reflect;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 29
    :catch_0
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "Transceiver localTaskApi invoke exception!"

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 4

    .line 9
    sget-boolean v0, Lcom/ihoc/mgpa/gradish/d1;->f:Z

    if-eqz v0, :cond_0

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/d1;->b:Ljava/lang/Object;

    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->on(Ljava/lang/Object;)Lcom/ihoc/mgpa/toolkit/util/Reflect;

    move-result-object v0

    const-string v1, "setTaskConfig"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/ihoc/mgpa/toolkit/util/Reflect;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/gradish/d1;->f:Z

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/d1;->b:Ljava/lang/Object;

    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->on(Ljava/lang/Object;)Lcom/ihoc/mgpa/toolkit/util/Reflect;

    move-result-object v0

    const-string v1, "start"

    invoke-virtual {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->call(Ljava/lang/String;)Lcom/ihoc/mgpa/toolkit/util/Reflect;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    const-string v1, "Transceiver start invoke exception!"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/gradish/d1;->f:Z

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/d1;->b:Ljava/lang/Object;

    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->on(Ljava/lang/Object;)Lcom/ihoc/mgpa/toolkit/util/Reflect;

    move-result-object v0

    const-string/jumbo v1, "stop"

    invoke-virtual {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->call(Ljava/lang/String;)Lcom/ihoc/mgpa/toolkit/util/Reflect;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    const-string v1, "Transceiver stop invoke exception!"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
