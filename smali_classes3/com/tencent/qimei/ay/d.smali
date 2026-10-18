.class public final Lcom/tencent/qimei/ay/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/tencent/qimei/ax/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/qimei/ax/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/tencent/qimei/ay/d;->b:Ljava/lang/String;

    .line 4
    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p2, p0, Lcom/tencent/qimei/ay/d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    iput-object p3, p0, Lcom/tencent/qimei/ay/d;->d:Lcom/tencent/qimei/ax/e;

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/jsfile/"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/qimei/ay/d;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/ay/d;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/ac/m;->a(Ljava/lang/String;)Lcom/tencent/qimei/ac/m;

    move-result-object v0

    const-string v1, "hm_md_tm"

    invoke-virtual {v0, v1}, Lcom/tencent/qimei/ac/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 3
    const-string v0, ""

    .line 5
    :cond_0
    new-instance p1, Lcom/tencent/qimei/ay/a;

    invoke-direct {p1, p0}, Lcom/tencent/qimei/ay/a;-><init>(Lcom/tencent/qimei/ay/d;)V

    .line 6
    invoke-static {}, Lcom/tencent/qimei/u/a;->a()Lcom/tencent/qimei/u/a;

    move-result-object v1

    new-instance v2, Lcom/tencent/qimei/x/a;

    const-string v3, "https://tun-cos-1258344701.file.myqcloud.com/my.html"

    invoke-direct {v2, v3, v0, p1}, Lcom/tencent/qimei/x/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/qimei/ay/c;)V

    invoke-virtual {v1, v2}, Lcom/tencent/qimei/u/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/ay/d;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/ac/m;->a(Ljava/lang/String;)Lcom/tencent/qimei/ac/m;

    move-result-object v0

    const-string v1, "js_md_tm"

    invoke-virtual {v0, v1}, Lcom/tencent/qimei/ac/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 3
    const-string v0, ""

    .line 5
    :cond_0
    sget-object p1, Lcom/tencent/qimei/ax/a;->a:Ljava/lang/String;

    new-instance v1, Lcom/tencent/qimei/ay/b;

    invoke-direct {v1, p0}, Lcom/tencent/qimei/ay/b;-><init>(Lcom/tencent/qimei/ay/d;)V

    .line 6
    invoke-static {}, Lcom/tencent/qimei/u/a;->a()Lcom/tencent/qimei/u/a;

    move-result-object v2

    new-instance v3, Lcom/tencent/qimei/x/a;

    invoke-direct {v3, p1, v0, v1}, Lcom/tencent/qimei/x/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/qimei/ay/c;)V

    invoke-virtual {v2, v3}, Lcom/tencent/qimei/u/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method
