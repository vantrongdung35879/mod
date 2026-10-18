.class Lcom/tencent/mna/core/diagnose/a$b;
.super Ljava/lang/Object;
.source "DiagnoseManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/core/diagnose/a;->a(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/tencent/mna/core/diagnose/a$b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/mna/core/diagnose/a$b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    new-instance v0, Lcom/tencent/mna/core/diagnose/b;

    iget-object v1, p0, Lcom/tencent/mna/core/diagnose/a$b;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mna/core/diagnose/a$b;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/tencent/mna/core/diagnose/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/utils/c;->c(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mna/core/diagnose/a;->a(Lcom/tencent/mna/core/diagnose/b;I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 10
    :cond_0
    const-string v1, "0.0.0.0"

    invoke-static {v0, v1}, Lcom/tencent/mna/core/diagnose/a;->a(Lcom/tencent/mna/core/diagnose/b;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 14
    :cond_1
    invoke-static {}, Lcom/tencent/mna/core/diagnose/a;->b()V

    const/4 v1, 0x1

    .line 16
    new-array v1, v1, [Lcom/tencent/mna/c1;

    .line 17
    invoke-static {v0, v1}, Lcom/tencent/mna/core/diagnose/a;->a(Lcom/tencent/mna/core/diagnose/b;[Lcom/tencent/mna/c1;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    const/4 v2, 0x0

    .line 21
    aget-object v1, v1, v2

    .line 22
    invoke-static {v0, v1}, Lcom/tencent/mna/core/diagnose/a;->a(Lcom/tencent/mna/core/diagnose/b;Lcom/tencent/mna/c1;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    .line 27
    :cond_3
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mna/base/utils/c;->c(Landroid/content/Context;)I

    move-result v2

    .line 28
    invoke-static {v0, v2}, Lcom/tencent/mna/core/diagnose/a;->a(Lcom/tencent/mna/core/diagnose/b;I)Z

    move-result v3

    if-eqz v3, :cond_4

    return-void

    .line 31
    :cond_4
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mna/base/utils/WifiUtil;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 34
    invoke-static {v0, v1, v2}, Lcom/tencent/mna/core/diagnose/a;->a(Lcom/tencent/mna/core/diagnose/b;Lcom/tencent/mna/c1;I)Z

    move-result v1

    if-eqz v1, :cond_5

    return-void

    .line 39
    :cond_5
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/utils/c;->c(Landroid/content/Context;)I

    move-result v1

    .line 40
    invoke-static {v0, v2, v3}, Lcom/tencent/mna/core/diagnose/a;->a(Lcom/tencent/mna/core/diagnose/b;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-void

    .line 45
    :cond_6
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/tencent/mna/base/utils/c;->b(Landroid/content/Context;I)I

    move-result v2

    .line 46
    invoke-virtual {v0, v1, v2}, Lcom/tencent/mna/core/diagnose/b;->a(II)V

    .line 47
    invoke-static {v0}, Lcom/tencent/mna/core/diagnose/a;->a(Lcom/tencent/mna/core/diagnose/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DiagnoseManager queryKartin failed, exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0}, Lcom/tencent/mna/core/diagnose/b;->b()Lcom/tencent/mna/KartinRet;

    move-result-object v1

    .line 51
    invoke-static {v0, v1}, Lcom/tencent/mna/core/diagnose/a;->a(Lcom/tencent/mna/core/diagnose/b;Lcom/tencent/mna/KartinRet;)V

    :goto_0
    return-void
.end method
