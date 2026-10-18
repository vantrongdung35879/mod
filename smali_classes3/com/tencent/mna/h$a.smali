.class Lcom/tencent/mna/h$a;
.super Lcom/tencent/mna/x;
.source "AccelerateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/h;->a(Lcom/tencent/mna/j;J)Lcom/tencent/mna/b1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/tencent/mna/j;


# direct methods
.method constructor <init>(JLcom/tencent/mna/j;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/tencent/mna/h$a;->b:Lcom/tencent/mna/j;

    invoke-direct {p0, p1, p2}, Lcom/tencent/mna/x;-><init>(J)V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/h$a;->b:Lcom/tencent/mna/j;

    invoke-virtual {v0}, Lcom/tencent/mna/j;->a()I

    move-result v0

    return v0
.end method

.method protected b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/h$a;->b:Lcom/tencent/mna/j;

    invoke-virtual {v0}, Lcom/tencent/mna/j;->d()I

    move-result v0

    return v0
.end method
