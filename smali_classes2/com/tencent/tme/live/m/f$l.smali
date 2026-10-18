.class public Lcom/tencent/tme/live/m/f$l;
.super Lcom/tencent/tme/live/m/f$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/m/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/tme/live/m/f$k<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tme/live/m/f$k;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tme/live/n/b;IILcom/tencent/tme/live/n/d;ZLcom/tencent/tme/live/o/d;)Z
    .locals 0

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/tencent/tme/live/m/f$k;->a:Ljava/util/List;

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    iget p3, p1, Lcom/tencent/tme/live/n/b;->A:I

    or-int/lit8 p3, p3, 0x20

    iput p3, p1, Lcom/tencent/tme/live/n/b;->A:I

    :cond_1
    return p2
.end method
