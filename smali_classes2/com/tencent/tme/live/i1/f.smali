.class public Lcom/tencent/tme/live/i1/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/l2/c;


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/poptv/TMESPopTvActivity;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/poptv/TMESPopTvActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/i1/f;->a:Lcom/tencent/tme/live/poptv/TMESPopTvActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tme/live/l2/b;)V
    .locals 2

    const-string v0, "fullScreenUseStatusForActivityOnCreate is called:"

    invoke-static {v0}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tme/live/i1/f;->a:Lcom/tencent/tme/live/poptv/TMESPopTvActivity;

    sget v1, Lcom/tencent/tme/live/poptv/TMESPopTvActivity;->e:I

    .line 1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-boolean v1, p1, Lcom/tencent/tme/live/l2/b;->b:Z

    if-eqz v1, :cond_0

    .line 3
    sput-object p1, Lcom/tencent/tme/live/v0/f;->f:Lcom/tencent/tme/live/l2/b;

    iget-object p1, v0, Lcom/tencent/tme/live/poptv/TMESPopTvActivity;->d:Lcom/tencent/tme/live/k1/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget-object v0, Lcom/tencent/tme/live/v0/f;->f:Lcom/tencent/tme/live/l2/b;

    if-eqz v0, :cond_0

    .line 5
    iget-boolean v1, v0, Lcom/tencent/tme/live/l2/b;->b:Z

    if-eqz v1, :cond_0

    .line 6
    iget v0, v0, Lcom/tencent/tme/live/l2/b;->a:I

    .line 7
    iget-object p1, p1, Lcom/tencent/tme/live/k1/e;->g:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method
