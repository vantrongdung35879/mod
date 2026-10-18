.class public Lcom/tencent/mna/h2;
.super Ljava/lang/Object;
.source "PingUpload.java"


# static fields
.field private static a:Lcom/tencent/mna/u0; = null

.field private static volatile b:I = 0x0

.field private static c:I = -0x2710


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method static synthetic a(I)I
    .locals 0

    .line 3
    sput p0, Lcom/tencent/mna/h2;->c:I

    return p0
.end method

.method static synthetic a()Lcom/tencent/mna/u0;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/h2;->a:Lcom/tencent/mna/u0;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mna/u0;)Lcom/tencent/mna/u0;
    .locals 0

    .line 2
    sput-object p0, Lcom/tencent/mna/h2;->a:Lcom/tencent/mna/u0;

    return-object p0
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 1

    .line 4
    sput p1, Lcom/tencent/mna/h2;->b:I

    .line 5
    new-instance v0, Lcom/tencent/mna/h2$a;

    invoke-direct {v0, p0, p1}, Lcom/tencent/mna/h2$a;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/tencent/mna/a2;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b()I
    .locals 1

    .line 1
    sget v0, Lcom/tencent/mna/h2;->c:I

    return v0
.end method

.method static synthetic b(I)I
    .locals 0

    .line 2
    sput p0, Lcom/tencent/mna/h2;->b:I

    return p0
.end method

.method public static c()V
    .locals 1

    .line 6
    sget v0, Lcom/tencent/mna/h2;->b:I

    if-nez v0, :cond_0

    .line 7
    const-string v0, "PingUpload release failed for port 0"

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    return-void

    .line 10
    :cond_0
    new-instance v0, Lcom/tencent/mna/h2$c;

    invoke-direct {v0}, Lcom/tencent/mna/h2$c;-><init>()V

    invoke-static {v0}, Lcom/tencent/mna/a2;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static c(I)V
    .locals 1

    .line 1
    sget v0, Lcom/tencent/mna/h2;->b:I

    if-nez v0, :cond_0

    .line 2
    const-string p0, "PingUpload upload failed for port 0"

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    new-instance v0, Lcom/tencent/mna/h2$b;

    invoke-direct {v0, p0}, Lcom/tencent/mna/h2$b;-><init>(I)V

    invoke-static {v0}, Lcom/tencent/mna/a2;->d(Ljava/lang/Runnable;)V

    return-void
.end method
