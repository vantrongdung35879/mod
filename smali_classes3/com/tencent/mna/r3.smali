.class public Lcom/tencent/mna/r3;
.super Ljava/lang/Object;
.source "TosManager.java"


# static fields
.field private static volatile a:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(I)I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/tencent/mna/r3;->a:Z

    invoke-static {p0, v0}, Lcom/tencent/mna/r3;->a(IZ)I

    move-result p0

    return p0
.end method

.method private static a(IZ)I
    .locals 5

    const/16 v0, 0x32

    const/16 v1, 0xb8

    const/4 v2, 0x0

    if-eq p0, v0, :cond_7

    const/16 v0, 0x3c

    const/16 v3, 0xc0

    if-eq p0, v0, :cond_5

    const/16 v0, 0x46

    const/16 v4, 0xe0

    if-eq p0, v0, :cond_3

    const/4 p1, 0x5

    if-eq p0, p1, :cond_2

    const/4 p1, 0x6

    if-eq p0, p1, :cond_1

    const/4 p1, 0x7

    if-eq p0, p1, :cond_0

    return v2

    :cond_0
    return v4

    :cond_1
    return v3

    :cond_2
    return v1

    :cond_3
    if-eqz p1, :cond_4

    const/16 v2, 0xe0

    :cond_4
    return v2

    :cond_5
    if-eqz p1, :cond_6

    const/16 v2, 0xc0

    :cond_6
    return v2

    :cond_7
    if-eqz p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static a()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/tencent/mna/r3;->a:Z

    return-void
.end method

.method public static b(IZ)I
    .locals 1

    const-string/jumbo v0, "turnTos: 0x"

    if-nez p1, :cond_0

    const/4 p0, -0x2

    return p0

    :cond_0
    const/4 p1, 0x7

    if-le p0, p1, :cond_1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/v;->a()Z

    move-result p1

    sput-boolean p1, Lcom/tencent/mna/r3;->a:Z

    .line 2
    sget-boolean p1, Lcom/tencent/mna/r3;->a:Z

    if-nez p1, :cond_1

    const/16 p0, 0xa

    return p0

    :cond_1
    const/4 p1, 0x1

    .line 6
    invoke-static {p0, p1}, Lcom/tencent/mna/r3;->a(IZ)I

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, -0x1

    return p0

    .line 10
    :cond_2
    invoke-static {p0}, Lcom/tencent/mna/base/jni/e;->g(I)V

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "turnTos exception:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    const/4 p0, -0x3

    return p0
.end method
