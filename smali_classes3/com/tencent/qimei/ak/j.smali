.class public final Lcom/tencent/qimei/ak/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/tencent/qimei/ak/n;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/ak/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/ak/j;->a:Lcom/tencent/qimei/ak/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/ak/j;->a:Lcom/tencent/qimei/ak/n;

    .line 2
    iget-object v0, v0, Lcom/tencent/qimei/ak/n;->d:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p1, v1, v0

    const-string p1, "SDK_INIT"

    const-string v0, "OD initialization finished (appKey: %s)\uff0cresult:%s"

    invoke-static {p1, v0, v1}, Lcom/tencent/qimei/af/c;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/tencent/qimei/ak/j;->a:Lcom/tencent/qimei/ak/n;

    .line 6
    iget-object v0, p1, Lcom/tencent/qimei/ak/n;->d:Ljava/lang/String;

    .line 7
    invoke-static {}, Lcom/tencent/qimei/v/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p1, Lcom/tencent/qimei/ak/n;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/ak/p;->b(Ljava/lang/String;)Lcom/tencent/qimei/ak/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qimei/ak/p;->b()Ljava/lang/String;

    .line 13
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/qimei/ak/n;->m()V

    return-void
.end method
