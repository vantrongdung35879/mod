.class public Lcom/tencent/tme/live/b1/d$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/b1/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Lcom/tencent/tme/live/w0/f;

.field public final synthetic b:Lcom/tencent/tme/live/b1/d;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/b1/d;Lcom/tencent/tme/live/w0/f;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/b1/d$b;->b:Lcom/tencent/tme/live/b1/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/tencent/tme/live/b1/d$b;->a:Lcom/tencent/tme/live/w0/f;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/live/b1/d$b;->a:Lcom/tencent/tme/live/w0/f;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/tencent/tme/live/w0/f;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/tencent/tme/live/v0/f;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tencent/tme/live/biz/R$dimen;->tme_emoj_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/tencent/tme/live/b1/d$b;->a:Lcom/tencent/tme/live/w0/f;

    iget-object v1, v1, Lcom/tencent/tme/live/w0/f;->c:Ljava/lang/String;

    new-instance v2, Lcom/tencent/tme/live/b1/d$b$a;

    invoke-direct {v2, p0}, Lcom/tencent/tme/live/b1/d$b$a;-><init>(Lcom/tencent/tme/live/b1/d$b;)V

    invoke-static {v1, v0, v0, v2}, Lcom/tencent/tme/live/b1/f;->a(Ljava/lang/String;IILcom/tencent/tme/live/l0/a;)V

    return-void

    :cond_1
    :goto_0
    const-string v0, "DownloadInfo hotEmoj empty"

    const/4 v1, 0x0

    .line 1
    const-string v2, "EmojResourceManager"

    invoke-static {v2, v0, v1}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/tme/live/b1/d$b;->b:Lcom/tencent/tme/live/b1/d;

    invoke-static {v0}, Lcom/tencent/tme/live/b1/d;->a(Lcom/tencent/tme/live/b1/d;)V

    return-void
.end method
