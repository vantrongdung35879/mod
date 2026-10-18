.class public Lcom/tencent/tme/live/e2/b$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/c2/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tme/live/e2/b;->finishSessionInitialization0(Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/c2/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/tme/live/c2/i<",
        "Lcom/tencent/tme/live/c2/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/f2/j;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/e2/b;Lcom/tencent/tme/live/f2/j;)V
    .locals 0

    iput-object p2, p0, Lcom/tencent/tme/live/e2/b$b;->a:Lcom/tencent/tme/live/f2/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lcom/tencent/tme/live/c2/h;)V
    .locals 0

    check-cast p1, Lcom/tencent/tme/live/c2/b;

    .line 1
    invoke-interface {p1}, Lcom/tencent/tme/live/c2/b;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tme/live/e2/b$b;->a:Lcom/tencent/tme/live/f2/j;

    invoke-interface {p1}, Lcom/tencent/tme/live/f2/j;->closeNow()Lcom/tencent/tme/live/c2/a;

    :cond_0
    return-void
.end method
