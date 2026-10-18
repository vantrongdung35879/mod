.class public Lcom/tencent/qmsp/sdk/f/h;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v0, 0x15

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tencent/qmsp/sdk/f/h;->a:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x6t
        0x78t
        -0x4at
        0x43t
        0x25t
        0x7bt
        0x63t
        -0xbt
        0x20t
        0x30t
        -0x5dt
        0x41t
        0x3ct
        0x3at
        0x7at
        -0x8t
        0x31t
        0x75t
        -0x5ft
        0x53t
        0x6ft
    .end array-data
.end method

.method public static a([B)Ljava/lang/String;
    .locals 5

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    array-length v1, p0

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    aget-byte v3, p0, v2

    rem-int/lit8 v4, v2, 0x8

    aget-byte v4, v0, v4

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([B)V

    return-object p0

    nop

    :array_0
    .array-data 1
        0x45t
        0x10t
        -0x2dt
        0x20t
        0x4et
        0x5bt
        0x17t
        -0x63t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method
