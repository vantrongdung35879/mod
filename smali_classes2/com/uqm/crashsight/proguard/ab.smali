.class public final Lcom/uqm/crashsight/proguard/ab;
.super Ljava/lang/Object;
.source "CrashSight"


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[I

.field private static final d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x6

    .line 15
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/uqm/crashsight/proguard/ab;->a:[I

    .line 22
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/uqm/crashsight/proguard/ab;->b:[I

    .line 31
    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/uqm/crashsight/proguard/ab;->c:[I

    .line 35
    new-array v0, v0, [I

    sput-object v0, Lcom/uqm/crashsight/proguard/ab;->d:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x3000
        0x4800
        0x6000
        0x9000
        0xa800
        0xc000
    .end array-data

    :array_1
    .array-data 4
        0x12000
        0x16800
        0x1b000
        0x1f800
        0x24000
        0x2d000
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x64
        0xc8
        0x12c
        0x384
        0x38a
    .end array-data
.end method

.method public static a()I
    .locals 9

    .line 46
    const-string v0, "android"

    const-string v1, "integer"

    const-string v2, "  "

    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    .line 47
    const-string v4, "config_lowMemoryKillerMinFreeKbytesAdjust"

    invoke-virtual {v3, v4, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 48
    const-string v5, "config_lowMemoryKillerMinFreeKbytesAbsolute"

    invoke-virtual {v3, v5, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 50
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 51
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 53
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "MemInfo: id: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 56
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/e;->d()Z

    move-result v0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x5

    const/4 v6, 0x6

    if-ge v4, v6, :cond_2

    .line 59
    sget-object v6, Lcom/uqm/crashsight/proguard/ab;->a:[I

    aget v6, v6, v4

    .line 60
    sget-object v7, Lcom/uqm/crashsight/proguard/ab;->b:[I

    aget v7, v7, v4

    if-eqz v0, :cond_1

    const/4 v8, 0x4

    if-ne v4, v8, :cond_0

    mul-int/lit8 v7, v7, 0x3

    .line 64
    div-int/lit8 v7, v7, 0x2

    goto :goto_1

    :cond_0
    if-ne v4, v5, :cond_1

    mul-int/lit8 v7, v7, 0x7

    .line 66
    div-int/2addr v7, v8

    .line 69
    :cond_1
    :goto_1
    sget-object v5, Lcom/uqm/crashsight/proguard/ab;->d:[I

    int-to-float v8, v6

    sub-int/2addr v7, v6

    int-to-float v6, v7

    add-float/2addr v8, v6

    float-to-int v6, v8

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-ltz v3, :cond_3

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v6, :cond_3

    .line 74
    sget-object v4, Lcom/uqm/crashsight/proguard/ab;->d:[I

    int-to-float v7, v3

    aget v8, v4, v0

    int-to-float v8, v8

    mul-float v7, v7, v8

    aget v8, v4, v5

    int-to-float v8, v8

    div-float/2addr v7, v8

    float-to-int v7, v7

    aput v7, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_5

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v6, :cond_5

    .line 80
    sget-object v3, Lcom/uqm/crashsight/proguard/ab;->d:[I

    aget v4, v3, v0

    int-to-float v7, v1

    int-to-float v8, v4

    mul-float v7, v7, v8

    aget v8, v3, v5

    int-to-float v8, v8

    div-float/2addr v7, v8

    float-to-int v7, v7

    add-int/2addr v4, v7

    aput v4, v3, v0

    if-gez v4, :cond_4

    .line 82
    aput v2, v3, v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 86
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MemInfo MinFree: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/uqm/crashsight/proguard/ab;->d:[I

    aget v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "   "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget v3, v1, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 88
    aget v0, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    const/4 v0, -0x1

    return v0
.end method
