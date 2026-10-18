.class Lcom/tencent/mna/x$b;
.super Lcom/tencent/mna/x$c;
.source "ContinuesDelaysInfoFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/x;->a(Lcom/tencent/mna/a0;Lcom/tencent/mna/a0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/tencent/mna/x;


# direct methods
.method constructor <init>(Lcom/tencent/mna/x;Lcom/tencent/mna/a0;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/mna/x$b;->c:Lcom/tencent/mna/x;

    invoke-direct {p0, p2, p3, p4}, Lcom/tencent/mna/x$c;-><init>(Lcom/tencent/mna/a0;J)V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/x$b;->c:Lcom/tencent/mna/x;

    invoke-virtual {v0}, Lcom/tencent/mna/x;->a()I

    move-result v0

    return v0
.end method
