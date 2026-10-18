.class public Lcom/tencent/tme/live/reward/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/w0/l$a;

.field public final synthetic b:Lcom/tencent/tme/live/reward/b$c;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/reward/b$c;Lcom/tencent/tme/live/w0/l$a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/reward/c;->b:Lcom/tencent/tme/live/reward/b$c;

    iput-object p2, p0, Lcom/tencent/tme/live/reward/c;->a:Lcom/tencent/tme/live/w0/l$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/tencent/tme/live/reward/c;->b:Lcom/tencent/tme/live/reward/b$c;

    iget-object p1, p1, Lcom/tencent/tme/live/reward/b$c;->c:Lcom/tencent/tme/live/reward/b;

    iget-object v0, p0, Lcom/tencent/tme/live/reward/c;->a:Lcom/tencent/tme/live/w0/l$a;

    sget v1, Lcom/tencent/tme/live/reward/b;->k:I

    .line 1
    invoke-virtual {p1, v0}, Lcom/tencent/tme/live/reward/b;->a(Lcom/tencent/tme/live/w0/l$a;)V

    return-void
.end method
