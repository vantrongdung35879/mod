.class public Lcom/tencent/mna/l0;
.super Ljava/lang/Object;
.source "DualWifiVendorInterceptor.java"

# interfaces
.implements Lcom/tencent/mna/i1;


# instance fields
.field a:Lcom/tencent/mna/x3;

.field b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/tencent/mna/l0;->a:Lcom/tencent/mna/x3;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/tencent/mna/l0;->b:I

    .line 6
    invoke-static {}, Lcom/tencent/mna/d;->x1()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/x3;->a(Ljava/lang/String;)Lcom/tencent/mna/x3;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mna/l0;->a:Lcom/tencent/mna/x3;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/tencent/mna/l0;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 5
    :cond_1
    invoke-static {}, Lcom/tencent/mna/base/utils/e;->i()Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v3, p0, Lcom/tencent/mna/l0;->a:Lcom/tencent/mna/x3;

    invoke-virtual {v3, v0}, Lcom/tencent/mna/x3;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    .line 7
    :cond_2
    iput v1, p0, Lcom/tencent/mna/l0;->b:I

    return v0
.end method
