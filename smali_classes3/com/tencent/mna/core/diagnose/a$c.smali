.class Lcom/tencent/mna/core/diagnose/a$c;
.super Ljava/lang/Object;
.source "DiagnoseManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/core/diagnose/a;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/mna/core/diagnose/a$c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/mna/core/diagnose/a$c;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    new-instance v0, Lcom/tencent/mna/core/diagnose/d;

    iget-object v1, p0, Lcom/tencent/mna/core/diagnose/a$c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mna/core/diagnose/a$c;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/tencent/mna/core/diagnose/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :try_start_0
    invoke-static {v0}, Lcom/tencent/mna/core/diagnose/a;->a(Lcom/tencent/mna/core/diagnose/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DiagnoseManager queryKartin4test, exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Lcom/tencent/mna/core/diagnose/b;->b()Lcom/tencent/mna/KartinRet;

    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Lcom/tencent/mna/core/diagnose/a;->a(Lcom/tencent/mna/core/diagnose/b;Lcom/tencent/mna/KartinRet;)V

    :goto_0
    return-void
.end method
