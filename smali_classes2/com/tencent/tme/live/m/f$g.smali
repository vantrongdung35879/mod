.class public Lcom/tencent/tme/live/m/f$g;
.super Lcom/tencent/tme/live/m/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/m/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/tme/live/m/f$a<",
        "Ljava/util/Map<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tme/live/m/f$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/Map;

    .line 1
    iput-object p1, p0, Lcom/tencent/tme/live/m/f$g;->a:Ljava/util/Map;

    return-void
.end method

.method public a(Lcom/tencent/tme/live/n/b;IILcom/tencent/tme/live/n/d;ZLcom/tencent/tme/live/o/d;)Z
    .locals 0

    iget-object p2, p0, Lcom/tencent/tme/live/m/f$g;->a:Ljava/util/Map;

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/tencent/tme/live/n/b;->f()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    if-eqz p5, :cond_0

    const/4 p2, 0x1

    const/4 p3, 0x1

    :cond_0
    if-eqz p3, :cond_1

    iget p2, p1, Lcom/tencent/tme/live/n/b;->A:I

    or-int/lit16 p2, p2, 0x200

    iput p2, p1, Lcom/tencent/tme/live/n/b;->A:I

    :cond_1
    return p3
.end method
