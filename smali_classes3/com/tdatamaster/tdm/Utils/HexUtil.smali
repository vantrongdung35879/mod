.class public Lcom/tdatamaster/tdm/Utils/HexUtil;
.super Ljava/lang/Object;
.source "HexUtil.java"


# static fields
.field private static final mDigits:[C

.field public static final mEmptyBytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    .line 8
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tdatamaster/tdm/Utils/HexUtil;->mDigits:[C

    const/4 v0, 0x0

    .line 13
    new-array v0, v0, [B

    sput-object v0, Lcom/tdatamaster/tdm/Utils/HexUtil;->mEmptyBytes:[B

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Byte2HexStr(B)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x2

    .line 22
    new-array v0, v0, [C

    .line 23
    sget-object v1, Lcom/tdatamaster/tdm/Utils/HexUtil;->mDigits:[C

    and-int/lit8 v2, p0, 0xf

    aget-char v2, v1, v2

    const/4 v3, 0x1

    aput-char v2, v0, v3

    ushr-int/lit8 p0, p0, 0x4

    int-to-byte p0, p0

    and-int/lit8 p0, p0, 0xf

    .line 25
    aget-char p0, v1, p0

    const/4 v1, 0x0

    aput-char p0, v0, v1

    .line 26
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static Bytes2HexStr([B)Ljava/lang/String;
    .locals 7

    if-eqz p0, :cond_2

    .line 36
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 41
    :cond_0
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 42
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 44
    aget-byte v2, p0, v1

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v4, v3, 0x1

    .line 45
    sget-object v5, Lcom/tdatamaster/tdm/Utils/HexUtil;->mDigits:[C

    and-int/lit8 v6, v2, 0xf

    aget-char v6, v5, v6

    aput-char v6, v0, v4

    ushr-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    and-int/lit8 v2, v2, 0xf

    .line 47
    aget-char v2, v5, v2

    aput-char v2, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static Char2Byte(C)B
    .locals 2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    :goto_0
    int-to-byte p0, p0

    return p0

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    add-int/lit8 p0, p0, -0x57

    goto :goto_0

    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    add-int/lit8 p0, p0, -0x37

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static HexStr2Byte(Ljava/lang/String;)B
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 59
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 61
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lcom/tdatamaster/tdm/Utils/HexUtil;->Char2Byte(C)B

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public static HexStr2Bytes(Ljava/lang/String;)[B
    .locals 5

    if-eqz p0, :cond_2

    .line 96
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 101
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    mul-int/lit8 v3, v2, 0x2

    .line 104
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v3, v3, 0x1

    .line 105
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 106
    invoke-static {v4}, Lcom/tdatamaster/tdm/Utils/HexUtil;->Char2Byte(C)B

    move-result v4

    mul-int/lit8 v4, v4, 0x10

    invoke-static {v3}, Lcom/tdatamaster/tdm/Utils/HexUtil;->Char2Byte(C)B

    move-result v3

    add-int/2addr v4, v3

    int-to-byte v3, v4

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    .line 98
    :cond_2
    :goto_1
    sget-object p0, Lcom/tdatamaster/tdm/Utils/HexUtil;->mEmptyBytes:[B

    return-object p0
.end method
