.class final Lcom/uqm/crashsight/crashreport/crash/d$2;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uqm/crashsight/crashreport/crash/d;->a(Ljava/lang/Thread;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/Thread;

.field private synthetic b:I

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Ljava/lang/String;

.field private synthetic e:Ljava/lang/String;

.field private synthetic f:Ljava/lang/String;

.field private synthetic g:Ljava/util/Map;

.field private synthetic h:I

.field private synthetic i:Ljava/lang/String;

.field private synthetic j:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Thread;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/d$2;->a:Ljava/lang/Thread;

    iput p2, p0, Lcom/uqm/crashsight/crashreport/crash/d$2;->b:I

    iput-object p3, p0, Lcom/uqm/crashsight/crashreport/crash/d$2;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/uqm/crashsight/crashreport/crash/d$2;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/uqm/crashsight/crashreport/crash/d$2;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/uqm/crashsight/crashreport/crash/d$2;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/uqm/crashsight/crashreport/crash/d$2;->g:Ljava/util/Map;

    iput p8, p0, Lcom/uqm/crashsight/crashreport/crash/d$2;->h:I

    iput-object p9, p0, Lcom/uqm/crashsight/crashreport/crash/d$2;->i:Ljava/lang/String;

    iput-object p10, p0, Lcom/uqm/crashsight/crashreport/crash/d$2;->j:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 195
    :try_start_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/d;->b()Lcom/uqm/crashsight/crashreport/crash/d;

    move-result-object v0

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/crash/d$2;->a:Ljava/lang/Thread;

    iget v2, p0, Lcom/uqm/crashsight/crashreport/crash/d$2;->b:I

    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/crash/d$2;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/crash/d$2;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/uqm/crashsight/crashreport/crash/d$2;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/uqm/crashsight/crashreport/crash/d$2;->f:Ljava/lang/String;

    iget-object v7, p0, Lcom/uqm/crashsight/crashreport/crash/d$2;->g:Ljava/util/Map;

    iget v8, p0, Lcom/uqm/crashsight/crashreport/crash/d$2;->h:I

    iget-object v9, p0, Lcom/uqm/crashsight/crashreport/crash/d$2;->i:Ljava/lang/String;

    iget-object v10, p0, Lcom/uqm/crashsight/crashreport/crash/d$2;->j:Ljava/lang/String;

    invoke-static/range {v0 .. v10}, Lcom/uqm/crashsight/crashreport/crash/d;->a(Lcom/uqm/crashsight/crashreport/crash/d;Ljava/lang/Thread;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-static {}, Lcom/uqm/crashsight/proguard/n;->a()Lcom/uqm/crashsight/proguard/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/proguard/n;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 200
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    .line 201
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/d$2;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/crash/d$2;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/d$2;->f:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const-string v0, "[ExtraCrashManager] Crash error %s %s %s"

    invoke-static {v0, v3}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
