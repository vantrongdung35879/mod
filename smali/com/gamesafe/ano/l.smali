.class Lcom/gamesafe/ano/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/gamesafe/ano/k;


# direct methods
.method constructor <init>(Lcom/gamesafe/ano/k;)V
    .locals 0

    iput-object p1, p0, Lcom/gamesafe/ano/l;->a:Lcom/gamesafe/ano/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/gamesafe/ano/l;->a:Lcom/gamesafe/ano/k;

    invoke-static {p1}, Lcom/gamesafe/ano/k;->a(Lcom/gamesafe/ano/k;)Lcom/gamesafe/ano/g$a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/gamesafe/ano/l;->a:Lcom/gamesafe/ano/k;

    invoke-static {p1}, Lcom/gamesafe/ano/k;->a(Lcom/gamesafe/ano/k;)Lcom/gamesafe/ano/g$a;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/gamesafe/ano/g$a;->a(I)V

    :cond_0
    return-void
.end method
