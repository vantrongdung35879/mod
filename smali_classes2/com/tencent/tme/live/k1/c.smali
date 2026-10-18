.class public Lcom/tencent/tme/live/k1/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/k1/e;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/k1/e;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/k1/c;->a:Lcom/tencent/tme/live/k1/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/tencent/tme/live/k1/c;->a:Lcom/tencent/tme/live/k1/e;

    .line 1
    iget-object p1, p1, Lcom/tencent/tme/live/k1/e;->t:Lcom/tencent/tme/live/framework/model/PopTVCfgBean;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p1, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->g:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    invoke-static {p1, v0}, Lcom/tencent/tme/live/i1/d;->a(Ljava/lang/String;I)V

    :cond_0
    iget-object p1, p0, Lcom/tencent/tme/live/k1/c;->a:Lcom/tencent/tme/live/k1/e;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tencent/tme/live/k1/e;->a(Lcom/tencent/tme/live/k1/e;Z)V

    return-void
.end method
