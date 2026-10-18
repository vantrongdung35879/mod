.class public Lcom/tencent/smtt/services/ChildProcessService;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/smtt/services/ChildProcessService$Sandboxed9;,
        Lcom/tencent/smtt/services/ChildProcessService$Sandboxed8;,
        Lcom/tencent/smtt/services/ChildProcessService$Sandboxed7;,
        Lcom/tencent/smtt/services/ChildProcessService$Sandboxed6;,
        Lcom/tencent/smtt/services/ChildProcessService$Sandboxed5;,
        Lcom/tencent/smtt/services/ChildProcessService$Sandboxed4;,
        Lcom/tencent/smtt/services/ChildProcessService$Sandboxed3;,
        Lcom/tencent/smtt/services/ChildProcessService$Sandboxed2;,
        Lcom/tencent/smtt/services/ChildProcessService$Sandboxed1;,
        Lcom/tencent/smtt/services/ChildProcessService$Sandboxed0;,
        Lcom/tencent/smtt/services/ChildProcessService$Sandboxed;,
        Lcom/tencent/smtt/services/ChildProcessService$Privileged9;,
        Lcom/tencent/smtt/services/ChildProcessService$Privileged8;,
        Lcom/tencent/smtt/services/ChildProcessService$Privileged7;,
        Lcom/tencent/smtt/services/ChildProcessService$Privileged6;,
        Lcom/tencent/smtt/services/ChildProcessService$Privileged5;,
        Lcom/tencent/smtt/services/ChildProcessService$Privileged4;,
        Lcom/tencent/smtt/services/ChildProcessService$Privileged3;,
        Lcom/tencent/smtt/services/ChildProcessService$Privileged2;,
        Lcom/tencent/smtt/services/ChildProcessService$Privileged1;,
        Lcom/tencent/smtt/services/ChildProcessService$Privileged0;,
        Lcom/tencent/smtt/services/ChildProcessService$Privileged;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ChildProcessService"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private onError(Landroid/content/Intent;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method
