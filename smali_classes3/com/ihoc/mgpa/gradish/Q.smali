.class public Lcom/ihoc/mgpa/gradish/Q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/ihoc/mgpa/gradish/p0;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/ihoc/mgpa/gradish/Q;->b:I

    return-void
.end method

.method public static a(Landroid/content/Context;I)Lcom/ihoc/mgpa/gradish/Q;
    .locals 1

    .line 3
    new-instance v0, Lcom/ihoc/mgpa/gradish/Q;

    invoke-direct {v0}, Lcom/ihoc/mgpa/gradish/Q;-><init>()V

    .line 4
    invoke-direct {v0, p1}, Lcom/ihoc/mgpa/gradish/Q;->b(I)V

    .line 5
    invoke-virtual {v0, p0}, Lcom/ihoc/mgpa/gradish/Q;->a(Landroid/content/Context;)V

    return-object v0
.end method

.method public static a(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ihoc/mgpa/gradish/P0;->c()Z

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private b(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ihoc/mgpa/gradish/Q;->b:I

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 3

    .line 6
    iget v0, p0, Lcom/ihoc/mgpa/gradish/Q;->b:I

    const-string v1, "MTGPA_HapticPlayer"

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    invoke-static {}, Lcom/ihoc/mgpa/gradish/P0;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    const-string/jumbo v0, "this device support standard haptic player!"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iput v2, p0, Lcom/ihoc/mgpa/gradish/Q;->b:I

    .line 9
    new-instance v0, Lcom/ihoc/mgpa/gradish/P0;

    invoke-direct {v0}, Lcom/ihoc/mgpa/gradish/P0;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/Q;->a:Lcom/ihoc/mgpa/gradish/p0;

    goto :goto_0

    .line 11
    :cond_0
    const-string/jumbo v0, "this device don\'t support standard haptic player! start to use android pattern player!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lcom/ihoc/mgpa/gradish/Q;->b:I

    .line 13
    new-instance v0, Lcom/ihoc/mgpa/gradish/o0;

    invoke-direct {v0}, Lcom/ihoc/mgpa/gradish/o0;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/Q;->a:Lcom/ihoc/mgpa/gradish/p0;

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/Q;->a:Lcom/ihoc/mgpa/gradish/p0;

    invoke-virtual {v0, p1}, Lcom/ihoc/mgpa/gradish/p0;->a(Landroid/content/Context;)V

    return-void
.end method

.method public a(Ljava/lang/String;III)V
    .locals 6

    const/16 v5, 0x64

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 16
    invoke-virtual/range {v0 .. v5}, Lcom/ihoc/mgpa/gradish/Q;->a(Ljava/lang/String;IIII)V

    return-void
.end method

.method public a(Ljava/lang/String;IIII)V
    .locals 9

    const-string v0, "MTGPA_HapticPlayer"

    if-nez p1, :cond_0

    .line 17
    const-string p1, "parameter is invalid, he json is null!"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x1

    if-ge p2, v1, :cond_1

    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "parameter is invalid, loop should >= 1! loop: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/16 v1, 0x3e8

    if-gt p3, v1, :cond_8

    if-gez p3, :cond_2

    goto :goto_3

    :cond_2
    const-string v1, " !"

    if-ltz p4, :cond_7

    const/16 v2, 0xff

    if-le p4, v2, :cond_3

    goto :goto_2

    :cond_3
    if-ltz p5, :cond_6

    const/16 v2, 0x64

    if-le p5, v2, :cond_4

    goto :goto_1

    .line 36
    :cond_4
    iget-object v3, p0, Lcom/ihoc/mgpa/gradish/Q;->a:Lcom/ihoc/mgpa/gradish/p0;

    if-eqz v3, :cond_5

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    .line 37
    invoke-virtual/range {v3 .. v8}, Lcom/ihoc/mgpa/gradish/p0;->a(Ljava/lang/String;IIII)V

    goto :goto_0

    .line 39
    :cond_5
    const-string p1, "prepare first, before playing haptic effect!"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    .line 40
    :cond_6
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "parameter is invalid, frequency should in [0, 100], now is "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 41
    :cond_7
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "parameter is invalid, amplitude should in [0, 255], now is "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 42
    :cond_8
    :goto_3
    const-string p1, "parameter is invalid, interval should in [0, 1000]."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/Q;->a:Lcom/ihoc/mgpa/gradish/p0;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/p0;->a()Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/Q;->a:Lcom/ihoc/mgpa/gradish/p0;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/p0;->b()V

    :cond_0
    return-void
.end method
