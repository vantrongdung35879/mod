.class public Lcom/tencent/tme/live/f2/g$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/c2/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/f2/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/tme/live/c2/i<",
        "Lcom/tencent/tme/live/c2/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/f2/g;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/f2/g;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/f2/g$b;->a:Lcom/tencent/tme/live/f2/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lcom/tencent/tme/live/c2/h;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/f2/g$b;->a:Lcom/tencent/tme/live/f2/g;

    invoke-interface {p1}, Lcom/tencent/tme/live/c2/h;->getSession()Lcom/tencent/tme/live/f2/j;

    move-result-object p1

    check-cast p1, Lcom/tencent/tme/live/f2/a;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/f2/g;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
