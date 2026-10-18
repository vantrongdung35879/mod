.class public Lcom/tencent/mna/i3;
.super Ljava/lang/Object;
.source "SpeedComparatorContext.java"


# instance fields
.field private final a:Lcom/tencent/mna/b1;

.field private final b:Lcom/tencent/mna/h1;


# direct methods
.method public constructor <init>(Lcom/tencent/mna/b1;Lcom/tencent/mna/h1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tencent/mna/i3;->a:Lcom/tencent/mna/b1;

    .line 3
    iput-object p2, p0, Lcom/tencent/mna/i3;->b:Lcom/tencent/mna/h1;

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/mna/a0;Lcom/tencent/mna/a0;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/i3;->a:Lcom/tencent/mna/b1;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1, p2}, Lcom/tencent/mna/b1;->a(Lcom/tencent/mna/a0;Lcom/tencent/mna/a0;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/tencent/mna/i3;->b:Lcom/tencent/mna/h1;

    if-eqz v0, :cond_1

    .line 8
    invoke-interface {v0, p1, p2}, Lcom/tencent/mna/h1;->compare(Lcom/tencent/mna/a0;Lcom/tencent/mna/a0;)I

    move-result p1

    return p1

    .line 10
    :cond_1
    const-string p1, "SpeedComparatorContext exception: comparator is null"

    invoke-static {p1}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
