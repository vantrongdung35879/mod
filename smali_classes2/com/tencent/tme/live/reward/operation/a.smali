.class public Lcom/tencent/tme/live/reward/operation/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/tencent/tme/live/reward/operation/H5EntryView;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/reward/operation/H5EntryView;Z)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/reward/operation/a;->b:Lcom/tencent/tme/live/reward/operation/H5EntryView;

    iput-boolean p2, p0, Lcom/tencent/tme/live/reward/operation/a;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/tencent/tme/live/reward/operation/a;->b:Lcom/tencent/tme/live/reward/operation/H5EntryView;

    const/4 v0, 0x0

    .line 1
    iput-object v0, p1, Lcom/tencent/tme/live/reward/operation/H5EntryView;->c:Lcom/tencent/tme/live/d1/a;

    .line 2
    iget-object p1, p1, Lcom/tencent/tme/live/reward/operation/H5EntryView;->f:Lcom/tencent/tme/live/reward/operation/H5EntryView$b;

    if-eqz p1, :cond_0

    .line 3
    iget-boolean v0, p0, Lcom/tencent/tme/live/reward/operation/a;->a:Z

    check-cast p1, Lcom/tencent/tme/live/r0/d;

    if-nez v0, :cond_0

    .line 4
    iget-object p1, p1, Lcom/tencent/tme/live/r0/d;->a:Lcom/tencent/tme/live/r0/c;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p1, Lcom/tencent/tme/live/w2/b;->c:Z

    .line 6
    invoke-virtual {p1}, Lcom/tencent/tme/live/r0/c;->g()V

    :cond_0
    return-void
.end method
