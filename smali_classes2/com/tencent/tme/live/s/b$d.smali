.class public Lcom/tencent/tme/live/s/b$d;
.super Lcom/tencent/tme/live/s/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/s/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/tme/live/s/b$c;-><init>(Lcom/tencent/tme/live/s/b$a;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tencent/tme/live/s/b$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tme/live/s/b$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLcom/tencent/tme/live/n/b;Lcom/tencent/tme/live/n/k;FLcom/tencent/tme/live/n/b;Lcom/tencent/tme/live/n/b;)Z
    .locals 0

    iget p1, p2, Lcom/tencent/tme/live/n/b;->n:F

    add-float/2addr p4, p1

    check-cast p3, Lcom/tencent/tme/live/o/a;

    .line 1
    iget p1, p3, Lcom/tencent/tme/live/o/a;->g:I

    int-to-float p1, p1

    cmpl-float p1, p4, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
