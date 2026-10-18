.class public Lcom/tencent/tme/live/r0/g$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tme/live/r0/g;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/d1/d;

.field public final synthetic b:Lcom/tencent/tme/live/r0/g;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/r0/g;Lcom/tencent/tme/live/d1/d;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/r0/g$a;->b:Lcom/tencent/tme/live/r0/g;

    iput-object p2, p0, Lcom/tencent/tme/live/r0/g$a;->a:Lcom/tencent/tme/live/d1/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/tencent/tme/live/r0/g$a;->b:Lcom/tencent/tme/live/r0/g;

    .line 1
    iget-object p1, p1, Lcom/tencent/tme/live/r0/g;->i:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/tencent/tme/live/r0/g$a;->a:Lcom/tencent/tme/live/d1/d;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/r0/g$a;->b:Lcom/tencent/tme/live/r0/g;

    .line 3
    iget-object v0, v0, Lcom/tencent/tme/live/r0/g;->i:Ljava/util/List;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/tencent/tme/live/r0/g$a;->b:Lcom/tencent/tme/live/r0/g;

    .line 5
    iget-object p1, p1, Lcom/tencent/tme/live/r0/g;->i:Ljava/util/List;

    .line 6
    iget-object v0, p0, Lcom/tencent/tme/live/r0/g$a;->a:Lcom/tencent/tme/live/d1/d;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method
