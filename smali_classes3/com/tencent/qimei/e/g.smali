.class public final Lcom/tencent/qimei/e/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final b:Landroid/content/Context;

.field public c:Lcom/tencent/qimei/e/c;

.field public d:Lcom/tencent/qimei/e/e;

.field public final e:Lcom/tencent/qimei/e/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/tencent/qimei/e/g;->a:Z

    .line 6
    new-instance v0, Lcom/tencent/qimei/e/f;

    invoke-direct {v0, p0}, Lcom/tencent/qimei/e/f;-><init>(Lcom/tencent/qimei/e/g;)V

    iput-object v0, p0, Lcom/tencent/qimei/e/g;->e:Lcom/tencent/qimei/e/f;

    .line 19
    iput-object p1, p0, Lcom/tencent/qimei/e/g;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/tencent/qimei/e/g;->d:Lcom/tencent/qimei/e/e;

    iget-object v0, p0, Lcom/tencent/qimei/e/g;->c:Lcom/tencent/qimei/e/c;

    invoke-virtual {p1, v0}, Lcom/tencent/qimei/e/e;->a(Lcom/tencent/qimei/e/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HSDID notify did bind status error :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/qimei/af/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/tencent/qimei/e/g;->d:Lcom/tencent/qimei/e/e;

    .line 7
    iget-object p1, p1, Lcom/tencent/qimei/e/e;->a:Lcom/tencent/oaid2/VendorManager;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, v0, v1, v1, v0}, Lcom/tencent/oaid2/VendorManager;->callbackOaid(ZLjava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method
