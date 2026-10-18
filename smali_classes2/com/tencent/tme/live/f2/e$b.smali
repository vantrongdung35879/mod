.class public Lcom/tencent/tme/live/f2/e$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/j2/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/f2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/tme/live/j2/d<",
        "Lcom/tencent/tme/live/f2/j;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/f2/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tencent/tme/live/f2/e;Lcom/tencent/tme/live/f2/e$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tme/live/f2/e$b;-><init>(Lcom/tencent/tme/live/f2/e;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/tencent/tme/live/f2/j;

    .line 1
    invoke-interface {p1}, Lcom/tencent/tme/live/f2/j;->closeNow()Lcom/tencent/tme/live/c2/a;

    return-void
.end method
