.class final Lcom/uqm/crashsight/crashreport/crash/c$1;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uqm/crashsight/crashreport/crash/c;->a(Ljava/lang/Thread;Ljava/lang/Throwable;ZLjava/lang/String;[BZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Z

.field private synthetic b:Ljava/lang/Thread;

.field private synthetic c:Ljava/lang/Throwable;

.field private synthetic d:Ljava/lang/String;

.field private synthetic e:[B

.field private synthetic f:Z

.field private synthetic g:Lcom/uqm/crashsight/crashreport/crash/c;


# direct methods
.method constructor <init>(Lcom/uqm/crashsight/crashreport/crash/c;ZLjava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;[BZ)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/c$1;->g:Lcom/uqm/crashsight/crashreport/crash/c;

    iput-boolean p2, p0, Lcom/uqm/crashsight/crashreport/crash/c$1;->a:Z

    iput-object p3, p0, Lcom/uqm/crashsight/crashreport/crash/c$1;->b:Ljava/lang/Thread;

    iput-object p4, p0, Lcom/uqm/crashsight/crashreport/crash/c$1;->c:Ljava/lang/Throwable;

    iput-object p5, p0, Lcom/uqm/crashsight/crashreport/crash/c$1;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/uqm/crashsight/crashreport/crash/c$1;->e:[B

    iput-boolean p7, p0, Lcom/uqm/crashsight/crashreport/crash/c$1;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 320
    :try_start_0
    const-string v2, "post a throwable %b"

    iget-boolean v3, p0, Lcom/uqm/crashsight/crashreport/crash/c$1;->a:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    aput-object v3, v4, v1

    invoke-static {v2, v4}, Lcom/uqm/crashsight/proguard/q;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 321
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/c$1;->g:Lcom/uqm/crashsight/crashreport/crash/c;

    invoke-static {v2}, Lcom/uqm/crashsight/crashreport/crash/c;->a(Lcom/uqm/crashsight/crashreport/crash/c;)Lcom/uqm/crashsight/crashreport/crash/e;

    move-result-object v3

    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/crash/c$1;->b:Ljava/lang/Thread;

    iget-object v5, p0, Lcom/uqm/crashsight/crashreport/crash/c$1;->c:Ljava/lang/Throwable;

    iget-object v7, p0, Lcom/uqm/crashsight/crashreport/crash/c$1;->d:Ljava/lang/String;

    iget-object v8, p0, Lcom/uqm/crashsight/crashreport/crash/c$1;->e:[B

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/uqm/crashsight/crashreport/crash/e;->a(Ljava/lang/Thread;Ljava/lang/Throwable;ZLjava/lang/String;[B)V

    .line 322
    iget-boolean v2, p0, Lcom/uqm/crashsight/crashreport/crash/c$1;->f:Z

    if-eqz v2, :cond_0

    .line 324
    const-string v2, "clear user datas"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 325
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/c$1;->g:Lcom/uqm/crashsight/crashreport/crash/c;

    invoke-static {v2}, Lcom/uqm/crashsight/crashreport/crash/c;->b(Lcom/uqm/crashsight/crashreport/crash/c;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uqm/crashsight/crashreport/common/info/a;->E()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v2

    .line 328
    invoke-static {v2}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    .line 329
    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/c$1;->c:Ljava/lang/Throwable;

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    const-string v1, "java catch error: %s"

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
