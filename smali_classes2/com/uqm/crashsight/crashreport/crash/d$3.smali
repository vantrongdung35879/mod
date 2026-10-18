.class final Lcom/uqm/crashsight/crashreport/crash/d$3;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uqm/crashsight/crashreport/crash/d;->a(Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/Thread;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Ljava/lang/String;

.field private synthetic e:Ljava/util/Map;

.field private synthetic f:I


# direct methods
.method constructor <init>(Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V
    .locals 0

    .line 702
    iput-object p1, p0, Lcom/uqm/crashsight/crashreport/crash/d$3;->a:Ljava/lang/Thread;

    iput-object p2, p0, Lcom/uqm/crashsight/crashreport/crash/d$3;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/uqm/crashsight/crashreport/crash/d$3;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/uqm/crashsight/crashreport/crash/d$3;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/uqm/crashsight/crashreport/crash/d$3;->e:Ljava/util/Map;

    iput p6, p0, Lcom/uqm/crashsight/crashreport/crash/d$3;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 706
    :try_start_0
    invoke-static {}, Lcom/uqm/crashsight/crashreport/crash/d;->b()Lcom/uqm/crashsight/crashreport/crash/d;

    move-result-object v0

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/crash/d$3;->a:Ljava/lang/Thread;

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/d$3;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/crash/d$3;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/uqm/crashsight/crashreport/crash/d$3;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/uqm/crashsight/crashreport/crash/d$3;->e:Ljava/util/Map;

    iget v6, p0, Lcom/uqm/crashsight/crashreport/crash/d$3;->f:I

    invoke-static/range {v0 .. v6}, Lcom/uqm/crashsight/crashreport/crash/d;->a(Lcom/uqm/crashsight/crashreport/crash/d;Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    .line 709
    invoke-static {}, Lcom/uqm/crashsight/proguard/n;->a()Lcom/uqm/crashsight/proguard/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/proguard/n;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 711
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    .line 712
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/crash/d$3;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/crash/d$3;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/uqm/crashsight/crashreport/crash/d$3;->d:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const-string v0, "[ExtraCrashManager] Crash jank %s %s %s"

    invoke-static {v0, v3}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
