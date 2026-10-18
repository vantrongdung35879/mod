.class final Lcom/uqm/crashsight/core/crash/CrashSight$1;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uqm/crashsight/core/crash/CrashSight;->reportException(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/uqm/crashsight/core/crash/CrashSight;


# direct methods
.method constructor <init>(Lcom/uqm/crashsight/core/crash/CrashSight;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/uqm/crashsight/core/crash/CrashSight$1;->a:Lcom/uqm/crashsight/core/crash/CrashSight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v0, 0x0

    .line 282
    :try_start_0
    const-string v1, "Exit application by kill process after 3000ms"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/uqm/crashsight/core/tools/UQMLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v1, 0xbb8

    .line 283
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 284
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 285
    const-string v2, "Exit application by kill process: %d"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v0

    invoke-static {v2, v4}, Lcom/uqm/crashsight/core/tools/UQMLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    .line 288
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/uqm/crashsight/core/tools/UQMLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
