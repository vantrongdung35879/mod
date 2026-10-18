.class public final Lcom/tencent/qimei/f/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/tencent/qimei/f/f;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/f/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/f/e;->a:Lcom/tencent/qimei/f/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const-string v0, ""

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/tencent/qimei/f/e;->a:Lcom/tencent/qimei/f/f;

    .line 2
    iget-object v2, v2, Lcom/tencent/qimei/f/f;->a:Landroid/content/Context;

    .line 3
    invoke-static {v2}, Lcom/tencent/qimei/f/b;->a(Landroid/content/Context;)Lcom/tencent/qimei/f/a;

    move-result-object v2

    if-nez v2, :cond_1

    .line 5
    iget-object v2, p0, Lcom/tencent/qimei/f/e;->a:Lcom/tencent/qimei/f/f;

    .line 6
    iget-object v2, v2, Lcom/tencent/qimei/f/f;->b:Lcom/tencent/oaid2/VendorManager;

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {v2, v1, v0, v0, v1}, Lcom/tencent/oaid2/VendorManager;->callbackOaid(ZLjava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void

    .line 11
    :cond_1
    iget-object v3, p0, Lcom/tencent/qimei/f/e;->a:Lcom/tencent/qimei/f/f;

    .line 12
    iget-object v2, v2, Lcom/tencent/qimei/f/a;->a:Ljava/lang/String;

    .line 13
    iput-object v2, v3, Lcom/tencent/qimei/f/f;->c:Ljava/lang/String;

    .line 14
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 15
    iget-object v2, p0, Lcom/tencent/qimei/f/e;->a:Lcom/tencent/qimei/f/f;

    const/4 v3, 0x1

    .line 16
    iput-boolean v3, v2, Lcom/tencent/qimei/f/f;->d:Z

    .line 17
    :cond_2
    iget-object v2, p0, Lcom/tencent/qimei/f/e;->a:Lcom/tencent/qimei/f/f;

    .line 18
    iget-object v3, v2, Lcom/tencent/qimei/f/f;->b:Lcom/tencent/oaid2/VendorManager;

    if-eqz v3, :cond_4

    .line 19
    iget-boolean v4, v2, Lcom/tencent/qimei/f/f;->d:Z

    .line 21
    iget-object v2, v2, Lcom/tencent/qimei/f/f;->c:Ljava/lang/String;

    .line 22
    invoke-virtual {v3, v4, v0, v2, v1}, Lcom/tencent/oaid2/VendorManager;->callbackOaid(ZLjava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 25
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 26
    iget-object v2, p0, Lcom/tencent/qimei/f/e;->a:Lcom/tencent/qimei/f/f;

    .line 27
    iget-object v2, v2, Lcom/tencent/qimei/f/f;->c:Ljava/lang/String;

    .line 28
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 29
    iget-object v2, p0, Lcom/tencent/qimei/f/e;->a:Lcom/tencent/qimei/f/f;

    .line 30
    iput-boolean v1, v2, Lcom/tencent/qimei/f/f;->d:Z

    .line 31
    :cond_3
    iget-object v2, p0, Lcom/tencent/qimei/f/e;->a:Lcom/tencent/qimei/f/f;

    .line 32
    iget-object v3, v2, Lcom/tencent/qimei/f/f;->b:Lcom/tencent/oaid2/VendorManager;

    if-eqz v3, :cond_4

    .line 33
    iget-boolean v4, v2, Lcom/tencent/qimei/f/f;->d:Z

    .line 35
    iget-object v2, v2, Lcom/tencent/qimei/f/f;->c:Ljava/lang/String;

    .line 36
    invoke-virtual {v3, v4, v0, v2, v1}, Lcom/tencent/oaid2/VendorManager;->callbackOaid(ZLjava/lang/String;Ljava/lang/String;Z)V

    :cond_4
    :goto_0
    return-void
.end method
