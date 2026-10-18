.class public Lcom/tencent/tmes/live/redpacket/g$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tmes/live/redpacket/g;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tmes/live/redpacket/g;


# direct methods
.method public constructor <init>(Lcom/tencent/tmes/live/redpacket/g;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tmes/live/redpacket/g$b;->a:Lcom/tencent/tmes/live/redpacket/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/g$b;->a:Lcom/tencent/tmes/live/redpacket/g;

    .line 1
    iget-object v0, v0, Lcom/tencent/tmes/live/redpacket/g;->g:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    sget v1, Lcom/tencent/tmes/live/redpacket/g;->l:I

    if-ge v0, v1, :cond_3

    .line 3
    iget-object v1, p0, Lcom/tencent/tmes/live/redpacket/g$b;->a:Lcom/tencent/tmes/live/redpacket/g;

    .line 4
    iget v2, v1, Lcom/tencent/tmes/live/redpacket/g;->f:I

    if-ne v0, v2, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {v1, v0}, Lcom/tencent/tmes/live/redpacket/g;->b(I)Lcom/tencent/tme/live/w0/j$a;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 6
    :cond_2
    iget-object v2, p0, Lcom/tencent/tmes/live/redpacket/g$b;->a:Lcom/tencent/tmes/live/redpacket/g;

    .line 7
    invoke-virtual {v2, v0}, Lcom/tencent/tmes/live/redpacket/g;->a(I)Lcom/tencent/tme/live/y2/d;

    move-result-object v2

    .line 8
    iget-object v3, p0, Lcom/tencent/tmes/live/redpacket/g$b;->a:Lcom/tencent/tmes/live/redpacket/g;

    .line 9
    iget-object v3, v3, Lcom/tencent/tmes/live/redpacket/g;->b:Lcom/tencent/tme/live/w0/j;

    .line 10
    invoke-interface {v2, v3, v1}, Lcom/tencent/tme/live/y2/d;->a(Lcom/tencent/tme/live/w0/j;Lcom/tencent/tme/live/w0/j$a;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
