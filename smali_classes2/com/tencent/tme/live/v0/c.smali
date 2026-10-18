.class public Lcom/tencent/tme/live/v0/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public a:J

.field public b:Landroid/view/View$OnClickListener;

.field public c:J


# direct methods
.method public constructor <init>(Landroid/view/View$OnClickListener;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/live/v0/c;->b:Landroid/view/View$OnClickListener;

    iput-wide p2, p0, Lcom/tencent/tme/live/v0/c;->c:J

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/tme/live/v0/c;->a:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/tencent/tme/live/v0/c;->c:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tme/live/v0/c;->a:J

    iget-object v0, p0, Lcom/tencent/tme/live/v0/c;->b:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
