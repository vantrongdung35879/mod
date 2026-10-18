.class Lcom/tencent/mna/core/diagnose/a$e;
.super Ljava/lang/Object;
.source "DiagnoseManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/core/diagnose/a;->b(Lcom/tencent/mna/core/diagnose/b;Lcom/tencent/mna/KartinRet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/mna/GHObserver;

.field final synthetic b:Lcom/tencent/mna/KartinRet;


# direct methods
.method constructor <init>(Lcom/tencent/mna/GHObserver;Lcom/tencent/mna/KartinRet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/mna/core/diagnose/a$e;->a:Lcom/tencent/mna/GHObserver;

    iput-object p2, p0, Lcom/tencent/mna/core/diagnose/a$e;->b:Lcom/tencent/mna/KartinRet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/b2;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/tencent/mna/core/diagnose/a$e;->a:Lcom/tencent/mna/GHObserver;

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Lcom/tencent/mna/core/diagnose/a$e;->b:Lcom/tencent/mna/KartinRet;

    invoke-interface {v0, v1}, Lcom/tencent/mna/GHObserver;->OnQueryKartinNotify(Lcom/tencent/mna/KartinRet;)V

    goto :goto_0

    .line 7
    :cond_0
    const-string v0, "GH OnQueryKartinNotify not allow"

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    return-void
.end method
