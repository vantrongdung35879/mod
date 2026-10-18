.class public Lcom/tencent/tme/live/q2/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/tme/live/q2/a;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/tme/live/q2/c;Lcom/tencent/tme/live/p2/o;)Lcom/tencent/tme/live/q2/e;
    .locals 3

    iget-object v0, p1, Lcom/tencent/tme/live/q2/c;->c:Ljava/lang/String;

    .line 1
    const-string v1, "IDAT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v0, Lcom/tencent/tme/live/q2/n;

    invoke-direct {v0, p2}, Lcom/tencent/tme/live/q2/n;-><init>(Lcom/tencent/tme/live/p2/o;)V

    goto/16 :goto_0

    :cond_0
    const-string v1, "IHDR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/tencent/tme/live/q2/p;

    invoke-direct {v0, p2}, Lcom/tencent/tme/live/q2/p;-><init>(Lcom/tencent/tme/live/p2/o;)V

    goto/16 :goto_0

    :cond_1
    const-string v1, "PLTE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/tencent/tme/live/q2/u;

    invoke-direct {v0, p2}, Lcom/tencent/tme/live/q2/u;-><init>(Lcom/tencent/tme/live/p2/o;)V

    goto/16 :goto_0

    :cond_2
    const-string v1, "IEND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lcom/tencent/tme/live/q2/o;

    invoke-direct {v0, p2}, Lcom/tencent/tme/live/q2/o;-><init>(Lcom/tencent/tme/live/p2/o;)V

    goto/16 :goto_0

    :cond_3
    const-string v1, "tEXt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Lcom/tencent/tme/live/q2/a0;

    invoke-direct {v0, p2}, Lcom/tencent/tme/live/q2/a0;-><init>(Lcom/tencent/tme/live/p2/o;)V

    goto/16 :goto_0

    :cond_4
    const-string v1, "iTXt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v0, Lcom/tencent/tme/live/q2/q;

    invoke-direct {v0, p2}, Lcom/tencent/tme/live/q2/q;-><init>(Lcom/tencent/tme/live/p2/o;)V

    goto/16 :goto_0

    :cond_5
    const-string v1, "zTXt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v0, Lcom/tencent/tme/live/q2/f0;

    invoke-direct {v0, p2}, Lcom/tencent/tme/live/q2/f0;-><init>(Lcom/tencent/tme/live/p2/o;)V

    goto/16 :goto_0

    :cond_6
    const-string v1, "bKGD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v0, Lcom/tencent/tme/live/q2/g;

    invoke-direct {v0, p2}, Lcom/tencent/tme/live/q2/g;-><init>(Lcom/tencent/tme/live/p2/o;)V

    goto/16 :goto_0

    :cond_7
    const-string v1, "gAMA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v0, Lcom/tencent/tme/live/q2/k;

    invoke-direct {v0, p2}, Lcom/tencent/tme/live/q2/k;-><init>(Lcom/tencent/tme/live/p2/o;)V

    goto/16 :goto_0

    :cond_8
    const-string v1, "pHYs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v0, Lcom/tencent/tme/live/q2/t;

    invoke-direct {v0, p2}, Lcom/tencent/tme/live/q2/t;-><init>(Lcom/tencent/tme/live/p2/o;)V

    goto/16 :goto_0

    :cond_9
    const-string v1, "iCCP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v0, Lcom/tencent/tme/live/q2/m;

    invoke-direct {v0, p2}, Lcom/tencent/tme/live/q2/m;-><init>(Lcom/tencent/tme/live/p2/o;)V

    goto/16 :goto_0

    :cond_a
    const-string v1, "tIME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v0, Lcom/tencent/tme/live/q2/b0;

    invoke-direct {v0, p2}, Lcom/tencent/tme/live/q2/b0;-><init>(Lcom/tencent/tme/live/p2/o;)V

    goto/16 :goto_0

    :cond_b
    const-string v1, "tRNS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v0, Lcom/tencent/tme/live/q2/c0;

    invoke-direct {v0, p2}, Lcom/tencent/tme/live/q2/c0;-><init>(Lcom/tencent/tme/live/p2/o;)V

    goto/16 :goto_0

    :cond_c
    const-string v1, "cHRM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v0, Lcom/tencent/tme/live/q2/h;

    invoke-direct {v0, p2}, Lcom/tencent/tme/live/q2/h;-><init>(Lcom/tencent/tme/live/p2/o;)V

    goto :goto_0

    :cond_d
    const-string v1, "sBIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    new-instance v0, Lcom/tencent/tme/live/q2/v;

    invoke-direct {v0, p2}, Lcom/tencent/tme/live/q2/v;-><init>(Lcom/tencent/tme/live/p2/o;)V

    goto :goto_0

    :cond_e
    const-string v1, "sRGB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    new-instance v0, Lcom/tencent/tme/live/q2/x;

    invoke-direct {v0, p2}, Lcom/tencent/tme/live/q2/x;-><init>(Lcom/tencent/tme/live/p2/o;)V

    goto :goto_0

    :cond_f
    const-string v1, "hIST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    new-instance v0, Lcom/tencent/tme/live/q2/l;

    invoke-direct {v0, p2}, Lcom/tencent/tme/live/q2/l;-><init>(Lcom/tencent/tme/live/p2/o;)V

    goto :goto_0

    :cond_10
    const-string v1, "sPLT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    new-instance v0, Lcom/tencent/tme/live/q2/w;

    invoke-direct {v0, p2}, Lcom/tencent/tme/live/q2/w;-><init>(Lcom/tencent/tme/live/p2/o;)V

    goto :goto_0

    :cond_11
    const-string v1, "fdAT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    new-instance v0, Lcom/tencent/tme/live/q2/j;

    invoke-direct {v0, p2}, Lcom/tencent/tme/live/q2/j;-><init>(Lcom/tencent/tme/live/p2/o;)V

    goto :goto_0

    :cond_12
    const-string v1, "acTL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    new-instance v0, Lcom/tencent/tme/live/q2/f;

    invoke-direct {v0, p2}, Lcom/tencent/tme/live/q2/f;-><init>(Lcom/tencent/tme/live/p2/o;)V

    goto :goto_0

    :cond_13
    const-string v1, "fcTL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Lcom/tencent/tme/live/q2/i;

    invoke-direct {v0, p2}, Lcom/tencent/tme/live/q2/i;-><init>(Lcom/tencent/tme/live/p2/o;)V

    goto :goto_0

    :cond_14
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_16

    .line 2
    iget-object v0, p1, Lcom/tencent/tme/live/q2/c;->c:Ljava/lang/String;

    .line 3
    const-string v1, "oFFs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    new-instance v2, Lcom/tencent/tme/live/q2/s;

    invoke-direct {v2, p2}, Lcom/tencent/tme/live/q2/s;-><init>(Lcom/tencent/tme/live/p2/o;)V

    goto :goto_1

    :cond_15
    const-string v1, "sTER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    new-instance v2, Lcom/tencent/tme/live/q2/y;

    invoke-direct {v2, p2}, Lcom/tencent/tme/live/q2/y;-><init>(Lcom/tencent/tme/live/p2/o;)V

    goto :goto_1

    :cond_16
    move-object v2, v0

    :cond_17
    :goto_1
    if-nez v2, :cond_18

    .line 4
    iget-object v0, p1, Lcom/tencent/tme/live/q2/c;->c:Ljava/lang/String;

    .line 5
    new-instance v2, Lcom/tencent/tme/live/q2/e0;

    invoke-direct {v2, v0, p2}, Lcom/tencent/tme/live/q2/e0;-><init>(Ljava/lang/String;Lcom/tencent/tme/live/p2/o;)V

    .line 6
    :cond_18
    iput-object p1, v2, Lcom/tencent/tme/live/q2/e;->c:Lcom/tencent/tme/live/q2/c;

    .line 7
    iget-object p2, p1, Lcom/tencent/tme/live/q2/c;->d:[B

    if-eqz p2, :cond_19

    invoke-virtual {v2, p1}, Lcom/tencent/tme/live/q2/e;->a(Lcom/tencent/tme/live/q2/c;)V

    :cond_19
    return-object v2
.end method
