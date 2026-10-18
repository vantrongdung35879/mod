.class public final Lcom/tencent/qimei/ak/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lcom/tencent/qimei/ak/g;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/ak/g;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tencent/qimei/ak/m;->a:Lcom/tencent/qimei/ak/g;

    .line 3
    iput-object p2, p0, Lcom/tencent/qimei/ak/m;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/ak/m;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/tencent/qimei/ak/m;->b:Ljava/lang/String;

    sget v1, Lcom/tencent/qimei/ap/f;->a:I

    .line 3
    invoke-static {v0}, Lcom/tencent/qimei/ac/m;->a(Ljava/lang/String;)Lcom/tencent/qimei/ac/m;

    move-result-object v0

    const-string v1, "q_s_t"

    invoke-virtual {v0, v1}, Lcom/tencent/qimei/ac/m;->b(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x18

    .line 4
    invoke-static {v0, v1, v2, v3}, Lcom/tencent/qimei/ad/e;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "SDK_INIT \uff5c QM"

    const-string v3, "more than 24 hours since last QM request"

    invoke-static {v2, v3, v1}, Lcom/tencent/qimei/af/c;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Lcom/tencent/qimei/u/a;->a()Lcom/tencent/qimei/u/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qimei/ak/m;->a:Lcom/tencent/qimei/ak/g;

    invoke-virtual {v0, v1}, Lcom/tencent/qimei/u/a;->a(Ljava/lang/Runnable;)V

    .line 9
    :cond_1
    invoke-static {p0}, Lcom/tencent/qimei/ap/f;->a(Lcom/tencent/qimei/ak/m;)V

    :cond_2
    return-void
.end method
