.class public Lcom/tencent/tme/live/r0/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/r0/h;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/r0/h;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/r0/i;->a:Lcom/tencent/tme/live/r0/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/tencent/tme/live/r0/i;->a:Lcom/tencent/tme/live/r0/h;

    .line 1
    iget-object p1, p1, Lcom/tencent/tme/live/w2/b;->b:Landroid/app/Activity;

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
