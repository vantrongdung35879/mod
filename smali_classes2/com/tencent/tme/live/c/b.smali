.class public Lcom/tencent/tme/live/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/d/c;


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/d/e;

.field public final synthetic b:Lcom/tencent/tme/live/c/c$a;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/c/c;Lcom/tencent/tme/live/d/e;Lcom/tencent/tme/live/c/c$a;)V
    .locals 0

    iput-object p2, p0, Lcom/tencent/tme/live/c/b;->a:Lcom/tencent/tme/live/d/e;

    iput-object p3, p0, Lcom/tencent/tme/live/c/b;->b:Lcom/tencent/tme/live/c/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/c/b;->a:Lcom/tencent/tme/live/d/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/tme/live/d/e;->a(ZLjava/lang/String;Landroid/view/View;)V

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-static {p3}, Lcom/tencent/tme/live/c/a;->a(Landroid/view/View;)Lcom/tencent/tme/live/c/a;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object p2, p0, Lcom/tencent/tme/live/c/b;->a:Lcom/tencent/tme/live/d/e;

    .line 1
    iput-object p2, p1, Lcom/tencent/tme/live/c/a;->s:Lcom/tencent/tme/live/d/e;

    .line 2
    iget-object p2, p0, Lcom/tencent/tme/live/c/b;->b:Lcom/tencent/tme/live/c/c$a;

    iget p3, p2, Lcom/tencent/tme/live/c/c$a;->a:I

    if-lez p3, :cond_3

    .line 3
    iput p3, p1, Lcom/tencent/tme/live/c/a;->o:I

    .line 4
    :cond_3
    iget-boolean p2, p2, Lcom/tencent/tme/live/c/c$a;->c:Z

    .line 5
    iput-boolean p2, p1, Lcom/tencent/tme/live/c/a;->p:Z

    .line 6
    invoke-virtual {p1}, Lcom/tencent/tme/live/c/a;->start()V

    return-void
.end method
