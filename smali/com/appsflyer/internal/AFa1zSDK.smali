.class public Lcom/appsflyer/internal/AFa1zSDK;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final $$a:[B = null

.field public static final $$b:I = 0x0

.field private static $10:I = 0x0

.field private static $11:I = 0x1

.field private static AFLogger$LogLevel:[B

.field private static final AFVersionDeclaration:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static AppsFlyer2dXConversionCallback:I

.field public static final afDebugLog:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static afErrorLogForExcManagerOnly:Ljava/lang/Object;

.field private static afLogForce:Ljava/lang/Object;

.field private static getLevel:[B

.field private static onInstallConversionFailureNative:I


# direct methods
.method private static $$c(SSI)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x2

    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1zSDK;->$11:I

    xor-int/lit8 v2, v1, 0x67

    and-int/lit8 v3, v1, 0x67

    shl-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1zSDK;->$10:I

    rem-int/2addr v2, v0

    neg-int p0, p0

    xor-int/lit8 v2, p0, 0x77

    and-int/lit8 p0, p0, 0x77

    shl-int/lit8 p0, p0, 0x1

    add-int/2addr v2, p0

    and-int/lit8 p0, p1, -0x46

    or-int/lit8 p1, p1, -0x46

    add-int/2addr p0, p1

    xor-int/lit8 p1, p0, 0x4a

    and-int/lit8 p0, p0, 0x4a

    shl-int/lit8 p0, p0, 0x1

    add-int/2addr p1, p0

    sget-object p0, Lcom/appsflyer/internal/AFa1zSDK;->$$a:[B

    neg-int p2, p2

    xor-int/lit8 v3, p2, 0x24

    and-int/lit8 p2, p2, 0x24

    shl-int/lit8 p2, p2, 0x1

    add-int/2addr v3, p2

    new-array p2, v3, [B

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    if-nez p0, :cond_0

    add-int/lit8 v1, v1, 0x55

    rem-int/lit16 v5, v1, 0x80

    sput v5, Lcom/appsflyer/internal/AFa1zSDK;->$10:I

    rem-int/2addr v1, v0

    add-int/lit8 v5, v5, 0x1

    rem-int/lit16 v1, v5, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1zSDK;->$11:I

    rem-int/2addr v5, v0

    move v5, p1

    move p1, v3

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    int-to-byte v5, v2

    aput-byte v5, p2, v1

    xor-int/lit8 v5, p1, 0x1

    and-int/lit8 p1, p1, 0x1

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr v5, p1

    if-ne v1, v3, :cond_1

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p2, v4}, Ljava/lang/String;-><init>([BI)V

    return-object p0

    :cond_1
    xor-int/lit8 p1, v1, 0x7

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr p1, v1

    and-int/lit8 v1, p1, -0x6

    or-int/lit8 p1, p1, -0x6

    add-int/2addr v1, p1

    aget-byte p1, p0, v5

    :goto_1
    and-int v6, v2, p1

    or-int/2addr p1, v2

    add-int v2, v6, p1

    sget p1, Lcom/appsflyer/internal/AFa1zSDK;->$10:I

    xor-int/lit8 v6, p1, 0x33

    and-int/lit8 p1, p1, 0x33

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr v6, p1

    rem-int/lit16 p1, v6, 0x80

    sput p1, Lcom/appsflyer/internal/AFa1zSDK;->$11:I

    rem-int/2addr v6, v0

    move p1, v5

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 47

    const-class v1, [B

    invoke-static {}, Lcom/appsflyer/internal/AFa1zSDK;->init$0()V

    const v2, -0x6d666d6d

    .line 1000
    sput v2, Lcom/appsflyer/internal/AFa1zSDK;->onInstallConversionFailureNative:I

    const v2, 0x33a20069

    sput v2, Lcom/appsflyer/internal/AFa1zSDK;->AppsFlyer2dXConversionCallback:I

    .line 85
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/appsflyer/internal/AFa1zSDK;->AFVersionDeclaration:Ljava/util/Map;

    .line 86
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/appsflyer/internal/AFa1zSDK;->afDebugLog:Ljava/util/Map;

    .line 92
    :try_start_0
    sget-object v2, Lcom/appsflyer/internal/AFa1zSDK;->$$a:[B

    const/16 v3, 0xb

    aget-byte v4, v2, v3

    int-to-byte v4, v4

    const/16 v5, 0x3a2

    int-to-short v5, v5

    const/16 v6, 0x5d

    aget-byte v7, v2, v6

    int-to-byte v7, v7

    invoke-static {v4, v5, v7}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v4

    .line 96
    sget-object v5, Lcom/appsflyer/internal/AFa1zSDK;->afLogForce:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_11

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v5, :cond_1

    .line 2361
    sget v5, Lcom/appsflyer/internal/AFa1zSDK;->$10:I

    xor-int/lit8 v10, v5, 0x7d

    and-int/lit8 v5, v5, 0x7d

    shl-int/2addr v5, v9

    add-int/2addr v10, v5

    rem-int/lit16 v5, v10, 0x80

    sput v5, Lcom/appsflyer/internal/AFa1zSDK;->$11:I

    rem-int/2addr v10, v7

    if-nez v10, :cond_0

    const/16 v5, 0x72

    :try_start_1
    aget-byte v5, v2, v5

    int-to-byte v5, v5

    const/16 v10, 0x644f

    int-to-short v10, v10

    const/16 v11, 0x320f

    aget-byte v11, v2, v11

    int-to-byte v11, v11

    invoke-static {v5, v10, v11}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 96
    :cond_0
    aget-byte v5, v2, v3

    int-to-byte v5, v5

    const/16 v10, 0x393

    int-to-short v10, v10

    const/16 v11, 0xcd

    aget-byte v11, v2, v11

    int-to-byte v11, v11

    invoke-static {v5, v10, v11}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_11

    goto :goto_0

    :cond_1
    move-object v5, v8

    :goto_0
    const/16 v10, 0x234

    const/16 v11, 0xec

    const/4 v12, 0x0

    .line 1793
    :try_start_2
    aget-byte v13, v2, v11

    int-to-byte v13, v13

    const/16 v14, 0x2a1

    int-to-short v14, v14

    const/16 v15, 0x84

    aget-byte v15, v2, v15

    int-to-byte v15, v15

    invoke-static {v13, v14, v15}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v13

    .line 1794
    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    aget-byte v14, v2, v3

    int-to-byte v14, v14

    shl-int/lit8 v15, v14, 0x1

    int-to-short v15, v15

    const/16 v16, 0x2d

    aget-byte v2, v2, v16

    int-to-byte v2, v2

    invoke-static {v14, v15, v2}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v2

    .line 1795
    invoke-virtual {v13, v2, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v13, v8

    check-cast v13, [Ljava/lang/Object;

    .line 1796
    invoke-virtual {v2, v8, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v2, :cond_2

    goto :goto_1

    :catch_0
    move-object v2, v8

    .line 1807
    :cond_2
    :try_start_3
    sget-object v13, Lcom/appsflyer/internal/AFa1zSDK;->$$a:[B

    aget-byte v14, v13, v11

    int-to-byte v14, v14

    sget v15, Lcom/appsflyer/internal/AFa1zSDK;->$$b:I

    xor-int/lit16 v6, v15, 0x151

    and-int/lit16 v15, v15, 0x151

    or-int/2addr v6, v15

    int-to-short v6, v6

    const/16 v15, 0x52

    aget-byte v15, v13, v15

    int-to-byte v15, v15

    invoke-static {v14, v6, v15}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v6

    .line 1808
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aget-byte v14, v13, v10

    int-to-byte v14, v14

    xor-int/lit16 v15, v14, 0x309

    and-int/lit16 v3, v14, 0x309

    or-int/2addr v3, v15

    int-to-short v3, v3

    aget-byte v13, v13, v12

    int-to-byte v13, v13

    invoke-static {v14, v3, v13}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v3

    .line 1809
    invoke-virtual {v6, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object v6, v8

    check-cast v6, [Ljava/lang/Object;

    .line 1810
    invoke-virtual {v3, v8, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    nop

    :goto_1
    const/16 v3, 0x231

    if-eqz v2, :cond_3

    .line 113
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    sget-object v13, Lcom/appsflyer/internal/AFa1zSDK;->$$a:[B

    aget-byte v14, v13, v10

    int-to-byte v14, v14

    xor-int/lit16 v15, v14, 0xa9

    and-int/lit16 v11, v14, 0xa9

    or-int/2addr v11, v15

    int-to-short v11, v11

    aget-byte v13, v13, v3

    neg-int v13, v13

    int-to-byte v13, v13

    invoke-static {v14, v11, v13}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v11

    move-object v13, v8

    check-cast v13, [Ljava/lang/Class;

    .line 114
    invoke-virtual {v6, v11, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    move-object v11, v8

    check-cast v11, [Ljava/lang/Object;

    .line 115
    invoke-virtual {v6, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    nop

    :cond_3
    move-object v6, v8

    :goto_2
    if-eqz v2, :cond_4

    .line 125
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    sget-object v13, Lcom/appsflyer/internal/AFa1zSDK;->$$a:[B

    aget-byte v14, v13, v10

    int-to-byte v14, v14

    xor-int/lit16 v15, v14, 0x106

    and-int/lit16 v12, v14, 0x106

    or-int/2addr v12, v15

    int-to-short v12, v12

    const/4 v15, 0x5

    aget-byte v13, v13, v15

    int-to-byte v13, v13

    invoke-static {v14, v12, v13}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v12

    move-object v13, v8

    check-cast v13, [Ljava/lang/Class;

    .line 126
    invoke-virtual {v11, v12, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    move-object v12, v8

    check-cast v12, [Ljava/lang/Object;

    .line 127
    invoke-virtual {v11, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    nop

    :cond_4
    move-object v11, v8

    :goto_3
    if-eqz v2, :cond_5

    .line 137
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Lcom/appsflyer/internal/AFa1zSDK;->$$a:[B

    aget-byte v14, v13, v10

    int-to-byte v14, v14

    const/16 v15, 0xcd

    int-to-short v15, v15

    aget-byte v13, v13, v3

    neg-int v13, v13

    int-to-byte v13, v13

    invoke-static {v14, v15, v13}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v13

    move-object v14, v8

    check-cast v14, [Ljava/lang/Class;

    .line 138
    invoke-virtual {v12, v13, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    move-object v13, v8

    check-cast v13, [Ljava/lang/Object;

    .line 139
    invoke-virtual {v12, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    :catch_4
    nop

    :cond_5
    move-object v2, v8

    :goto_4
    const/16 v12, 0x76

    const/16 v13, 0x10

    if-eqz v6, :cond_6

    goto :goto_5

    :cond_6
    if-nez v5, :cond_7

    move-object v6, v8

    goto :goto_5

    .line 147
    :cond_7
    :try_start_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lcom/appsflyer/internal/AFa1zSDK;->$$a:[B

    const/16 v15, 0x1d5

    aget-byte v15, v14, v15

    int-to-byte v15, v15

    const/16 v8, 0x20e

    int-to-short v8, v8

    aget-byte v10, v14, v3

    neg-int v10, v10

    int-to-byte v10, v10

    invoke-static {v15, v8, v10}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_11

    .line 2361
    sget v6, Lcom/appsflyer/internal/AFa1zSDK;->$11:I

    add-int/lit8 v6, v6, 0x59

    rem-int/lit16 v8, v6, 0x80

    sput v8, Lcom/appsflyer/internal/AFa1zSDK;->$10:I

    rem-int/2addr v6, v7

    .line 282
    rem-int v6, v7, v7

    .line 147
    :try_start_8
    new-array v6, v9, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v6, v8

    aget-byte v5, v14, v13

    int-to-byte v5, v5

    xor-int/lit16 v8, v5, 0x320

    and-int/lit16 v10, v5, 0x320

    or-int/2addr v8, v10

    int-to-short v8, v8

    aget-byte v10, v14, v12

    int-to-byte v10, v10

    invoke-static {v5, v8, v10}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    new-array v8, v9, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v10, v8, v14

    invoke-virtual {v5, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_60

    :goto_5
    if-eqz v2, :cond_8

    goto/16 :goto_6

    .line 151
    :cond_8
    :try_start_9
    sget-object v2, Lcom/appsflyer/internal/AFa1zSDK;->$$a:[B

    aget-byte v5, v2, v13

    int-to-byte v5, v5

    sget v8, Lcom/appsflyer/internal/AFa1zSDK;->$$b:I

    xor-int/lit16 v10, v8, 0x258

    and-int/lit16 v8, v8, 0x258

    or-int/2addr v8, v10

    int-to-short v8, v8

    const/16 v10, 0xec

    aget-byte v14, v2, v10

    int-to-byte v10, v14

    invoke-static {v5, v8, v10}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v5
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_11

    :try_start_a
    new-array v8, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v8, v10

    aget-byte v5, v2, v13

    int-to-byte v5, v5

    aget-byte v10, v2, v3

    neg-int v10, v10

    int-to-short v10, v10

    const/16 v14, 0xb

    aget-byte v15, v2, v14

    int-to-byte v14, v15

    invoke-static {v5, v10, v14}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v10, 0x234

    aget-byte v14, v2, v10

    int-to-byte v10, v14

    const/16 v14, 0x289

    int-to-short v14, v14

    aget-byte v15, v2, v3

    neg-int v15, v15

    int-to-byte v15, v15

    invoke-static {v10, v14, v15}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v10

    new-array v14, v9, [Ljava/lang/Class;

    const-class v15, Ljava/lang/String;

    const/16 v18, 0x0

    aput-object v15, v14, v18

    invoke-virtual {v5, v10, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v10, 0x0

    invoke-virtual {v5, v10, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5f

    .line 2361
    sget v8, Lcom/appsflyer/internal/AFa1zSDK;->$10:I

    xor-int/lit8 v10, v8, 0xf

    and-int/lit8 v8, v8, 0xf

    shl-int/2addr v8, v9

    add-int/2addr v10, v8

    rem-int/lit16 v8, v10, 0x80

    sput v8, Lcom/appsflyer/internal/AFa1zSDK;->$11:I

    rem-int/2addr v10, v7

    .line 151
    :try_start_b
    new-array v8, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v8, v10

    aget-byte v5, v2, v13

    int-to-byte v5, v5

    or-int/lit16 v10, v5, 0x320

    int-to-short v10, v10

    aget-byte v2, v2, v12

    int-to-byte v2, v2

    invoke-static {v5, v10, v2}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v5, v9, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v10, v5, v14

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5e

    :goto_6
    if-nez v11, :cond_a

    if-eqz v6, :cond_a

    .line 159
    :try_start_c
    sget-object v5, Lcom/appsflyer/internal/AFa1zSDK;->$$a:[B

    const/16 v8, 0xb

    aget-byte v10, v5, v8

    int-to-byte v8, v10

    sget v10, Lcom/appsflyer/internal/AFa1zSDK;->$$b:I

    xor-int/lit16 v11, v10, 0xca

    and-int/lit16 v10, v10, 0xca

    or-int/2addr v10, v11

    int-to-short v10, v10

    const/16 v11, 0x1db

    aget-byte v11, v5, v11

    int-to-byte v11, v11

    invoke-static {v8, v10, v11}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v8
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_11

    :try_start_d
    new-array v10, v7, [Ljava/lang/Object;

    aput-object v8, v10, v9

    const/4 v8, 0x0

    aput-object v6, v10, v8

    aget-byte v8, v5, v13

    int-to-byte v8, v8

    xor-int/lit16 v11, v8, 0x320

    and-int/lit16 v14, v8, 0x320

    or-int/2addr v11, v14

    int-to-short v11, v11

    aget-byte v14, v5, v12

    int-to-byte v14, v14

    invoke-static {v8, v11, v14}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    aget-byte v11, v5, v13

    int-to-byte v11, v11

    xor-int/lit16 v14, v11, 0x320

    and-int/lit16 v15, v11, 0x320

    or-int/2addr v14, v15

    int-to-short v14, v14

    aget-byte v5, v5, v12

    int-to-byte v5, v5

    invoke-static {v11, v14, v5}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    new-array v11, v7, [Ljava/lang/Class;

    const/4 v14, 0x0

    aput-object v5, v11, v14

    const-class v5, Ljava/lang/String;

    aput-object v5, v11, v9

    invoke-virtual {v8, v11}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_e
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_9

    throw v2

    :cond_9
    throw v1

    .line 162
    :cond_a
    :goto_7
    sget-object v5, Lcom/appsflyer/internal/AFa1zSDK;->$$a:[B

    aget-byte v8, v5, v13

    int-to-byte v8, v8

    or-int/lit16 v10, v8, 0x320

    int-to-short v10, v10

    aget-byte v14, v5, v12

    int-to-byte v14, v14

    invoke-static {v8, v10, v14}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/4 v10, 0x7

    invoke-static {v8, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v14, 0x0

    aput-object v10, v8, v14

    aput-object v11, v8, v9

    aput-object v6, v8, v7

    const/4 v10, 0x3

    aput-object v2, v8, v10

    const/4 v14, 0x4

    aput-object v11, v8, v14

    const/4 v11, 0x5

    aput-object v6, v8, v11

    const/4 v6, 0x6

    aput-object v2, v8, v6

    const/4 v2, 0x7

    .line 196
    new-array v2, v2, [Z

    fill-array-data v2, :array_0

    const/4 v6, 0x7

    .line 200
    new-array v6, v6, [Z

    fill-array-data v6, :array_1

    const/4 v11, 0x7

    .line 204
    new-array v15, v11, [Z

    const/16 v18, 0x0

    aput-boolean v18, v15, v18

    aput-boolean v18, v15, v9

    aput-boolean v9, v15, v7

    aput-boolean v9, v15, v10

    aput-boolean v18, v15, v14

    const/16 v19, 0x5

    aput-boolean v9, v15, v19

    const/16 v19, 0x6

    aput-boolean v9, v15, v19
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_11

    const/16 v11, 0x1d

    const/16 v17, 0xec

    .line 213
    :try_start_f
    aget-byte v3, v5, v17

    int-to-byte v3, v3

    const/16 v20, 0x141

    aget-byte v10, v5, v20

    neg-int v10, v10

    int-to-short v10, v10

    aget-byte v12, v5, v11

    int-to-byte v12, v12

    invoke-static {v3, v10, v12}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 214
    sget v10, Lcom/appsflyer/internal/AFa1zSDK;->$$b:I

    int-to-byte v10, v10

    const/16 v12, 0x221

    int-to-short v12, v12

    const/16 v21, 0x1ba

    aget-byte v5, v5, v21

    int-to-byte v5, v5

    invoke-static {v10, v12, v5}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3
    :try_end_f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_f .. :try_end_f} :catch_6
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_11

    const/16 v5, 0x22

    if-lt v3, v5, :cond_b

    const/4 v5, 0x1

    goto :goto_8

    :cond_b
    const/4 v5, 0x0

    :goto_8
    if-ne v3, v11, :cond_c

    goto :goto_9

    :cond_c
    const/16 v10, 0x1a

    if-lt v3, v10, :cond_d

    const/4 v10, 0x0

    const/16 v18, 0x1

    goto :goto_a

    :cond_d
    :goto_9
    const/4 v10, 0x0

    const/16 v18, 0x0

    .line 221
    :goto_a
    :try_start_10
    aput-boolean v18, v15, v10

    const/16 v10, 0x15

    if-lt v3, v10, :cond_e

    const/4 v10, 0x1

    goto :goto_b

    :cond_e
    const/4 v10, 0x0

    .line 224
    :goto_b
    aput-boolean v10, v15, v9

    const/16 v10, 0x15

    if-lt v3, v10, :cond_f

    const/4 v3, 0x1

    goto :goto_c

    :cond_f
    const/4 v3, 0x0

    .line 225
    :goto_c
    aput-boolean v3, v15, v14
    :try_end_10
    .catch Ljava/lang/ClassNotFoundException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_11

    .line 282
    rem-int v3, v7, v7

    goto :goto_d

    :catch_5
    nop

    goto :goto_d

    :catch_6
    nop

    const/4 v5, 0x0

    :goto_d
    const/4 v3, 0x0

    const/4 v10, 0x0

    :goto_e
    if-nez v3, :cond_64

    const/16 v12, 0x9

    if-ge v10, v12, :cond_64

    .line 2361
    sget v12, Lcom/appsflyer/internal/AFa1zSDK;->$11:I

    and-int/lit8 v21, v12, 0x5d

    const/16 v16, 0x5d

    or-int/lit8 v12, v12, 0x5d

    add-int v12, v21, v12

    rem-int/lit16 v14, v12, 0x80

    sput v14, Lcom/appsflyer/internal/AFa1zSDK;->$10:I

    rem-int/2addr v12, v7

    .line 238
    :try_start_11
    aget-boolean v12, v15, v10
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_11

    if-eqz v12, :cond_63

    or-int/lit8 v12, v14, 0x79

    shl-int/2addr v12, v9

    xor-int/lit8 v14, v14, 0x79

    sub-int/2addr v12, v14

    .line 248
    rem-int/lit16 v14, v12, 0x80

    sput v14, Lcom/appsflyer/internal/AFa1zSDK;->$11:I

    rem-int/2addr v12, v7

    .line 242
    :try_start_12
    aget-boolean v14, v2, v10

    aget-object v11, v8, v10

    aget-boolean v23, v6, v10
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5c

    const/16 v24, 0x10a

    if-eqz v14, :cond_13

    if-eqz v11, :cond_11

    .line 2317
    :try_start_13
    sget-object v25, Lcom/appsflyer/internal/AFa1zSDK;->$$a:[B

    aget-byte v12, v25, v13

    int-to-byte v12, v12

    xor-int/lit16 v13, v12, 0x320

    and-int/lit16 v7, v12, 0x320

    or-int/2addr v7, v13

    int-to-short v7, v7

    const/16 v13, 0x76

    aget-byte v9, v25, v13

    int-to-byte v9, v9

    invoke-static {v12, v7, v9}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/16 v9, 0xb

    aget-byte v12, v25, v9

    int-to-byte v9, v12

    xor-int/lit16 v12, v9, 0x2c3

    and-int/lit16 v13, v9, 0x2c3

    or-int/2addr v12, v13

    int-to-short v12, v12

    const/16 v13, 0x36c

    aget-byte v13, v25, v13

    int-to-byte v13, v13

    invoke-static {v9, v12, v13}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x0

    invoke-virtual {v7, v9, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    if-eqz v7, :cond_11

    goto/16 :goto_f

    :catchall_1
    move-exception v0

    move-object v7, v0

    :try_start_14
    invoke-virtual {v7}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    if-eqz v9, :cond_10

    throw v9

    :cond_10
    throw v7

    .line 2321
    :cond_11
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/appsflyer/internal/AFa1zSDK;->$$a:[B

    const/16 v12, 0x60

    aget-byte v12, v9, v12

    int-to-byte v12, v12

    sget v13, Lcom/appsflyer/internal/AFa1zSDK;->$$b:I

    xor-int/lit16 v14, v13, 0x119

    and-int/lit16 v13, v13, 0x119

    or-int/2addr v13, v14

    int-to-short v13, v13

    aget-byte v14, v9, v24

    int-to-byte v14, v14

    invoke-static {v12, v13, v14}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v11, 0x3

    aget-byte v12, v9, v11

    int-to-byte v11, v12

    const/16 v12, 0xda

    int-to-short v12, v12

    const/16 v13, 0xa0

    aget-byte v13, v9, v13

    int-to-byte v13, v13

    invoke-static {v11, v12, v13}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5c

    .line 2361
    sget v11, Lcom/appsflyer/internal/AFa1zSDK;->$11:I

    or-int/lit8 v12, v11, 0x5b

    const/4 v13, 0x1

    shl-int/2addr v12, v13

    xor-int/lit8 v11, v11, 0x5b

    sub-int/2addr v12, v11

    rem-int/lit16 v11, v12, 0x80

    sput v11, Lcom/appsflyer/internal/AFa1zSDK;->$10:I

    const/4 v11, 0x2

    rem-int/2addr v12, v11

    .line 2321
    :try_start_15
    new-array v11, v13, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v7, v11, v12

    const/16 v7, 0x10

    aget-byte v12, v9, v7

    int-to-byte v7, v12

    const/16 v12, 0x2de

    int-to-short v12, v12

    const/16 v13, 0xb3

    aget-byte v9, v9, v13

    int-to-byte v9, v9

    invoke-static {v7, v12, v9}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v9, 0x1

    new-array v12, v9, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v9, v12, v13

    invoke-virtual {v7, v12}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Throwable;

    throw v7
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    :catchall_2
    move-exception v0

    move-object v7, v0

    :try_start_16
    invoke-virtual {v7}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    if-eqz v9, :cond_12

    throw v9

    :cond_12
    throw v7
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5c

    :cond_13
    :goto_f
    if-eqz v14, :cond_27

    .line 2336
    :try_start_17
    new-instance v9, Ljava/util/Random;

    invoke-direct {v9}, Ljava/util/Random;-><init>()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_13

    .line 2337
    :try_start_18
    sget-object v12, Lcom/appsflyer/internal/AFa1zSDK;->$$a:[B

    const/16 v13, 0x10

    aget-byte v7, v12, v13
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_11

    int-to-byte v7, v7

    move-object/from16 v29, v2

    const/16 v13, 0x231

    :try_start_19
    aget-byte v2, v12, v13
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_10

    neg-int v2, v2

    int-to-short v2, v2

    move/from16 v30, v3

    const/16 v13, 0xb

    :try_start_1a
    aget-byte v3, v12, v13

    int-to-byte v3, v3

    invoke-static {v7, v2, v3}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aget-byte v3, v12, v13

    int-to-byte v3, v3

    xor-int/lit16 v7, v3, 0x348

    and-int/lit16 v13, v3, 0x348

    or-int/2addr v7, v13

    int-to-short v7, v7

    const/16 v13, 0x3a

    aget-byte v12, v12, v13

    int-to-byte v12, v12

    invoke-static {v3, v7, v12}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v7, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_f

    const-wide/32 v12, -0x6061b568

    xor-long/2addr v2, v12

    :try_start_1b
    invoke-virtual {v9, v2, v3}, Ljava/util/Random;->setSeed(J)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_e

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    :goto_10
    if-nez v2, :cond_25

    .line 2361
    sget v13, Lcom/appsflyer/internal/AFa1zSDK;->$11:I

    xor-int/lit8 v31, v13, 0x3b

    and-int/lit8 v32, v13, 0x3b

    const/16 v28, 0x1

    shl-int/lit8 v32, v32, 0x1

    move-object/from16 v33, v2

    add-int v2, v31, v32

    move-object/from16 v31, v4

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/appsflyer/internal/AFa1zSDK;->$10:I

    const/4 v4, 0x2

    rem-int/2addr v2, v4

    if-nez v3, :cond_14

    add-int/lit8 v13, v13, 0x4d

    .line 248
    rem-int/lit16 v2, v13, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1zSDK;->$10:I

    rem-int/2addr v13, v4

    const/4 v2, 0x6

    goto :goto_11

    :cond_14
    if-nez v7, :cond_15

    const/4 v2, 0x5

    goto :goto_11

    :cond_15
    if-nez v12, :cond_16

    const/4 v2, 0x4

    goto :goto_11

    :cond_16
    const/4 v2, 0x3

    .line 2355
    :goto_11
    :try_start_1c
    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v13, v2, 0x1

    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v13, 0x2e

    .line 2357
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_d

    const/4 v13, 0x0

    :goto_12
    if-ge v13, v2, :cond_1a

    .line 282
    sget v32, Lcom/appsflyer/internal/AFa1zSDK;->$11:I

    move/from16 v34, v2

    add-int/lit8 v2, v32, 0x37

    move-object/from16 v32, v6

    rem-int/lit16 v6, v2, 0x80

    sput v6, Lcom/appsflyer/internal/AFa1zSDK;->$10:I

    const/4 v6, 0x2

    rem-int/2addr v2, v6

    if-eqz v2, :cond_17

    const/16 v2, 0x4a

    const/4 v6, 0x0

    .line 2361
    :try_start_1d
    div-int/2addr v2, v6

    if-eqz v23, :cond_19

    goto :goto_13

    :catchall_3
    move-exception v0

    move-object v3, v0

    move/from16 v42, v5

    move-object/from16 v34, v8

    goto/16 :goto_1f

    :cond_17
    if-eqz v23, :cond_19

    :goto_13
    const/16 v2, 0x1a

    .line 2363
    invoke-virtual {v9, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 2364
    invoke-virtual {v9}, Ljava/util/Random;->nextBoolean()Z

    move-result v6
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_3

    if-eqz v6, :cond_18

    neg-int v2, v2

    neg-int v2, v2

    or-int/lit8 v6, v2, 0x41

    const/16 v28, 0x1

    shl-int/lit8 v6, v6, 0x1

    xor-int/lit8 v2, v2, 0x41

    sub-int/2addr v6, v2

    const/4 v2, 0x2

    .line 282
    rem-int v27, v2, v2

    goto :goto_14

    :cond_18
    not-int v2, v2

    rsub-int/lit8 v6, v2, 0x5f

    :goto_14
    int-to-char v2, v6

    .line 2369
    :try_start_1e
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_15

    :cond_19
    const/16 v2, 0xc

    .line 2373
    invoke-virtual {v9, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    not-int v2, v2

    rsub-int v2, v2, 0x1fff

    int-to-char v2, v2

    .line 2374
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3

    :goto_15
    xor-int/lit8 v2, v13, -0x10

    and-int/lit8 v6, v13, -0x10

    const/4 v13, 0x1

    shl-int/2addr v6, v13

    add-int/2addr v2, v6

    xor-int/lit8 v6, v2, 0x11

    and-int/lit8 v2, v2, 0x11

    shl-int/2addr v2, v13

    add-int v13, v6, v2

    move-object/from16 v6, v32

    move/from16 v2, v34

    goto :goto_12

    :cond_1a
    move-object/from16 v32, v6

    .line 2378
    :try_start_1f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_c

    if-nez v3, :cond_1c

    .line 2361
    sget v3, Lcom/appsflyer/internal/AFa1zSDK;->$10:I

    or-int/lit8 v4, v3, 0x57

    const/4 v6, 0x1

    shl-int/2addr v4, v6

    xor-int/lit8 v3, v3, 0x57

    sub-int/2addr v4, v3

    rem-int/lit16 v3, v4, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1zSDK;->$11:I

    const/4 v3, 0x2

    rem-int/2addr v4, v3

    .line 2382
    :try_start_20
    new-array v4, v3, [Ljava/lang/Object;

    aput-object v2, v4, v6

    const/4 v2, 0x0

    aput-object v11, v4, v2

    sget-object v2, Lcom/appsflyer/internal/AFa1zSDK;->$$a:[B

    const/16 v3, 0x10

    aget-byte v6, v2, v3
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_5

    int-to-byte v3, v6

    xor-int/lit16 v6, v3, 0x320

    and-int/lit16 v13, v3, 0x320

    or-int/2addr v6, v13

    int-to-short v6, v6

    move-object/from16 v34, v8

    const/16 v13, 0x76

    :try_start_21
    aget-byte v8, v2, v13

    int-to-byte v8, v8

    invoke-static {v3, v6, v8}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/16 v6, 0x10

    aget-byte v8, v2, v6

    int-to-byte v6, v8

    or-int/lit16 v8, v6, 0x320

    int-to-short v8, v8

    const/16 v13, 0x76

    aget-byte v2, v2, v13

    int-to-byte v2, v2

    invoke-static {v6, v8, v2}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v6, 0x2

    new-array v8, v6, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v2, v8, v6

    const-class v2, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v2, v8, v6

    invoke-virtual {v3, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_4

    move-object v3, v2

    :goto_16
    move-object/from16 v37, v9

    move-object/from16 v2, v33

    goto/16 :goto_18

    :catchall_4
    move-exception v0

    goto :goto_17

    :catchall_5
    move-exception v0

    move-object/from16 v34, v8

    :goto_17
    move-object v2, v0

    :try_start_22
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_1b

    throw v3

    :cond_1b
    throw v2
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_12

    :cond_1c
    move-object/from16 v34, v8

    if-nez v7, :cond_1e

    const/4 v4, 0x2

    .line 2386
    :try_start_23
    new-array v6, v4, [Ljava/lang/Object;

    const/4 v4, 0x1

    aput-object v2, v6, v4

    const/4 v2, 0x0

    aput-object v11, v6, v2

    sget-object v2, Lcom/appsflyer/internal/AFa1zSDK;->$$a:[B

    const/16 v4, 0x10

    aget-byte v7, v2, v4

    int-to-byte v4, v7

    xor-int/lit16 v7, v4, 0x320

    and-int/lit16 v8, v4, 0x320

    or-int/2addr v7, v8

    int-to-short v7, v7

    const/16 v8, 0x76

    aget-byte v13, v2, v8

    int-to-byte v8, v13

    invoke-static {v4, v7, v8}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v7, 0x10

    aget-byte v8, v2, v7

    int-to-byte v7, v8

    xor-int/lit16 v8, v7, 0x320

    and-int/lit16 v13, v7, 0x320

    or-int/2addr v8, v13

    int-to-short v8, v8

    const/16 v13, 0x76

    aget-byte v2, v2, v13

    int-to-byte v2, v2

    invoke-static {v7, v8, v2}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v2, v8, v7

    const-class v2, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v2, v8, v7

    invoke-virtual {v4, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_6

    move-object v7, v2

    goto :goto_16

    :catchall_6
    move-exception v0

    move-object v2, v0

    :try_start_24
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_1d

    throw v3

    :cond_1d
    throw v2
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_12

    :cond_1e
    if-nez v12, :cond_20

    const/4 v4, 0x2

    .line 2390
    :try_start_25
    new-array v6, v4, [Ljava/lang/Object;

    const/4 v4, 0x1

    aput-object v2, v6, v4

    const/4 v2, 0x0

    aput-object v11, v6, v2

    sget-object v2, Lcom/appsflyer/internal/AFa1zSDK;->$$a:[B

    const/16 v4, 0x10

    aget-byte v8, v2, v4

    int-to-byte v4, v8

    xor-int/lit16 v8, v4, 0x320

    and-int/lit16 v12, v4, 0x320

    or-int/2addr v8, v12

    int-to-short v8, v8

    const/16 v12, 0x76

    aget-byte v13, v2, v12

    int-to-byte v12, v13

    invoke-static {v4, v8, v12}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v8, 0x10

    aget-byte v12, v2, v8

    int-to-byte v8, v12

    xor-int/lit16 v12, v8, 0x320

    and-int/lit16 v13, v8, 0x320

    or-int/2addr v12, v13

    int-to-short v12, v12

    const/16 v13, 0x76

    aget-byte v2, v2, v13

    int-to-byte v2, v2

    invoke-static {v8, v12, v2}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v8, 0x2

    new-array v12, v8, [Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v2, v12, v8

    const-class v2, Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v2, v12, v8

    invoke-virtual {v4, v12}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_7

    move-object v12, v2

    goto/16 :goto_16

    :catchall_7
    move-exception v0

    move-object v2, v0

    :try_start_26
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_1f

    throw v3

    :cond_1f
    throw v2
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_12

    :cond_20
    const/4 v4, 0x2

    .line 2394
    :try_start_27
    new-array v6, v4, [Ljava/lang/Object;

    const/4 v4, 0x1

    aput-object v2, v6, v4

    const/4 v2, 0x0

    aput-object v11, v6, v2

    sget-object v2, Lcom/appsflyer/internal/AFa1zSDK;->$$a:[B

    const/16 v4, 0x10

    aget-byte v8, v2, v4

    int-to-byte v4, v8

    xor-int/lit16 v8, v4, 0x320

    and-int/lit16 v13, v4, 0x320

    or-int/2addr v8, v13

    int-to-short v8, v8

    move-object/from16 v35, v3

    const/16 v13, 0x76

    aget-byte v3, v2, v13

    int-to-byte v3, v3

    invoke-static {v4, v8, v3}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/16 v4, 0x10

    aget-byte v8, v2, v4

    int-to-byte v4, v8

    xor-int/lit16 v8, v4, 0x320

    and-int/lit16 v13, v4, 0x320

    or-int/2addr v8, v13

    int-to-short v8, v8

    move-object/from16 v36, v7

    const/16 v13, 0x76

    aget-byte v7, v2, v13

    int-to-byte v7, v7

    invoke-static {v4, v8, v7}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v4, v8, v7

    const-class v4, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v4, v8, v7

    invoke-virtual {v3, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_b

    .line 2412
    sget v4, Lcom/appsflyer/internal/AFa1zSDK;->$10:I

    or-int/lit8 v6, v4, 0x71

    shl-int/2addr v6, v7

    xor-int/lit8 v4, v4, 0x71

    sub-int/2addr v6, v4

    rem-int/lit16 v4, v6, 0x80

    sput v4, Lcom/appsflyer/internal/AFa1zSDK;->$11:I

    const/4 v4, 0x2

    rem-int/2addr v6, v4

    .line 2399
    :try_start_28
    new-array v4, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v4, v6

    const/16 v6, 0x10

    aget-byte v7, v2, v6

    int-to-byte v6, v7

    const/16 v7, 0x2c0

    int-to-short v7, v7

    const/16 v8, 0x1d

    aget-byte v13, v2, v8

    int-to-byte v8, v13

    invoke-static {v6, v7, v8}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/16 v8, 0x10

    aget-byte v13, v2, v8

    int-to-byte v8, v13

    or-int/lit16 v13, v8, 0x320

    int-to-short v13, v13

    move-object/from16 v37, v9

    const/16 v20, 0x76

    aget-byte v9, v2, v20

    int-to-byte v9, v9

    invoke-static {v8, v13, v9}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/4 v9, 0x1

    new-array v13, v9, [Ljava/lang/Class;

    const/4 v9, 0x0

    aput-object v8, v13, v9

    invoke-virtual {v6, v13}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_9

    const/16 v6, 0x10

    :try_start_29
    aget-byte v8, v2, v6

    int-to-byte v6, v8

    const/16 v8, 0x1d

    aget-byte v9, v2, v8

    int-to-byte v8, v9

    invoke-static {v6, v7, v8}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/16 v7, 0xb

    aget-byte v8, v2, v7

    int-to-byte v7, v8

    or-int/lit16 v8, v7, 0x22b

    int-to-short v8, v8

    aget-byte v2, v2, v24

    int-to-byte v2, v2

    invoke-static {v7, v8, v2}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_8

    move-object v2, v3

    move-object/from16 v3, v35

    move-object/from16 v7, v36

    :goto_18
    move-object/from16 v4, v31

    move-object/from16 v6, v32

    move-object/from16 v8, v34

    move-object/from16 v9, v37

    goto/16 :goto_10

    :catchall_8
    move-exception v0

    move-object v2, v0

    :try_start_2a
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_21

    throw v4

    :cond_21
    throw v2

    :catchall_9
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_22

    throw v4

    :cond_22
    throw v2
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_7
    .catchall {:try_start_2a .. :try_end_2a} :catchall_12

    :catch_7
    move-exception v0

    move-object v2, v0

    .line 2403
    :try_start_2b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/appsflyer/internal/AFa1zSDK;->$$a:[B

    const/16 v7, 0x60

    aget-byte v7, v6, v7

    int-to-byte v7, v7

    const/16 v8, 0x338

    int-to-short v8, v8

    aget-byte v9, v6, v24

    int-to-byte v9, v9

    invoke-static {v7, v8, v9}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    aget-byte v7, v6, v3

    int-to-byte v3, v7

    const/16 v7, 0xda

    int-to-short v7, v7

    const/16 v8, 0xa0

    aget-byte v8, v6, v8

    int-to-byte v8, v8

    invoke-static {v3, v7, v8}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_12

    const/4 v4, 0x2

    :try_start_2c
    new-array v7, v4, [Ljava/lang/Object;

    const/4 v4, 0x1

    aput-object v2, v7, v4

    const/4 v2, 0x0

    aput-object v3, v7, v2

    const/16 v2, 0x10

    aget-byte v3, v6, v2

    int-to-byte v2, v3

    const/16 v3, 0x2de

    int-to-short v3, v3

    const/16 v4, 0xb3

    aget-byte v6, v6, v4

    int-to-byte v4, v6

    invoke-static {v2, v3, v4}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v4, v6

    const-class v3, Ljava/lang/Throwable;

    const/4 v6, 0x1

    aput-object v3, v4, v6

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_a

    :catchall_a
    move-exception v0

    move-object v2, v0

    :try_start_2d
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_23

    throw v3

    :cond_23
    throw v2

    :catchall_b
    move-exception v0

    move-object v2, v0

    .line 2394
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_24

    throw v3

    :cond_24
    throw v2

    :catchall_c
    move-exception v0

    goto :goto_1d

    :catchall_d
    move-exception v0

    goto :goto_1c

    :cond_25
    move-object/from16 v33, v2

    move-object/from16 v35, v3

    move-object/from16 v31, v4

    move-object/from16 v32, v6

    move-object/from16 v36, v7

    move-object/from16 v34, v8

    goto :goto_23

    :catchall_e
    move-exception v0

    goto :goto_1b

    :catchall_f
    move-exception v0

    goto :goto_1a

    :catchall_10
    move-exception v0

    goto :goto_19

    :catchall_11
    move-exception v0

    move-object/from16 v29, v2

    :goto_19
    move/from16 v30, v3

    :goto_1a
    move-object/from16 v31, v4

    move-object/from16 v32, v6

    move-object/from16 v34, v8

    move-object v2, v0

    .line 2337
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_26

    throw v3

    :cond_26
    throw v2
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_12

    :catchall_12
    move-exception v0

    goto :goto_1e

    :catchall_13
    move-exception v0

    move-object/from16 v29, v2

    move/from16 v30, v3

    :goto_1b
    move-object/from16 v31, v4

    :goto_1c
    move-object/from16 v32, v6

    :goto_1d
    move-object/from16 v34, v8

    :goto_1e
    move-object v3, v0

    move/from16 v42, v5

    :goto_1f
    move/from16 v38, v10

    move-object/from16 v37, v15

    :goto_20
    const/4 v2, 0x3

    const/16 v8, 0xb

    const/16 v10, 0x76

    :goto_21
    const/16 v11, 0x234

    const/16 v14, 0x1d

    :goto_22
    const/16 v15, 0xec

    goto/16 :goto_4d

    :cond_27
    move-object/from16 v29, v2

    move/from16 v30, v3

    move-object/from16 v31, v4

    move-object/from16 v32, v6

    move-object/from16 v34, v8

    const/4 v12, 0x0

    const/16 v33, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    :goto_23
    const/16 v2, 0x1ccc

    .line 2416
    :try_start_2e
    new-array v2, v2, [B

    .line 2417
    const-class v3, Lcom/appsflyer/internal/AFa1zSDK;

    sget-object v4, Lcom/appsflyer/internal/AFa1zSDK;->$$a:[B

    const/16 v6, 0x1d5

    aget-byte v6, v4, v6

    int-to-byte v6, v6

    const/16 v7, 0x263

    int-to-short v7, v7

    const/16 v8, 0x84

    aget-byte v8, v4, v8

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v6

    .line 2418
    invoke-virtual {v3, v6}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_5b

    const/4 v6, 0x1

    :try_start_2f
    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v7, v6

    const/16 v3, 0x10

    aget-byte v6, v4, v3

    int-to-byte v3, v6

    xor-int/lit16 v8, v3, 0x1a0

    and-int/lit16 v9, v3, 0x1a0

    or-int/2addr v8, v9

    int-to-short v8, v8

    int-to-byte v6, v6

    invoke-static {v3, v8, v6}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/16 v6, 0x10

    aget-byte v8, v4, v6

    int-to-byte v6, v8

    const/16 v8, 0x3d9

    int-to-short v8, v8

    const/16 v9, 0xb3

    aget-byte v11, v4, v9

    int-to-byte v9, v11

    invoke-static {v6, v8, v9}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v6, v9, v11

    invoke-virtual {v3, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_59

    .line 2419
    :try_start_30
    new-array v6, v8, [Ljava/lang/Object;

    aput-object v2, v6, v11

    const/16 v7, 0x10

    aget-byte v8, v4, v7

    int-to-byte v7, v8

    xor-int/lit16 v9, v7, 0x1a0

    and-int/lit16 v11, v7, 0x1a0

    or-int/2addr v9, v11

    int-to-short v9, v9

    int-to-byte v8, v8

    invoke-static {v7, v9, v8}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/16 v8, 0x16

    aget-byte v8, v4, v8

    int-to-byte v8, v8

    const/16 v9, 0xa0

    int-to-short v9, v9

    const/16 v11, 0x8f

    aget-byte v11, v4, v11

    int-to-byte v11, v11

    invoke-static {v8, v9, v11}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v11, v9, [Ljava/lang/Class;

    const/4 v9, 0x0

    aput-object v1, v11, v9

    invoke-virtual {v7, v8, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_58

    const/16 v6, 0x10

    .line 2420
    :try_start_31
    aget-byte v7, v4, v6

    int-to-byte v6, v7

    xor-int/lit16 v8, v6, 0x1a0

    and-int/lit16 v9, v6, 0x1a0

    or-int/2addr v8, v9

    int-to-short v8, v8

    int-to-byte v7, v7

    invoke-static {v6, v8, v7}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/16 v7, 0xb

    aget-byte v8, v4, v7

    int-to-byte v7, v8

    xor-int/lit16 v8, v7, 0x22b

    and-int/lit16 v9, v7, 0x22b

    or-int/2addr v8, v9

    int-to-short v8, v8

    aget-byte v4, v4, v24

    int-to-byte v4, v4

    invoke-static {v7, v8, v4}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_57

    const/4 v3, 0x2

    .line 282
    rem-int v7, v3, v3

    const/16 v3, 0x14

    const/16 v4, 0x1ca0

    move-object/from16 v7, v31

    const/4 v6, 0x0

    :goto_24
    add-int/lit16 v8, v3, 0x9e

    and-int/lit16 v9, v3, 0x1cb7

    or-int/lit16 v11, v3, 0x1cb7

    add-int/2addr v9, v11

    .line 2432
    :try_start_32
    aget-byte v9, v2, v9

    add-int/lit8 v9, v9, 0x26

    int-to-byte v9, v9

    aput-byte v9, v2, v8

    .line 2437
    array-length v8, v2
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_5b

    sub-int/2addr v8, v3

    const/4 v9, 0x3

    :try_start_33
    new-array v11, v9, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v11, v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v11, v9

    const/4 v8, 0x0

    aput-object v2, v11, v8

    sget-object v2, Lcom/appsflyer/internal/AFa1zSDK;->$$a:[B

    const/16 v8, 0x10

    aget-byte v9, v2, v8

    int-to-byte v8, v9

    const/16 v9, 0x62

    int-to-short v9, v9

    const/16 v13, 0x2c

    aget-byte v13, v2, v13

    int-to-byte v13, v13

    invoke-static {v8, v9, v13}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/4 v9, 0x3

    new-array v13, v9, [Ljava/lang/Class;

    const/4 v9, 0x0

    aput-object v1, v13, v9

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v23, 0x1

    aput-object v9, v13, v23

    const/16 v23, 0x2

    aput-object v9, v13, v23

    invoke-virtual {v8, v13}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v38, v8

    check-cast v38, Ljava/io/InputStream;
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_56

    .line 2443
    :try_start_34
    sget-object v8, Lcom/appsflyer/internal/AFa1zSDK;->afLogForce:Ljava/lang/Object;
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_5b

    if-nez v8, :cond_2b

    .line 2412
    sget v8, Lcom/appsflyer/internal/AFa1zSDK;->$10:I

    or-int/lit8 v11, v8, 0x79

    const/4 v13, 0x1

    shl-int/2addr v11, v13

    xor-int/lit8 v8, v8, 0x79

    sub-int/2addr v11, v8

    rem-int/lit16 v8, v11, 0x80

    sput v8, Lcom/appsflyer/internal/AFa1zSDK;->$11:I

    const/4 v8, 0x2

    rem-int/2addr v11, v8

    .line 2447
    :try_start_35
    const-string v11, ""
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_12

    :try_start_36
    new-array v13, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v23, 0x1

    aput-object v18, v13, v23

    aput-object v11, v13, v8

    const/16 v8, 0xec

    aget-byte v11, v2, v8

    int-to-byte v8, v11

    const/16 v11, 0x2f0

    int-to-short v11, v11

    const/16 v23, 0x52

    aget-byte v9, v2, v23

    int-to-byte v9, v9

    invoke-static {v8, v11, v9}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    move/from16 v23, v4

    const/16 v9, 0x234

    aget-byte v4, v2, v9

    int-to-byte v4, v4

    const/16 v9, 0x305

    int-to-short v9, v9

    move-object/from16 v45, v12

    const/16 v17, 0xec

    aget-byte v12, v2, v17

    int-to-byte v12, v12

    invoke-static {v4, v9, v12}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x2

    new-array v12, v9, [Ljava/lang/Class;

    const-class v9, Ljava/lang/CharSequence;

    const/16 v18, 0x0

    aput-object v9, v12, v18

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v28, 0x1

    aput-object v9, v12, v28

    invoke-virtual {v8, v4, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v8, 0x0

    invoke-virtual {v4, v8, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_16

    neg-int v4, v4

    const v8, -0x5e8f12e5

    or-int v9, v4, v8

    const/4 v12, 0x1

    shl-int/2addr v9, v12

    xor-int/2addr v4, v8

    sub-int v43, v9, v4

    :try_start_37
    const-string v4, ""

    const-string v8, ""
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_12

    const/4 v9, 0x4

    :try_start_38
    new-array v12, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v18, 0x3

    aput-object v13, v12, v18

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v18, 0x2

    aput-object v13, v12, v18

    const/4 v13, 0x1

    aput-object v8, v12, v13

    aput-object v4, v12, v9

    const/16 v4, 0xec

    aget-byte v8, v2, v4

    int-to-byte v4, v8

    const/16 v8, 0x52

    aget-byte v8, v2, v8

    int-to-byte v8, v8

    invoke-static {v4, v11, v8}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v8, 0x52

    aget-byte v8, v2, v8

    int-to-byte v8, v8

    const/16 v9, 0xc3

    int-to-short v9, v9

    const/16 v11, 0x1ba

    aget-byte v11, v2, v11

    int-to-byte v11, v11

    invoke-static {v8, v9, v11}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x4

    new-array v11, v9, [Ljava/lang/Class;

    const-class v9, Ljava/lang/CharSequence;

    const/4 v13, 0x0

    aput-object v9, v11, v13

    const/4 v13, 0x1

    aput-object v9, v11, v13

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v13, 0x2

    aput-object v9, v11, v13

    const/4 v13, 0x3

    aput-object v9, v11, v13

    invoke-virtual {v4, v8, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v8, 0x0

    invoke-virtual {v4, v8, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_15

    rsub-int/lit8 v4, v4, 0x8

    int-to-short v4, v4

    const/4 v8, 0x0

    :try_start_39
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    aput-object v9, v12, v8

    const/16 v9, 0xec

    aget-byte v11, v2, v9

    int-to-byte v9, v11

    const/16 v11, 0x1c9

    int-to-short v11, v11

    aget-byte v13, v2, v8

    int-to-byte v8, v13

    invoke-static {v9, v11, v8}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/16 v9, 0x31

    aget-byte v11, v2, v9

    int-to-byte v9, v11

    const/16 v11, 0xa8

    int-to-short v11, v11

    const/16 v13, 0x2d

    aget-byte v13, v2, v13

    int-to-byte v13, v13

    invoke-static {v9, v11, v13}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x1

    new-array v13, v11, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v18, 0x0

    aput-object v11, v13, v18

    invoke-virtual {v8, v9, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_14

    const v9, 0x27b56b7a

    xor-int v11, v8, v9

    and-int/2addr v8, v9

    const/4 v9, 0x1

    shl-int/2addr v8, v9

    add-int v40, v11, v8

    .line 3068
    :try_start_3a
    new-instance v8, Lcom/appsflyer/internal/AFj1wSDK;

    sget v39, Lcom/appsflyer/internal/AFa1zSDK;->onInstallConversionFailureNative:I

    sget v42, Lcom/appsflyer/internal/AFa1zSDK;->AppsFlyer2dXConversionCallback:I

    move-object/from16 v37, v8

    move/from16 v41, v4

    invoke-direct/range {v37 .. v43}, Lcom/appsflyer/internal/AFj1wSDK;-><init>(Ljava/io/InputStream;IISII)V

    move-object/from16 v37, v15

    const/4 v12, 0x4

    goto/16 :goto_25

    :catchall_14
    move-exception v0

    move-object v2, v0

    .line 2447
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_28

    throw v3

    :cond_28
    throw v2

    :catchall_15
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_29

    throw v3

    :cond_29
    throw v2

    :catchall_16
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_2a

    throw v3

    :cond_2a
    throw v2
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_12

    :cond_2b
    move/from16 v23, v4

    move-object/from16 v45, v12

    .line 2361
    sget v4, Lcom/appsflyer/internal/AFa1zSDK;->$10:I

    xor-int/lit8 v9, v4, 0x25

    and-int/lit8 v4, v4, 0x25

    const/4 v11, 0x1

    shl-int/2addr v4, v11

    add-int/2addr v9, v4

    rem-int/lit16 v4, v9, 0x80

    sput v4, Lcom/appsflyer/internal/AFa1zSDK;->$11:I

    const/4 v4, 0x2

    rem-int/2addr v9, v4

    const/4 v4, 0x0

    .line 2454
    :try_start_3b
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v12, v11, [Ljava/lang/Object;

    aput-object v9, v12, v4

    const/16 v9, 0xec

    aget-byte v11, v2, v9

    int-to-byte v9, v11

    const/16 v11, 0x1c9

    int-to-short v11, v11

    aget-byte v13, v2, v4

    int-to-byte v4, v13

    invoke-static {v9, v11, v4}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v9, 0x31

    aget-byte v11, v2, v9

    int-to-byte v9, v11

    const/16 v11, 0xa8

    int-to-short v11, v11

    const/16 v13, 0x2d

    aget-byte v13, v2, v13

    int-to-byte v13, v13

    invoke-static {v9, v11, v13}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x1

    new-array v13, v11, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v18, 0x0

    aput-object v11, v13, v18

    invoke-virtual {v4, v9, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v9, 0x0

    invoke-virtual {v4, v9, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_55

    neg-int v4, v4

    neg-int v4, v4

    const v9, 0x3403da7

    xor-int v11, v4, v9

    and-int/2addr v4, v9

    const/4 v9, 0x1

    shl-int/2addr v4, v9

    add-int/2addr v11, v4

    :try_start_3c
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v4

    shr-int/lit8 v4, v4, 0x8

    neg-int v4, v4

    neg-int v4, v4

    or-int/lit8 v12, v4, 0x2

    shl-int/2addr v12, v9

    const/4 v9, 0x2

    xor-int/2addr v4, v9

    sub-int/2addr v12, v4

    const/16 v4, 0x8

    new-array v4, v4, [B

    fill-array-data v4, :array_2
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_5b

    const/4 v9, 0x4

    :try_start_3d
    new-array v13, v9, [Ljava/lang/Object;

    const/4 v9, 0x3

    aput-object v4, v13, v9

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v9, 0x2

    aput-object v4, v13, v9

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v9, 0x1

    aput-object v4, v13, v9

    const/4 v4, 0x0

    aput-object v38, v13, v4

    const/16 v4, 0xb

    aget-byte v9, v2, v4

    int-to-byte v4, v9

    xor-int/lit16 v9, v4, 0x328

    and-int/lit16 v11, v4, 0x328

    or-int/2addr v9, v11

    int-to-short v9, v9

    const/16 v11, 0x5d

    aget-byte v12, v2, v11

    int-to-byte v11, v12

    invoke-static {v4, v9, v11}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v4

    sget-object v9, Lcom/appsflyer/internal/AFa1zSDK;->afErrorLogForExcManagerOnly:Ljava/lang/Object;

    check-cast v9, Ljava/lang/ClassLoader;

    const/4 v11, 0x1

    invoke-static {v4, v11, v9}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    const/16 v9, 0x2a

    aget-byte v9, v2, v9

    int-to-byte v9, v9

    const/16 v11, 0x2ba

    int-to-short v11, v11

    const/16 v12, 0x1ba

    aget-byte v12, v2, v12

    int-to-byte v12, v12

    invoke-static {v9, v11, v12}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v9

    const/16 v11, 0x10

    aget-byte v12, v2, v11
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_54

    int-to-byte v11, v12

    const/16 v12, 0x3d9

    int-to-short v12, v12

    move-object/from16 v37, v15

    const/16 v26, 0xb3

    :try_start_3e
    aget-byte v15, v2, v26

    int-to-byte v15, v15

    invoke-static {v11, v12, v15}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const/4 v12, 0x4

    new-array v15, v12, [Ljava/lang/Class;

    const/16 v18, 0x0

    aput-object v11, v15, v18

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v21, 0x1

    aput-object v11, v15, v21

    const/16 v21, 0x2

    aput-object v11, v15, v21
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_53

    const/4 v11, 0x3

    :try_start_3f
    aput-object v1, v15, v11
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_52

    :try_start_40
    invoke-virtual {v4, v9, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v8, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Ljava/io/InputStream;
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_53

    :goto_25
    const/16 v4, 0x14

    int-to-long v12, v4

    .line 2457
    :try_start_41
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v9, 0x1

    new-array v11, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v11, v9

    const/16 v4, 0x10

    aget-byte v9, v2, v4

    int-to-byte v4, v9

    const/16 v9, 0x3d9

    int-to-short v9, v9

    const/16 v12, 0xb3

    aget-byte v13, v2, v12

    int-to-byte v12, v13

    invoke-static {v4, v9, v12}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v12, 0x58

    aget-byte v12, v2, v12

    int-to-byte v12, v12

    xor-int/lit16 v13, v12, 0x1fa

    and-int/lit16 v15, v12, 0x1fa

    or-int/2addr v13, v15

    int-to-short v13, v13

    const/16 v15, 0x1cb

    aget-byte v15, v2, v15

    neg-int v15, v15

    int-to-byte v15, v15

    invoke-static {v12, v13, v15}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v15, v13, [Ljava/lang/Class;

    sget-object v13, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/16 v18, 0x0

    aput-object v13, v15, v18

    invoke-virtual {v4, v12, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v8, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_51

    if-eqz v14, :cond_41

    .line 2361
    sget v4, Lcom/appsflyer/internal/AFa1zSDK;->$10:I

    or-int/lit8 v11, v4, 0x4f

    const/4 v12, 0x1

    shl-int/2addr v11, v12

    xor-int/lit8 v4, v4, 0x4f

    sub-int/2addr v11, v4

    rem-int/lit16 v4, v11, 0x80

    sput v4, Lcom/appsflyer/internal/AFa1zSDK;->$11:I

    const/4 v4, 0x2

    rem-int/2addr v11, v4

    .line 2463
    :try_start_42
    sget-object v4, Lcom/appsflyer/internal/AFa1zSDK;->afLogForce:Ljava/lang/Object;
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_2e

    if-nez v4, :cond_2c

    move-object/from16 v11, v35

    goto :goto_26

    :cond_2c
    move-object/from16 v11, v36

    :goto_26
    if-nez v4, :cond_2d

    move-object/from16 v4, v45

    goto :goto_27

    :cond_2d
    move-object/from16 v4, v33

    :goto_27
    const/4 v12, 0x1

    .line 3603
    :try_start_43
    new-array v13, v12, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v11, v13, v12

    const/16 v12, 0x10

    aget-byte v15, v2, v12
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_27

    int-to-byte v12, v15

    const/16 v15, 0x2c0

    int-to-short v15, v15

    move/from16 v38, v10

    const/16 v22, 0x1d

    :try_start_44
    aget-byte v10, v2, v22

    int-to-byte v10, v10

    invoke-static {v12, v15, v10}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    move-object/from16 v39, v6

    const/16 v12, 0x10

    aget-byte v6, v2, v12

    int-to-byte v6, v6

    xor-int/lit16 v12, v6, 0x320

    move/from16 v40, v3

    and-int/lit16 v3, v6, 0x320

    or-int/2addr v3, v12

    int-to-short v3, v3

    move-object/from16 v41, v7

    const/16 v12, 0x76

    aget-byte v7, v2, v12

    int-to-byte v7, v7

    invoke-static {v6, v3, v7}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v3, v7, v6

    invoke-virtual {v10, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_26

    if-eqz v5, :cond_2f

    const/16 v6, 0x10

    .line 3609
    :try_start_45
    aget-byte v7, v2, v6

    int-to-byte v6, v7

    xor-int/lit16 v7, v6, 0x320

    and-int/lit16 v10, v6, 0x320

    or-int/2addr v7, v10

    int-to-short v7, v7

    const/16 v10, 0x76

    aget-byte v12, v2, v10

    int-to-byte v10, v12

    invoke-static {v6, v7, v10}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/16 v7, 0x58

    aget-byte v7, v2, v7

    int-to-byte v7, v7

    const/16 v10, 0x18a

    int-to-short v10, v10

    const/16 v12, 0x231

    aget-byte v2, v2, v12

    neg-int v2, v2

    int-to-byte v2, v2

    invoke-static {v7, v10, v2}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v11, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_17

    goto :goto_28

    :catchall_17
    move-exception v0

    move-object v2, v0

    :try_start_46
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_2e

    throw v3

    :cond_2e
    throw v2
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_46} :catch_8
    .catchall {:try_start_46 .. :try_end_46} :catchall_18

    :catchall_18
    move-exception v0

    move-object v2, v0

    move/from16 v42, v5

    goto/16 :goto_2f

    :catch_8
    move-exception v0

    move-object v2, v0

    move/from16 v42, v5

    goto/16 :goto_2e

    :cond_2f
    :goto_28
    const/16 v2, 0x400

    .line 3616
    :try_start_47
    new-array v6, v2, [B

    move/from16 v7, v23

    :goto_29
    if-lez v7, :cond_32

    .line 3619
    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v10
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_25

    const/4 v12, 0x3

    :try_start_48
    new-array v13, v12, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v12, 0x2

    aput-object v10, v13, v12

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v18, 0x1

    aput-object v12, v13, v18

    aput-object v6, v13, v10

    sget-object v10, Lcom/appsflyer/internal/AFa1zSDK;->$$a:[B

    const/16 v12, 0x10

    aget-byte v2, v10, v12
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_1b

    int-to-byte v2, v2

    move/from16 v42, v5

    const/16 v12, 0xb3

    :try_start_49
    aget-byte v5, v10, v12

    int-to-byte v5, v5

    invoke-static {v2, v9, v5}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/16 v5, 0x16

    aget-byte v5, v10, v5

    int-to-byte v5, v5

    xor-int/lit16 v12, v5, 0xd2

    move/from16 v43, v14

    and-int/lit16 v14, v5, 0xd2

    or-int/2addr v12, v14

    int-to-short v12, v12

    const/16 v14, 0x1cb

    aget-byte v14, v10, v14

    neg-int v14, v14

    int-to-byte v14, v14

    invoke-static {v5, v12, v14}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x3

    new-array v14, v12, [Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v1, v14, v12

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v28, 0x1

    aput-object v12, v14, v28

    const/16 v27, 0x2

    aput-object v12, v14, v27

    invoke-virtual {v2, v5, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v8, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_1a

    const/4 v12, -0x1

    if-eq v5, v12, :cond_33

    const/4 v12, 0x3

    .line 3622
    :try_start_4a
    new-array v13, v12, [Ljava/lang/Object;

    const/4 v12, 0x2

    aput-object v2, v13, v12

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v14, 0x1

    aput-object v12, v13, v14

    aput-object v6, v13, v2

    const/16 v2, 0x10

    aget-byte v12, v10, v2

    int-to-byte v2, v12

    const/16 v12, 0x1d

    aget-byte v14, v10, v12

    int-to-byte v12, v14

    invoke-static {v2, v15, v12}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/16 v12, 0xe

    aget-byte v12, v10, v12

    int-to-byte v12, v12

    xor-int/lit16 v14, v12, 0xc9

    move-object/from16 v44, v6

    and-int/lit16 v6, v12, 0xc9

    or-int/2addr v6, v14

    int-to-short v6, v6

    aget-byte v10, v10, v24

    int-to-byte v10, v10

    invoke-static {v12, v6, v10}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x3

    new-array v12, v10, [Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v1, v12, v10

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v14, 0x1

    aput-object v10, v12, v14

    const/16 v27, 0x2

    aput-object v10, v12, v27

    invoke-virtual {v2, v6, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v3, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_19

    neg-int v2, v5

    xor-int v5, v7, v2

    and-int/2addr v2, v7

    shl-int/2addr v2, v14

    add-int v7, v5, v2

    move/from16 v5, v42

    move/from16 v14, v43

    move-object/from16 v6, v44

    const/16 v2, 0x400

    goto/16 :goto_29

    :catchall_19
    move-exception v0

    move-object v2, v0

    :try_start_4b
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_30

    throw v3

    :cond_30
    throw v2

    :catchall_1a
    move-exception v0

    goto :goto_2a

    :catchall_1b
    move-exception v0

    move/from16 v42, v5

    :goto_2a
    move-object v2, v0

    .line 3619
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_31

    throw v3

    :cond_31
    throw v2
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_28

    :cond_32
    move/from16 v42, v5

    move/from16 v43, v14

    .line 3628
    :cond_33
    :try_start_4c
    sget-object v2, Lcom/appsflyer/internal/AFa1zSDK;->$$a:[B

    const/16 v5, 0x10

    aget-byte v6, v2, v5

    int-to-byte v5, v6

    const/16 v6, 0x1d

    aget-byte v7, v2, v6

    int-to-byte v6, v7

    invoke-static {v5, v15, v6}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v6, 0x234

    aget-byte v7, v2, v6

    int-to-byte v6, v7

    xor-int/lit16 v7, v6, 0x20d

    and-int/lit16 v8, v6, 0x20d

    or-int/2addr v7, v8

    int-to-short v7, v7

    aget-byte v8, v2, v24

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_24

    const/16 v6, 0x10

    :try_start_4d
    aget-byte v7, v2, v6

    int-to-byte v6, v7

    sget v7, Lcom/appsflyer/internal/AFa1zSDK;->$$b:I

    xor-int/lit16 v8, v7, 0x348

    and-int/lit16 v7, v7, 0x348

    or-int/2addr v7, v8

    int-to-short v7, v7

    const/16 v8, 0x52

    aget-byte v8, v2, v8

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/16 v7, 0x58

    aget-byte v7, v2, v7

    int-to-byte v7, v7

    xor-int/lit16 v8, v7, 0x120

    and-int/lit16 v10, v7, 0x120

    or-int/2addr v8, v10

    int-to-short v8, v8

    const/16 v10, 0x1cb

    aget-byte v10, v2, v10

    neg-int v10, v10

    int-to-byte v10, v10

    invoke-static {v7, v8, v10}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_23

    const/16 v5, 0x10

    .line 3629
    :try_start_4e
    aget-byte v6, v2, v5

    int-to-byte v5, v6

    const/16 v6, 0x1d

    aget-byte v7, v2, v6

    int-to-byte v6, v7

    invoke-static {v5, v15, v6}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v6, 0xb

    aget-byte v7, v2, v6

    int-to-byte v6, v7

    xor-int/lit16 v7, v6, 0x22b

    and-int/lit16 v8, v6, 0x22b

    or-int/2addr v7, v8

    int-to-short v7, v7

    aget-byte v8, v2, v24

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_22

    const/16 v3, 0x3a

    .line 3641
    :try_start_4f
    aget-byte v5, v2, v3

    int-to-byte v3, v5

    const/16 v5, 0xda

    int-to-short v5, v5

    const/4 v6, 0x0

    aget-byte v7, v2, v6

    int-to-byte v6, v7

    invoke-static {v3, v5, v6}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/16 v5, 0x83

    .line 3642
    aget-byte v5, v2, v5

    int-to-byte v5, v5

    const/16 v6, 0x1c3

    int-to-short v6, v6

    const/16 v7, 0x1ba

    aget-byte v7, v2, v7

    int-to-byte v7, v7

    invoke-static {v5, v6, v7}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    const/4 v8, 0x1

    aput-object v6, v7, v8

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v6, v7, v8

    invoke-virtual {v3, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_28

    const/16 v5, 0x10

    .line 3646
    :try_start_50
    aget-byte v6, v2, v5

    int-to-byte v5, v6

    xor-int/lit16 v6, v5, 0x320

    and-int/lit16 v7, v5, 0x320

    or-int/2addr v6, v7

    int-to-short v6, v6

    const/16 v7, 0x76

    aget-byte v8, v2, v7

    int-to-byte v7, v8

    invoke-static {v5, v6, v7}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v6, 0x234

    aget-byte v7, v2, v6

    int-to-byte v6, v7

    or-int/lit16 v7, v6, 0x283

    int-to-short v7, v7

    const/4 v8, 0x5

    aget-byte v8, v2, v8

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v11, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_21

    .line 2412
    sget v6, Lcom/appsflyer/internal/AFa1zSDK;->$10:I

    and-int/lit8 v7, v6, 0x6b

    or-int/lit8 v6, v6, 0x6b

    add-int/2addr v7, v6

    rem-int/lit16 v6, v7, 0x80

    sput v6, Lcom/appsflyer/internal/AFa1zSDK;->$11:I

    const/4 v6, 0x2

    rem-int/2addr v7, v6

    const/16 v6, 0x10

    .line 3646
    :try_start_51
    aget-byte v7, v2, v6

    int-to-byte v6, v7

    or-int/lit16 v7, v6, 0x320

    int-to-short v7, v7

    const/16 v8, 0x76

    aget-byte v10, v2, v8

    int-to-byte v8, v10

    invoke-static {v6, v7, v8}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/16 v7, 0x234

    aget-byte v8, v2, v7

    int-to-byte v7, v8

    xor-int/lit16 v8, v7, 0x283

    and-int/lit16 v10, v7, 0x283

    or-int/2addr v8, v10

    int-to-short v8, v8

    const/4 v10, 0x5

    aget-byte v10, v2, v10

    int-to-byte v10, v10

    invoke-static {v7, v8, v10}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_20

    const/4 v7, 0x0

    .line 3649
    :try_start_52
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v10, 0x3

    new-array v12, v10, [Ljava/lang/Object;

    aput-object v5, v12, v7

    const/4 v5, 0x1

    aput-object v6, v12, v5

    const/4 v5, 0x2

    aput-object v8, v12, v5

    const/4 v5, 0x0

    .line 3646
    invoke-virtual {v3, v5, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_52
    .catchall {:try_start_52 .. :try_end_52} :catchall_28

    const/16 v5, 0x10

    .line 3655
    :try_start_53
    aget-byte v6, v2, v5

    int-to-byte v5, v6

    xor-int/lit16 v6, v5, 0x320

    and-int/lit16 v7, v5, 0x320

    or-int/2addr v6, v7

    int-to-short v6, v6

    const/16 v7, 0x76

    aget-byte v8, v2, v7

    int-to-byte v7, v8

    invoke-static {v5, v6, v7}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v6, 0x3a

    aget-byte v7, v2, v6

    int-to-byte v6, v7

    const/16 v7, 0x218

    int-to-short v7, v7

    const/16 v8, 0xd5

    aget-byte v8, v2, v8

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v11, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_1e

    const/16 v5, 0x10

    .line 3656
    :try_start_54
    aget-byte v6, v2, v5

    int-to-byte v5, v6

    xor-int/lit16 v6, v5, 0x320

    and-int/lit16 v8, v5, 0x320

    or-int/2addr v6, v8

    int-to-short v6, v6

    const/16 v8, 0x76

    aget-byte v10, v2, v8

    int-to-byte v8, v10

    invoke-static {v5, v6, v8}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v6, 0x3a

    aget-byte v8, v2, v6

    int-to-byte v6, v8

    const/16 v8, 0xd5

    aget-byte v8, v2, v8

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_1d

    .line 3661
    :try_start_55
    sget-object v4, Lcom/appsflyer/internal/AFa1zSDK;->afErrorLogForExcManagerOnly:Ljava/lang/Object;

    if-nez v4, :cond_35

    .line 3663
    const-class v4, Lcom/appsflyer/internal/AFa1zSDK;
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_1f

    :try_start_56
    const-class v5, Ljava/lang/Class;

    const/16 v6, 0x234

    aget-byte v7, v2, v6

    int-to-byte v6, v7

    const/16 v7, 0x201

    int-to-short v7, v7

    const/16 v8, 0xec

    aget-byte v2, v2, v8

    int-to-byte v2, v2

    invoke-static {v6, v7, v2}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_56
    .catchall {:try_start_56 .. :try_end_56} :catchall_1c

    :try_start_57
    sput-object v2, Lcom/appsflyer/internal/AFa1zSDK;->afErrorLogForExcManagerOnly:Ljava/lang/Object;

    goto :goto_2b

    :catchall_1c
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_34

    throw v3

    :cond_34
    throw v2

    :cond_35
    :goto_2b
    const/16 v10, 0x76

    const/16 v14, 0x1d

    goto/16 :goto_36

    :catchall_1d
    move-exception v0

    move-object v2, v0

    .line 3656
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_36

    throw v3

    :cond_36
    throw v2

    :catchall_1e
    move-exception v0

    move-object v2, v0

    .line 3655
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_37

    throw v3

    :cond_37
    throw v2
    :try_end_57
    .catchall {:try_start_57 .. :try_end_57} :catchall_1f

    :catchall_1f
    move-exception v0

    move-object v3, v0

    goto/16 :goto_20

    :catchall_20
    move-exception v0

    move-object v2, v0

    .line 3646
    :try_start_58
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_38

    throw v3

    :cond_38
    throw v2

    :catchall_21
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_39

    throw v3

    :cond_39
    throw v2

    :catchall_22
    move-exception v0

    move-object v2, v0

    .line 3629
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_3a

    throw v3

    :cond_3a
    throw v2

    :catchall_23
    move-exception v0

    move-object v2, v0

    .line 3628
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_3b

    throw v3

    :cond_3b
    throw v2

    :catchall_24
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_3c

    throw v3

    :cond_3c
    throw v2
    :try_end_58
    .catchall {:try_start_58 .. :try_end_58} :catchall_28

    :catchall_25
    move-exception v0

    move/from16 v42, v5

    goto :goto_2d

    :catchall_26
    move-exception v0

    move/from16 v42, v5

    goto :goto_2c

    :catchall_27
    move-exception v0

    move/from16 v42, v5

    move/from16 v38, v10

    :goto_2c
    move-object v2, v0

    .line 3603
    :try_start_59
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_3d

    throw v3

    :cond_3d
    throw v2
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_59} :catch_9
    .catchall {:try_start_59 .. :try_end_59} :catchall_28

    :catchall_28
    move-exception v0

    :goto_2d
    move-object v2, v0

    goto :goto_2f

    :catch_9
    move-exception v0

    move-object v2, v0

    .line 3614
    :goto_2e
    :try_start_5a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/appsflyer/internal/AFa1zSDK;->$$a:[B

    const/16 v6, 0x60

    aget-byte v6, v5, v6

    int-to-byte v6, v6

    const/16 v7, 0x141

    int-to-short v7, v7

    aget-byte v8, v5, v24

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v6, 0x3

    aget-byte v7, v5, v6

    int-to-byte v6, v7

    const/16 v7, 0xda

    int-to-short v7, v7

    const/16 v8, 0xa0

    aget-byte v8, v5, v8

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_5a
    .catchall {:try_start_5a .. :try_end_5a} :catchall_28

    const/4 v6, 0x2

    :try_start_5b
    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x1

    aput-object v2, v7, v6

    const/4 v2, 0x0

    aput-object v3, v7, v2

    const/16 v2, 0x10

    aget-byte v3, v5, v2

    int-to-byte v2, v3

    const/16 v3, 0x2de

    int-to-short v3, v3

    const/16 v6, 0xb3

    aget-byte v5, v5, v6

    int-to-byte v5, v5

    invoke-static {v2, v3, v5}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const-class v3, Ljava/lang/Throwable;

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_5b
    .catchall {:try_start_5b .. :try_end_5b} :catchall_29

    :catchall_29
    move-exception v0

    move-object v2, v0

    :try_start_5c
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_3e

    throw v3

    :cond_3e
    throw v2
    :try_end_5c
    .catchall {:try_start_5c .. :try_end_5c} :catchall_28

    .line 3655
    :goto_2f
    :try_start_5d
    sget-object v3, Lcom/appsflyer/internal/AFa1zSDK;->$$a:[B

    const/16 v5, 0x10

    aget-byte v6, v3, v5

    int-to-byte v5, v6

    xor-int/lit16 v6, v5, 0x320

    and-int/lit16 v7, v5, 0x320

    or-int/2addr v6, v7

    int-to-short v6, v6

    const/16 v7, 0x76

    aget-byte v8, v3, v7

    int-to-byte v7, v8

    invoke-static {v5, v6, v7}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v6, 0x3a

    aget-byte v7, v3, v6

    int-to-byte v6, v7

    const/16 v7, 0x218

    int-to-short v7, v7

    const/16 v8, 0xd5

    aget-byte v8, v3, v8

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v11, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_5d
    .catchall {:try_start_5d .. :try_end_5d} :catchall_2c

    .line 2412
    sget v5, Lcom/appsflyer/internal/AFa1zSDK;->$10:I

    and-int/lit8 v6, v5, 0x5d

    const/16 v8, 0x5d

    or-int/2addr v5, v8

    add-int/2addr v6, v5

    rem-int/lit16 v5, v6, 0x80

    sput v5, Lcom/appsflyer/internal/AFa1zSDK;->$11:I

    const/4 v5, 0x2

    rem-int/2addr v6, v5

    const/16 v5, 0x10

    .line 3656
    :try_start_5e
    aget-byte v6, v3, v5
    :try_end_5e
    .catchall {:try_start_5e .. :try_end_5e} :catchall_2b

    int-to-byte v5, v6

    xor-int/lit16 v6, v5, 0x320

    and-int/lit16 v8, v5, 0x320

    or-int/2addr v6, v8

    int-to-short v6, v6

    const/16 v10, 0x76

    :try_start_5f
    aget-byte v8, v3, v10

    int-to-byte v8, v8

    invoke-static {v5, v6, v8}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v6, 0x3a

    aget-byte v6, v3, v6

    int-to-byte v6, v6

    const/16 v8, 0xd5

    aget-byte v3, v3, v8

    int-to-byte v3, v3

    invoke-static {v6, v7, v3}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_5f
    .catchall {:try_start_5f .. :try_end_5f} :catchall_2a

    .line 3657
    :try_start_60
    throw v2

    :catchall_2a
    move-exception v0

    goto :goto_30

    :catchall_2b
    move-exception v0

    const/16 v10, 0x76

    :goto_30
    move-object v2, v0

    .line 3656
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_3f

    throw v3

    :cond_3f
    throw v2

    :catchall_2c
    move-exception v0

    const/16 v10, 0x76

    move-object v2, v0

    .line 3655
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_40

    throw v3

    :cond_40
    throw v2
    :try_end_60
    .catchall {:try_start_60 .. :try_end_60} :catchall_2d

    :catchall_2d
    move-exception v0

    goto :goto_31

    :catchall_2e
    move-exception v0

    move/from16 v42, v5

    move/from16 v38, v10

    const/16 v10, 0x76

    :goto_31
    move-object v3, v0

    const/4 v2, 0x3

    const/16 v8, 0xb

    goto/16 :goto_21

    :cond_41
    move/from16 v40, v3

    move/from16 v42, v5

    move-object/from16 v39, v6

    move-object/from16 v41, v7

    move/from16 v38, v10

    move/from16 v43, v14

    const/16 v10, 0x76

    .line 3679
    :try_start_61
    new-instance v3, Ljava/util/zip/ZipInputStream;

    invoke-direct {v3, v8}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3680
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v4
    :try_end_61
    .catchall {:try_start_61 .. :try_end_61} :catchall_50

    .line 2412
    sget v5, Lcom/appsflyer/internal/AFa1zSDK;->$10:I

    xor-int/lit8 v6, v5, 0x6d

    and-int/lit8 v5, v5, 0x6d

    const/4 v7, 0x1

    shl-int/2addr v5, v7

    add-int/2addr v6, v5

    rem-int/lit16 v5, v6, 0x80

    sput v5, Lcom/appsflyer/internal/AFa1zSDK;->$11:I

    const/4 v5, 0x2

    rem-int/2addr v6, v5

    .line 3682
    :try_start_62
    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/16 v3, 0x10

    aget-byte v6, v2, v3

    int-to-byte v3, v6

    const/16 v6, 0xf

    aget-byte v6, v2, v6

    int-to-short v6, v6

    const/16 v7, 0x31

    aget-byte v8, v2, v7

    int-to-byte v7, v8

    invoke-static {v3, v6, v7}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/16 v6, 0x10

    aget-byte v7, v2, v6

    int-to-byte v6, v7

    const/16 v7, 0xb3

    aget-byte v8, v2, v7

    int-to-byte v7, v8

    invoke-static {v6, v9, v7}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v8, v7

    invoke-virtual {v3, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_62
    .catchall {:try_start_62 .. :try_end_62} :catchall_4f

    const/16 v5, 0x10

    :try_start_63
    aget-byte v6, v2, v5

    int-to-byte v5, v6

    or-int/lit16 v6, v5, 0x1d0

    int-to-short v6, v6

    const/16 v7, 0x96

    aget-byte v2, v2, v7

    int-to-byte v2, v2

    invoke-static {v5, v6, v2}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_63
    .catchall {:try_start_63 .. :try_end_63} :catchall_4e

    const/16 v5, 0x400

    .line 3685
    :try_start_64
    new-array v5, v5, [B
    :try_end_64
    .catchall {:try_start_64 .. :try_end_64} :catchall_50

    const/4 v6, 0x0

    .line 2500
    :goto_32
    sget v7, Lcom/appsflyer/internal/AFa1zSDK;->$10:I

    add-int/lit8 v7, v7, 0x39

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lcom/appsflyer/internal/AFa1zSDK;->$11:I

    const/4 v8, 0x2

    rem-int/2addr v7, v8

    const/4 v7, 0x1

    .line 3688
    :try_start_65
    new-array v8, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v8, v7

    sget-object v7, Lcom/appsflyer/internal/AFa1zSDK;->$$a:[B

    const/16 v11, 0x10

    aget-byte v12, v7, v11

    int-to-byte v11, v12

    const/16 v12, 0xf

    aget-byte v12, v7, v12

    int-to-short v12, v12

    const/16 v13, 0x31

    aget-byte v14, v7, v13

    int-to-byte v13, v14

    invoke-static {v11, v12, v13}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const/16 v12, 0x16

    aget-byte v12, v7, v12

    int-to-byte v12, v12

    xor-int/lit16 v13, v12, 0xd2

    and-int/lit16 v14, v12, 0xd2

    or-int/2addr v13, v14

    int-to-short v13, v13

    const/16 v14, 0x1cb

    aget-byte v14, v7, v14

    neg-int v14, v14

    int-to-byte v14, v14

    invoke-static {v12, v13, v14}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/Class;

    const/4 v13, 0x0

    aput-object v1, v14, v13

    invoke-virtual {v11, v12, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    invoke-virtual {v11, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v11
    :try_end_65
    .catchall {:try_start_65 .. :try_end_65} :catchall_4d

    if-lez v11, :cond_43

    int-to-long v12, v6

    .line 3689
    :try_start_66
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v14
    :try_end_66
    .catchall {:try_start_66 .. :try_end_66} :catchall_2d

    cmp-long v20, v12, v14

    if-gez v20, :cond_43

    const/4 v12, 0x3

    .line 3691
    :try_start_67
    new-array v13, v12, [Ljava/lang/Object;

    const/4 v12, 0x2

    aput-object v8, v13, v12

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v14, 0x1

    aput-object v12, v13, v14

    aput-object v5, v13, v8

    const/16 v8, 0x10

    aget-byte v12, v7, v8

    int-to-byte v8, v12

    xor-int/lit16 v12, v8, 0x1d0

    and-int/lit16 v14, v8, 0x1d0

    or-int/2addr v12, v14

    int-to-short v12, v12

    const/16 v14, 0x96

    aget-byte v14, v7, v14

    int-to-byte v14, v14

    invoke-static {v8, v12, v14}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/16 v12, 0xe

    aget-byte v12, v7, v12

    int-to-byte v12, v12

    xor-int/lit16 v14, v12, 0xc9

    and-int/lit16 v15, v12, 0xc9

    or-int/2addr v14, v15

    int-to-short v14, v14

    aget-byte v7, v7, v24

    int-to-byte v7, v7

    invoke-static {v12, v14, v7}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v7

    const/4 v12, 0x3

    new-array v14, v12, [Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v1, v14, v12

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x1

    aput-object v12, v14, v15

    const/4 v15, 0x2

    aput-object v12, v14, v15

    invoke-virtual {v8, v7, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, v2, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_67
    .catchall {:try_start_67 .. :try_end_67} :catchall_2f

    neg-int v7, v11

    neg-int v7, v7

    not-int v7, v7

    sub-int/2addr v6, v7

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    goto/16 :goto_32

    :catchall_2f
    move-exception v0

    move-object v2, v0

    :try_start_68
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_42

    throw v3

    :cond_42
    throw v2
    :try_end_68
    .catchall {:try_start_68 .. :try_end_68} :catchall_2d

    :cond_43
    const/16 v4, 0x10

    .line 3694
    :try_start_69
    aget-byte v5, v7, v4

    int-to-byte v4, v5

    xor-int/lit16 v5, v4, 0x1d0

    and-int/lit16 v6, v4, 0x1d0

    or-int/2addr v5, v6

    int-to-short v5, v5

    const/16 v6, 0x96

    aget-byte v6, v7, v6

    int-to-byte v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0x5d

    aget-byte v6, v7, v5

    int-to-byte v5, v6

    const/16 v6, 0x381

    int-to-short v6, v6

    const/16 v8, 0x231

    aget-byte v11, v7, v8

    neg-int v11, v11

    int-to-byte v11, v11

    invoke-static {v5, v6, v11}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_69
    .catchall {:try_start_69 .. :try_end_69} :catchall_4c

    const/16 v5, 0x10

    .line 3698
    :try_start_6a
    aget-byte v6, v7, v5

    int-to-byte v5, v6

    const/16 v6, 0xf

    aget-byte v6, v7, v6

    int-to-short v6, v6

    const/16 v11, 0x31

    aget-byte v12, v7, v11

    int-to-byte v11, v12

    invoke-static {v5, v6, v11}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v6, 0xb

    aget-byte v11, v7, v6

    int-to-byte v6, v11

    or-int/lit16 v11, v6, 0x22b

    int-to-short v11, v11

    aget-byte v7, v7, v24

    int-to-byte v7, v7

    invoke-static {v6, v11, v7}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6a
    .catchall {:try_start_6a .. :try_end_6a} :catchall_30

    goto :goto_33

    :catchall_30
    move-exception v0

    move-object v3, v0

    :try_start_6b
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_44

    throw v5

    :cond_44
    throw v3
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6b} :catch_a
    .catchall {:try_start_6b .. :try_end_6b} :catchall_2d

    .line 2361
    :catch_a
    :goto_33
    sget v3, Lcom/appsflyer/internal/AFa1zSDK;->$11:I

    add-int/lit8 v3, v3, 0x3d

    rem-int/lit16 v5, v3, 0x80

    sput v5, Lcom/appsflyer/internal/AFa1zSDK;->$10:I

    const/4 v5, 0x2

    rem-int/2addr v3, v5

    .line 3704
    :try_start_6c
    sget-object v3, Lcom/appsflyer/internal/AFa1zSDK;->$$a:[B

    const/16 v5, 0x10

    aget-byte v6, v3, v5

    int-to-byte v5, v6

    xor-int/lit16 v6, v5, 0x1d0

    and-int/lit16 v7, v5, 0x1d0

    or-int/2addr v6, v7

    int-to-short v6, v6

    const/16 v7, 0x96

    aget-byte v7, v3, v7

    int-to-byte v7, v7

    invoke-static {v5, v6, v7}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v6, 0xb

    aget-byte v7, v3, v6

    int-to-byte v6, v7

    xor-int/lit16 v7, v6, 0x22b

    and-int/lit16 v11, v6, 0x22b

    or-int/2addr v7, v11

    int-to-short v7, v7

    aget-byte v3, v3, v24

    int-to-byte v3, v3

    invoke-static {v6, v7, v3}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6c
    .catchall {:try_start_6c .. :try_end_6c} :catchall_31

    goto :goto_34

    :catchall_31
    move-exception v0

    move-object v2, v0

    :try_start_6d
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_45

    throw v3

    :cond_45
    throw v2
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_6d} :catch_b
    .catchall {:try_start_6d .. :try_end_6d} :catchall_2d

    .line 3708
    :catch_b
    :goto_34
    :try_start_6e
    const-class v2, Lcom/appsflyer/internal/AFa1zSDK;
    :try_end_6e
    .catchall {:try_start_6e .. :try_end_6e} :catchall_50

    :try_start_6f
    const-class v3, Ljava/lang/Class;

    sget-object v5, Lcom/appsflyer/internal/AFa1zSDK;->$$a:[B

    const/16 v6, 0x234

    aget-byte v7, v5, v6

    int-to-byte v6, v7

    const/16 v7, 0x201

    int-to-short v7, v7

    const/16 v11, 0xec

    aget-byte v12, v5, v11

    int-to-byte v11, v12

    invoke-static {v6, v7, v11}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_6f
    .catchall {:try_start_6f .. :try_end_6f} :catchall_4b

    const/16 v3, 0x3a

    .line 3713
    :try_start_70
    aget-byte v6, v5, v3

    int-to-byte v3, v6

    sget v6, Lcom/appsflyer/internal/AFa1zSDK;->$$b:I

    or-int/lit8 v7, v6, 0x59

    int-to-short v7, v7

    const/16 v11, 0xe

    aget-byte v11, v5, v11

    int-to-byte v11, v11

    invoke-static {v3, v7, v11}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/16 v7, 0x10

    .line 3714
    aget-byte v11, v5, v7

    int-to-byte v7, v11

    const/16 v11, 0x26

    aget-byte v11, v5, v11

    neg-int v11, v11

    int-to-short v11, v11

    const/16 v12, 0xb3

    aget-byte v13, v5, v12

    int-to-byte v12, v13

    invoke-static {v7, v11, v12}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/16 v11, 0x10

    aget-byte v12, v5, v11

    int-to-byte v11, v12

    const/16 v12, 0x161

    int-to-short v12, v12

    const/4 v13, 0x0

    aget-byte v14, v5, v13

    int-to-byte v14, v14

    invoke-static {v11, v12, v14}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const/4 v12, 0x2

    new-array v14, v12, [Ljava/lang/Class;

    aput-object v7, v14, v13
    :try_end_70
    .catchall {:try_start_70 .. :try_end_70} :catchall_50

    const/4 v7, 0x1

    :try_start_71
    aput-object v11, v14, v7
    :try_end_71
    .catchall {:try_start_71 .. :try_end_71} :catchall_49

    :try_start_72
    invoke-virtual {v3, v14}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3
    :try_end_72
    .catchall {:try_start_72 .. :try_end_72} :catchall_50

    .line 3716
    :try_start_73
    new-array v11, v7, [Ljava/lang/Object;

    aput-object v4, v11, v13

    const/16 v4, 0x10

    aget-byte v7, v5, v4

    int-to-byte v4, v7

    const/16 v7, 0x26

    aget-byte v7, v5, v7

    neg-int v7, v7

    int-to-short v7, v7

    const/16 v12, 0xb3

    aget-byte v13, v5, v12

    int-to-byte v12, v13

    invoke-static {v4, v7, v12}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v7, 0xe

    aget-byte v7, v5, v7

    int-to-byte v7, v7

    xor-int/lit16 v12, v7, 0x39f

    and-int/lit16 v13, v7, 0x39f

    or-int/2addr v12, v13

    int-to-short v12, v12

    const/16 v13, 0x1cb

    aget-byte v13, v5, v13

    neg-int v13, v13

    int-to-byte v13, v13

    invoke-static {v7, v12, v13}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v7

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v1, v13, v12

    invoke-virtual {v4, v7, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_73
    .catchall {:try_start_73 .. :try_end_73} :catchall_4a

    const/4 v7, 0x2

    :try_start_74
    new-array v11, v7, [Ljava/lang/Object;

    aput-object v4, v11, v12
    :try_end_74
    .catchall {:try_start_74 .. :try_end_74} :catchall_50

    const/4 v4, 0x1

    :try_start_75
    aput-object v2, v11, v4
    :try_end_75
    .catchall {:try_start_75 .. :try_end_75} :catchall_49

    :try_start_76
    invoke-virtual {v3, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_76
    .catchall {:try_start_76 .. :try_end_76} :catchall_50

    const/16 v4, 0x3a

    .line 3729
    :try_start_77
    aget-byte v7, v5, v4

    int-to-byte v4, v7

    xor-int/lit16 v7, v4, 0xe4

    and-int/lit16 v11, v4, 0xe4

    or-int/2addr v7, v11

    int-to-short v7, v7

    const/16 v11, 0x58

    aget-byte v11, v5, v11

    int-to-byte v11, v11

    invoke-static {v4, v7, v11}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v7, 0x96

    .line 3730
    aget-byte v7, v5, v7

    int-to-byte v7, v7

    const/16 v11, 0x312

    int-to-short v11, v11

    const/16 v12, 0x36c

    aget-byte v12, v5, v12

    int-to-byte v12, v12

    invoke-static {v7, v11, v12}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v7, 0x1

    .line 3731
    invoke-virtual {v4, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3733
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 3734
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const/16 v12, 0x31

    .line 3736
    aget-byte v13, v5, v12
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_77} :catch_10
    .catchall {:try_start_77 .. :try_end_77} :catchall_46

    int-to-byte v12, v13

    const/16 v13, 0x3c2

    int-to-short v13, v13

    const/16 v14, 0x1d

    :try_start_78
    aget-byte v15, v5, v14

    int-to-byte v15, v15

    invoke-static {v12, v13, v15}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    const/4 v13, 0x1

    .line 3737
    invoke-virtual {v12, v13}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/16 v13, 0x31

    .line 3739
    aget-byte v13, v5, v13

    int-to-byte v13, v13

    or-int/lit16 v6, v6, 0x203

    int-to-short v6, v6

    const/16 v15, 0x83

    aget-byte v5, v5, v15

    int-to-byte v5, v5

    invoke-static {v13, v6, v5}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v6, 0x1

    .line 3740
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3742
    invoke-virtual {v12, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 3743
    invoke-virtual {v5, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 3745
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 3748
    new-instance v11, Ljava/util/ArrayList;

    check-cast v6, Ljava/util/List;

    invoke-direct {v11, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3750
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 3751
    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v6

    .line 3753
    invoke-static {v7}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v13

    .line 3754
    invoke-static {v6, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v6
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_78} :catch_f
    .catchall {:try_start_78 .. :try_end_78} :catchall_45

    const/4 v15, 0x0

    :goto_35
    if-ge v15, v13, :cond_46

    .line 3757
    :try_start_79
    invoke-static {v7, v15}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v6, v15, v8}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_79} :catch_c
    .catchall {:try_start_79 .. :try_end_79} :catchall_32

    xor-int/lit8 v8, v15, 0x1

    and-int/lit8 v15, v15, 0x1

    const/16 v20, 0x1

    shl-int/lit8 v15, v15, 0x1

    add-int/2addr v15, v8

    const/16 v8, 0x231

    goto :goto_35

    :catchall_32
    move-exception v0

    move-object v3, v0

    const/4 v2, 0x3

    const/16 v8, 0xb

    const/16 v11, 0x234

    goto/16 :goto_22

    :catch_c
    move-exception v0

    move-object v3, v0

    const/16 v8, 0xb

    const/16 v11, 0x234

    const/16 v15, 0xec

    goto/16 :goto_48

    .line 3760
    :cond_46
    :try_start_7a
    invoke-virtual {v12, v4, v11}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3761
    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7a} :catch_f
    .catchall {:try_start_7a .. :try_end_7a} :catchall_45

    .line 3771
    :try_start_7b
    sget-object v2, Lcom/appsflyer/internal/AFa1zSDK;->afErrorLogForExcManagerOnly:Ljava/lang/Object;
    :try_end_7b
    .catchall {:try_start_7b .. :try_end_7b} :catchall_45

    if-nez v2, :cond_47

    .line 3773
    :try_start_7c
    sput-object v3, Lcom/appsflyer/internal/AFa1zSDK;->afErrorLogForExcManagerOnly:Ljava/lang/Object;
    :try_end_7c
    .catchall {:try_start_7c .. :try_end_7c} :catchall_32

    :cond_47
    :goto_36
    if-eqz v43, :cond_4b

    .line 2483
    :try_start_7d
    sget-object v2, Lcom/appsflyer/internal/AFa1zSDK;->$$a:[B

    const/16 v4, 0x3a

    aget-byte v5, v2, v4

    int-to-byte v5, v5

    const/16 v6, 0xda

    int-to-short v6, v6

    const/4 v7, 0x0

    aget-byte v8, v2, v7

    int-to-byte v7, v8

    invoke-static {v5, v6, v7}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v6, 0x83

    .line 2484
    aget-byte v6, v2, v6

    int-to-byte v6, v6

    xor-int/lit16 v7, v6, 0x380

    and-int/lit16 v8, v6, 0x380

    or-int/2addr v7, v8

    int-to-short v7, v7

    const/16 v8, 0x8f

    aget-byte v8, v2, v8

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    aget-byte v8, v2, v7

    int-to-byte v7, v8

    const/16 v8, 0x161

    int-to-short v8, v8

    const/4 v11, 0x0

    aget-byte v12, v2, v11

    int-to-byte v12, v12

    invoke-static {v7, v8, v12}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7
    :try_end_7d
    .catchall {:try_start_7d .. :try_end_7d} :catchall_38

    const/4 v8, 0x2

    :try_start_7e
    new-array v12, v8, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v12, v11

    const/4 v8, 0x1

    aput-object v7, v12, v8
    :try_end_7e
    .catchall {:try_start_7e .. :try_end_7e} :catchall_37

    :try_start_7f
    invoke-virtual {v5, v6, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 2487
    invoke-virtual {v6, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 2488
    const-class v7, Lcom/appsflyer/internal/AFa1zSDK;
    :try_end_7f
    .catchall {:try_start_7f .. :try_end_7f} :catchall_38

    :try_start_80
    const-class v8, Ljava/lang/Class;
    :try_end_80
    .catchall {:try_start_80 .. :try_end_80} :catchall_36

    const/16 v11, 0x234

    :try_start_81
    aget-byte v12, v2, v11
    :try_end_81
    .catchall {:try_start_81 .. :try_end_81} :catchall_35

    int-to-byte v12, v12

    const/16 v13, 0x201

    int-to-short v13, v13

    const/16 v15, 0xec

    :try_start_82
    aget-byte v4, v2, v15

    int-to-byte v4, v4

    invoke-static {v12, v13, v4}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x0

    invoke-virtual {v8, v4, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v7, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_82
    .catchall {:try_start_82 .. :try_end_82} :catchall_34

    const/4 v7, 0x2

    :try_start_83
    new-array v8, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v41, v8, v7

    const/4 v7, 0x1

    aput-object v4, v8, v7
    :try_end_83
    .catchall {:try_start_83 .. :try_end_83} :catchall_33

    :try_start_84
    invoke-virtual {v6, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_84
    .catchall {:try_start_84 .. :try_end_84} :catchall_3a

    if-eqz v4, :cond_49

    .line 2412
    sget v6, Lcom/appsflyer/internal/AFa1zSDK;->$10:I

    add-int/lit8 v6, v6, 0x3

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/appsflyer/internal/AFa1zSDK;->$11:I

    const/4 v7, 0x2

    rem-int/2addr v6, v7

    if-nez v6, :cond_48

    const/16 v6, 0x33

    .line 2499
    :try_start_85
    aget-byte v6, v2, v6

    int-to-byte v6, v6

    xor-int/lit16 v7, v6, 0x5b6b

    int-to-short v7, v7

    const/16 v8, 0x9c1

    aget-byte v2, v2, v8

    int-to-byte v2, v2

    invoke-static {v6, v7, v2}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2500
    :goto_37
    invoke-virtual {v2, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_38

    :cond_48
    const/16 v6, 0xb

    .line 2499
    aget-byte v7, v2, v6

    int-to-byte v6, v7

    xor-int/lit16 v7, v6, 0x22b

    and-int/lit16 v8, v6, 0x22b

    or-int/2addr v7, v8

    int-to-short v7, v7

    aget-byte v2, v2, v24

    int-to-byte v2, v2

    invoke-static {v6, v7, v2}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    goto :goto_37

    :cond_49
    :goto_38
    move-object v2, v4

    goto/16 :goto_3f

    :catchall_33
    move-exception v0

    goto :goto_3d

    :catchall_34
    move-exception v0

    goto :goto_3a

    :catchall_35
    move-exception v0

    goto :goto_39

    :catchall_36
    move-exception v0

    const/16 v11, 0x234

    :goto_39
    const/16 v15, 0xec

    :goto_3a
    move-object v2, v0

    .line 2488
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_4a

    throw v3

    :cond_4a
    throw v2
    :try_end_85
    .catchall {:try_start_85 .. :try_end_85} :catchall_3a

    :catchall_37
    move-exception v0

    const/16 v11, 0x234

    const/16 v15, 0xec

    goto :goto_3d

    :catchall_38
    move-exception v0

    const/16 v11, 0x234

    const/16 v15, 0xec

    :goto_3b
    move-object v3, v0

    :goto_3c
    const/4 v2, 0x3

    const/16 v8, 0xb

    goto/16 :goto_4d

    :cond_4b
    const/16 v11, 0x234

    const/16 v15, 0xec

    .line 2507
    :try_start_86
    sget-object v2, Lcom/appsflyer/internal/AFa1zSDK;->$$a:[B

    const/16 v4, 0x10

    aget-byte v5, v2, v4

    int-to-byte v4, v5

    const/16 v5, 0x161

    int-to-short v5, v5

    const/4 v6, 0x0

    aget-byte v7, v2, v6

    int-to-byte v6, v7

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0x83

    .line 2508
    aget-byte v5, v2, v5

    int-to-byte v5, v5

    xor-int/lit16 v6, v5, 0x380

    and-int/lit16 v7, v5, 0x380

    or-int/2addr v6, v7

    int-to-short v6, v6

    const/16 v7, 0x8f

    aget-byte v2, v2, v7

    int-to-byte v2, v2

    invoke-static {v5, v6, v2}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v2
    :try_end_86
    .catchall {:try_start_86 .. :try_end_86} :catchall_44

    const/4 v5, 0x1

    :try_start_87
    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8
    :try_end_87
    .catchall {:try_start_87 .. :try_end_87} :catchall_43

    :try_start_88
    invoke-virtual {v4, v2, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_88
    .catchall {:try_start_88 .. :try_end_88} :catchall_44

    .line 2512
    :try_start_89
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_89
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_89 .. :try_end_89} :catch_d
    .catchall {:try_start_89 .. :try_end_89} :catchall_3a

    .line 2513
    :try_start_8a
    new-array v4, v5, [Ljava/lang/Object;

    aput-object v41, v4, v8
    :try_end_8a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8a .. :try_end_8a} :catch_d
    .catchall {:try_start_8a .. :try_end_8a} :catchall_39

    :try_start_8b
    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_8b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8b .. :try_end_8b} :catch_d
    .catchall {:try_start_8b .. :try_end_8b} :catchall_3a

    goto :goto_3f

    :goto_3d
    move-object v2, v0

    goto :goto_3e

    :catchall_39
    move-exception v0

    goto :goto_3d

    :goto_3e
    move-object v3, v2

    goto :goto_3c

    :catchall_3a
    move-exception v0

    goto :goto_3b

    :catch_d
    move-exception v0

    move-object v2, v0

    .line 2520
    :try_start_8c
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/lang/Exception;

    throw v2
    :try_end_8c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8c .. :try_end_8c} :catch_e
    .catchall {:try_start_8c .. :try_end_8c} :catchall_3a

    :catch_e
    nop

    const/4 v2, 0x0

    :goto_3f
    if-eqz v2, :cond_50

    .line 2531
    :try_start_8d
    move-object v6, v2

    check-cast v6, Ljava/lang/Class;

    .line 2536
    sget-object v2, Lcom/appsflyer/internal/AFa1zSDK;->$$a:[B

    const/16 v4, 0xb

    aget-byte v5, v2, v4

    int-to-byte v4, v5

    const/16 v5, 0x243

    int-to-short v5, v5

    const/16 v7, 0x5d

    aget-byte v8, v2, v7

    int-to-byte v8, v8

    invoke-static {v4, v5, v8}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v4
    :try_end_8d
    .catchall {:try_start_8d .. :try_end_8d} :catchall_44

    const/4 v5, 0x2

    .line 2541
    :try_start_8e
    new-array v8, v5, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v5, v8, v12

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x1

    aput-object v5, v8, v12
    :try_end_8e
    .catchall {:try_start_8e .. :try_end_8e} :catchall_43

    .line 2542
    :try_start_8f
    invoke-virtual {v6, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 2543
    invoke-virtual {v5, v12}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_8f
    .catchall {:try_start_8f .. :try_end_8f} :catchall_44

    if-nez v43, :cond_4c

    .line 2361
    sget v8, Lcom/appsflyer/internal/AFa1zSDK;->$11:I

    and-int/lit8 v12, v8, 0x3d

    or-int/lit8 v8, v8, 0x3d

    add-int/2addr v12, v8

    rem-int/lit16 v8, v12, 0x80

    sput v8, Lcom/appsflyer/internal/AFa1zSDK;->$10:I

    const/4 v13, 0x2

    rem-int/2addr v12, v13

    or-int/lit8 v12, v8, 0x2f

    const/16 v16, 0x1

    shl-int/lit8 v12, v12, 0x1

    xor-int/lit8 v8, v8, 0x2f

    sub-int/2addr v12, v8

    .line 248
    rem-int/lit16 v8, v12, 0x80

    sput v8, Lcom/appsflyer/internal/AFa1zSDK;->$11:I

    rem-int/2addr v12, v13

    const/4 v8, 0x1

    goto :goto_40

    :cond_4c
    const/4 v13, 0x2

    const/4 v8, 0x0

    .line 2544
    :goto_40
    :try_start_90
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8
    :try_end_90
    .catchall {:try_start_90 .. :try_end_90} :catchall_44

    :try_start_91
    new-array v12, v13, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v3, v12, v13

    const/4 v3, 0x1

    aput-object v8, v12, v3
    :try_end_91
    .catchall {:try_start_91 .. :try_end_91} :catchall_3f

    :try_start_92
    invoke-virtual {v5, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sput-object v3, Lcom/appsflyer/internal/AFa1zSDK;->afLogForce:Ljava/lang/Object;

    const/16 v3, 0x306c

    .line 2553
    new-array v3, v3, [B

    .line 2554
    const-class v5, Lcom/appsflyer/internal/AFa1zSDK;

    const/16 v8, 0x1d5

    aget-byte v8, v2, v8

    int-to-byte v8, v8

    const/16 v12, 0x194

    int-to-short v12, v12

    const/16 v13, 0x84

    aget-byte v13, v2, v13

    int-to-byte v13, v13

    invoke-static {v8, v12, v13}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v8

    .line 2555
    invoke-virtual {v5, v8}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5
    :try_end_92
    .catchall {:try_start_92 .. :try_end_92} :catchall_44

    const/4 v8, 0x1

    :try_start_93
    new-array v12, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v12, v8

    const/16 v5, 0x10

    aget-byte v8, v2, v5

    int-to-byte v5, v8

    xor-int/lit16 v13, v5, 0x1a0

    and-int/lit16 v7, v5, 0x1a0

    or-int/2addr v7, v13

    int-to-short v7, v7

    int-to-byte v8, v8

    invoke-static {v5, v7, v8}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v7, 0x10

    aget-byte v8, v2, v7

    int-to-byte v7, v8

    const/16 v8, 0xb3

    aget-byte v13, v2, v8

    int-to-byte v8, v13

    invoke-static {v7, v9, v8}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Class;

    const/4 v13, 0x0

    aput-object v7, v9, v13

    invoke-virtual {v5, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_93
    .catchall {:try_start_93 .. :try_end_93} :catchall_3e

    .line 2557
    :try_start_94
    new-array v7, v8, [Ljava/lang/Object;

    aput-object v3, v7, v13

    const/16 v8, 0x10

    aget-byte v9, v2, v8

    int-to-byte v8, v9

    or-int/lit16 v12, v8, 0x1a0

    int-to-short v12, v12

    int-to-byte v9, v9

    invoke-static {v8, v12, v9}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/16 v9, 0x16

    aget-byte v9, v2, v9

    int-to-byte v9, v9

    const/16 v12, 0xa0

    int-to-short v12, v12

    const/16 v13, 0x8f

    aget-byte v13, v2, v13

    int-to-byte v13, v13

    invoke-static {v9, v12, v13}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v1, v13, v12

    invoke-virtual {v8, v9, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_94
    .catchall {:try_start_94 .. :try_end_94} :catchall_3d

    const/16 v7, 0x10

    .line 2558
    :try_start_95
    aget-byte v8, v2, v7

    int-to-byte v7, v8

    xor-int/lit16 v9, v7, 0x1a0

    and-int/lit16 v12, v7, 0x1a0

    or-int/2addr v9, v12

    int-to-short v9, v9

    int-to-byte v8, v8

    invoke-static {v7, v9, v8}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7
    :try_end_95
    .catchall {:try_start_95 .. :try_end_95} :catchall_3c

    const/16 v8, 0xb

    :try_start_96
    aget-byte v9, v2, v8

    int-to-byte v9, v9

    xor-int/lit16 v12, v9, 0x22b

    and-int/lit16 v13, v9, 0x22b

    or-int/2addr v12, v13

    int-to-short v12, v12

    aget-byte v2, v2, v24

    int-to-byte v2, v2

    invoke-static {v9, v12, v2}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    invoke-virtual {v7, v2, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v5, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_96
    .catchall {:try_start_96 .. :try_end_96} :catchall_3b

    .line 2562
    :try_start_97
    invoke-static/range {v40 .. v40}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v5, 0x3041

    move-object v7, v4

    move-object/from16 v15, v37

    move/from16 v10, v38

    move/from16 v5, v42

    move/from16 v14, v43

    move-object/from16 v12, v45

    const/16 v4, 0x3041

    move-object/from16 v46, v3

    move v3, v2

    move-object/from16 v2, v46

    goto/16 :goto_24

    :catchall_3b
    move-exception v0

    goto :goto_41

    :catchall_3c
    move-exception v0

    const/16 v8, 0xb

    :goto_41
    move-object v2, v0

    .line 2558
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_4d

    throw v3

    :cond_4d
    throw v2

    :catchall_3d
    move-exception v0

    const/16 v8, 0xb

    move-object v2, v0

    .line 2557
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_4e

    throw v3

    :cond_4e
    throw v2

    :catchall_3e
    move-exception v0

    const/16 v8, 0xb

    move-object v2, v0

    .line 2555
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_4f

    throw v3

    :cond_4f
    throw v2
    :try_end_97
    .catchall {:try_start_97 .. :try_end_97} :catchall_41

    :catchall_3f
    move-exception v0

    const/16 v8, 0xb

    goto :goto_43

    :cond_50
    const/4 v2, 0x2

    const/16 v8, 0xb

    .line 2567
    :try_start_98
    new-array v4, v2, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v2, v4, v5
    :try_end_98
    .catchall {:try_start_98 .. :try_end_98} :catchall_42

    move-object/from16 v6, v39

    .line 2568
    :try_start_99
    invoke-virtual {v6, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 2569
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    xor-int/lit8 v4, v43, 0x1

    .line 2570
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4
    :try_end_99
    .catchall {:try_start_99 .. :try_end_99} :catchall_41

    const/4 v6, 0x2

    :try_start_9a
    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v7, v6

    aput-object v4, v7, v5
    :try_end_9a
    .catchall {:try_start_9a .. :try_end_9a} :catchall_40

    :try_start_9b
    invoke-virtual {v2, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lcom/appsflyer/internal/AFa1zSDK;->afLogForce:Ljava/lang/Object;
    :try_end_9b
    .catchall {:try_start_9b .. :try_end_9b} :catchall_41

    .line 2500
    sget v2, Lcom/appsflyer/internal/AFa1zSDK;->$11:I

    xor-int/lit8 v3, v2, 0x2d

    and-int/lit8 v2, v2, 0x2d

    shl-int/2addr v2, v5

    add-int/2addr v3, v2

    rem-int/lit16 v2, v3, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1zSDK;->$10:I

    const/4 v2, 0x2

    rem-int/2addr v3, v2

    if-eqz v3, :cond_51

    const/4 v2, 0x3

    const/4 v3, 0x0

    goto :goto_42

    :cond_51
    const/4 v2, 0x3

    const/4 v3, 0x1

    :goto_42
    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/16 v7, 0x10

    goto/16 :goto_50

    :catchall_40
    move-exception v0

    goto :goto_43

    :catchall_41
    move-exception v0

    goto :goto_45

    :catchall_42
    move-exception v0

    goto :goto_43

    :catchall_43
    move-exception v0

    const/16 v8, 0xb

    :goto_43
    move-object v2, v0

    move-object v3, v2

    goto :goto_46

    :catchall_44
    move-exception v0

    const/16 v8, 0xb

    goto :goto_45

    :catchall_45
    move-exception v0

    const/16 v8, 0xb

    const/16 v11, 0x234

    goto :goto_44

    :catch_f
    move-exception v0

    const/16 v8, 0xb

    const/16 v11, 0x234

    goto :goto_47

    :catchall_46
    move-exception v0

    const/16 v8, 0xb

    const/16 v11, 0x234

    const/16 v14, 0x1d

    :goto_44
    const/16 v15, 0xec

    :goto_45
    move-object v3, v0

    :goto_46
    const/4 v2, 0x3

    goto/16 :goto_4d

    :catch_10
    move-exception v0

    const/16 v8, 0xb

    const/16 v11, 0x234

    const/16 v14, 0x1d

    :goto_47
    const/16 v15, 0xec

    move-object v3, v0

    .line 3767
    :goto_48
    :try_start_9c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/appsflyer/internal/AFa1zSDK;->$$a:[B

    const/16 v6, 0x60

    aget-byte v6, v5, v6

    int-to-byte v6, v6

    const/16 v7, 0x145

    int-to-short v7, v7

    aget-byte v9, v5, v24

    int-to-byte v9, v9

    invoke-static {v6, v7, v9}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_9c
    .catchall {:try_start_9c .. :try_end_9c} :catchall_48

    const/4 v2, 0x3

    :try_start_9d
    aget-byte v6, v5, v2

    int-to-byte v6, v6

    const/16 v7, 0xda

    int-to-short v7, v7

    const/16 v9, 0xa0

    aget-byte v9, v5, v9

    int-to-byte v9, v9

    invoke-static {v6, v7, v9}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_9d
    .catchall {:try_start_9d .. :try_end_9d} :catchall_5a

    const/4 v6, 0x2

    :try_start_9e
    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x1

    aput-object v3, v7, v6

    const/4 v3, 0x0

    aput-object v4, v7, v3

    const/16 v3, 0x10

    aget-byte v4, v5, v3

    int-to-byte v3, v4

    const/16 v4, 0x2de

    int-to-short v4, v4

    const/16 v6, 0xb3

    aget-byte v5, v5, v6

    int-to-byte v5, v5

    invoke-static {v3, v4, v5}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    const-class v4, Ljava/lang/Throwable;

    const/4 v6, 0x1

    aput-object v4, v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    throw v3
    :try_end_9e
    .catchall {:try_start_9e .. :try_end_9e} :catchall_47

    :catchall_47
    move-exception v0

    move-object v3, v0

    :try_start_9f
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_52

    throw v4

    :cond_52
    throw v3

    :catchall_48
    move-exception v0

    const/4 v2, 0x3

    goto/16 :goto_4c

    :catchall_49
    move-exception v0

    const/4 v2, 0x3

    const/16 v8, 0xb

    goto/16 :goto_4b

    :catchall_4a
    move-exception v0

    const/4 v2, 0x3

    const/16 v8, 0xb

    const/16 v11, 0x234

    const/16 v14, 0x1d

    const/16 v15, 0xec

    move-object v3, v0

    .line 3716
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_53

    throw v4

    :cond_53
    throw v3

    :catchall_4b
    move-exception v0

    const/4 v2, 0x3

    const/16 v8, 0xb

    const/16 v11, 0x234

    const/16 v14, 0x1d

    const/16 v15, 0xec

    move-object v3, v0

    .line 3708
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_54

    throw v4

    :cond_54
    throw v3

    :catchall_4c
    move-exception v0

    const/4 v2, 0x3

    const/16 v8, 0xb

    const/16 v11, 0x234

    const/16 v14, 0x1d

    const/16 v15, 0xec

    move-object v3, v0

    .line 3694
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_55

    throw v4

    :cond_55
    throw v3

    :catchall_4d
    move-exception v0

    const/4 v2, 0x3

    const/16 v8, 0xb

    const/16 v11, 0x234

    const/16 v14, 0x1d

    const/16 v15, 0xec

    move-object v3, v0

    .line 3688
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_56

    throw v4

    :cond_56
    throw v3

    :catchall_4e
    move-exception v0

    const/4 v2, 0x3

    const/16 v8, 0xb

    const/16 v11, 0x234

    const/16 v14, 0x1d

    const/16 v15, 0xec

    move-object v3, v0

    .line 3682
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_57

    throw v4

    :cond_57
    throw v3

    :catchall_4f
    move-exception v0

    const/4 v2, 0x3

    const/16 v8, 0xb

    const/16 v11, 0x234

    const/16 v14, 0x1d

    const/16 v15, 0xec

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_58

    throw v4

    :cond_58
    throw v3

    :catchall_50
    move-exception v0

    const/4 v2, 0x3

    const/16 v8, 0xb

    goto/16 :goto_4b

    :catchall_51
    move-exception v0

    move/from16 v42, v5

    move/from16 v38, v10

    const/4 v2, 0x3

    const/16 v8, 0xb

    const/16 v10, 0x76

    const/16 v11, 0x234

    const/16 v14, 0x1d

    const/16 v15, 0xec

    move-object v3, v0

    .line 2457
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_59

    throw v4

    :cond_59
    throw v3

    :catchall_52
    move-exception v0

    move/from16 v42, v5

    move/from16 v38, v10

    goto :goto_49

    :catchall_53
    move-exception v0

    move/from16 v42, v5

    move/from16 v38, v10

    goto :goto_49

    :catchall_54
    move-exception v0

    move/from16 v42, v5

    move/from16 v38, v10

    move-object/from16 v37, v15

    :goto_49
    const/4 v2, 0x3

    const/16 v8, 0xb

    const/16 v10, 0x76

    const/16 v11, 0x234

    const/16 v14, 0x1d

    const/16 v15, 0xec

    move-object v3, v0

    .line 2454
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_5a

    throw v4

    :cond_5a
    throw v3

    :catchall_55
    move-exception v0

    move/from16 v42, v5

    move/from16 v38, v10

    move-object/from16 v37, v15

    const/4 v2, 0x3

    const/16 v8, 0xb

    const/16 v10, 0x76

    const/16 v11, 0x234

    const/16 v14, 0x1d

    const/16 v15, 0xec

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_5b

    throw v4

    :cond_5b
    throw v3

    :catchall_56
    move-exception v0

    move/from16 v42, v5

    move/from16 v38, v10

    move-object/from16 v37, v15

    const/4 v2, 0x3

    const/16 v8, 0xb

    const/16 v10, 0x76

    const/16 v11, 0x234

    const/16 v14, 0x1d

    const/16 v15, 0xec

    move-object v3, v0

    .line 2437
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_5c

    throw v4

    :cond_5c
    throw v3

    :catchall_57
    move-exception v0

    move/from16 v42, v5

    move/from16 v38, v10

    move-object/from16 v37, v15

    const/4 v2, 0x3

    const/16 v8, 0xb

    const/16 v10, 0x76

    const/16 v11, 0x234

    const/16 v14, 0x1d

    const/16 v15, 0xec

    move-object v3, v0

    .line 2420
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_5d

    throw v4

    :cond_5d
    throw v3

    :catchall_58
    move-exception v0

    move/from16 v42, v5

    move/from16 v38, v10

    move-object/from16 v37, v15

    const/4 v2, 0x3

    const/16 v8, 0xb

    const/16 v10, 0x76

    const/16 v11, 0x234

    const/16 v14, 0x1d

    const/16 v15, 0xec

    move-object v3, v0

    .line 2419
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_5e

    throw v4

    :cond_5e
    throw v3

    :catchall_59
    move-exception v0

    move/from16 v42, v5

    move/from16 v38, v10

    move-object/from16 v37, v15

    const/4 v2, 0x3

    const/16 v8, 0xb

    const/16 v10, 0x76

    const/16 v11, 0x234

    const/16 v14, 0x1d

    const/16 v15, 0xec

    move-object v3, v0

    .line 2418
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_5f

    throw v4

    :cond_5f
    throw v3
    :try_end_9f
    .catchall {:try_start_9f .. :try_end_9f} :catchall_5a

    :catchall_5a
    move-exception v0

    goto :goto_4c

    :catchall_5b
    move-exception v0

    move/from16 v42, v5

    goto :goto_4a

    :catchall_5c
    move-exception v0

    move-object/from16 v29, v2

    move/from16 v30, v3

    move-object/from16 v31, v4

    move/from16 v42, v5

    move-object/from16 v32, v6

    move-object/from16 v34, v8

    :goto_4a
    move/from16 v38, v10

    move-object/from16 v37, v15

    const/4 v2, 0x3

    const/16 v8, 0xb

    const/16 v10, 0x76

    :goto_4b
    const/16 v11, 0x234

    const/16 v14, 0x1d

    const/16 v15, 0xec

    :goto_4c
    move-object v3, v0

    :goto_4d
    xor-int/lit8 v4, v38, 0x1

    and-int/lit8 v5, v38, 0x1

    const/4 v6, 0x1

    shl-int/2addr v5, v6

    add-int/2addr v4, v5

    const/4 v5, 0x7

    :goto_4e
    if-ge v4, v5, :cond_61

    .line 2361
    sget v7, Lcom/appsflyer/internal/AFa1zSDK;->$10:I

    xor-int/lit8 v9, v7, 0x3f

    and-int/lit8 v7, v7, 0x3f

    shl-int/2addr v7, v6

    add-int/2addr v9, v7

    rem-int/lit16 v6, v9, 0x80

    sput v6, Lcom/appsflyer/internal/AFa1zSDK;->$11:I

    const/4 v6, 0x2

    rem-int/2addr v9, v6

    .line 256
    :try_start_a0
    aget-boolean v6, v37, v4

    if-eqz v6, :cond_60

    const/4 v6, 0x0

    .line 271
    sput-object v6, Lcom/appsflyer/internal/AFa1zSDK;->afLogForce:Ljava/lang/Object;

    .line 272
    sput-object v6, Lcom/appsflyer/internal/AFa1zSDK;->afErrorLogForExcManagerOnly:Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v7, 0x10

    goto/16 :goto_4f

    :cond_60
    const/4 v6, 0x0

    add-int/lit8 v4, v4, -0x28

    xor-int/lit8 v7, v4, 0x29

    and-int/lit8 v4, v4, 0x29

    const/4 v9, 0x1

    shl-int/2addr v4, v9

    add-int/2addr v4, v7

    const/4 v6, 0x1

    goto :goto_4e

    .line 266
    :cond_61
    sget-object v1, Lcom/appsflyer/internal/AFa1zSDK;->$$a:[B

    const/16 v2, 0x60

    aget-byte v2, v1, v2

    int-to-byte v2, v2

    sget v4, Lcom/appsflyer/internal/AFa1zSDK;->$$b:I

    xor-int/lit16 v5, v4, 0x103

    and-int/lit16 v4, v4, 0x103

    or-int/2addr v4, v5

    int-to-short v4, v4

    const/16 v7, 0x10

    aget-byte v5, v1, v7

    int-to-byte v5, v5

    invoke-static {v2, v4, v5}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v2
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_a0} :catch_11

    const/4 v4, 0x2

    :try_start_a1
    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x1

    aput-object v3, v5, v4

    const/4 v3, 0x0

    aput-object v2, v5, v3

    aget-byte v2, v1, v7

    int-to-byte v2, v2

    const/16 v3, 0x2de

    int-to-short v3, v3

    const/16 v4, 0xb3

    aget-byte v1, v1, v4

    int-to-byte v1, v1

    invoke-static {v2, v3, v1}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/Throwable;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    throw v1
    :try_end_a1
    .catchall {:try_start_a1 .. :try_end_a1} :catchall_5d

    :catchall_5d
    move-exception v0

    move-object v1, v0

    :try_start_a2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_62

    throw v2

    :cond_62
    throw v1
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_a2} :catch_11

    :cond_63
    move-object/from16 v29, v2

    move/from16 v30, v3

    move-object/from16 v31, v4

    move/from16 v42, v5

    move-object/from16 v32, v6

    move-object/from16 v34, v8

    move/from16 v38, v10

    move-object/from16 v37, v15

    const/4 v2, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/16 v8, 0xb

    const/16 v10, 0x76

    const/16 v11, 0x234

    const/16 v14, 0x1d

    const/16 v15, 0xec

    :goto_4f
    move/from16 v3, v30

    :goto_50
    xor-int/lit8 v9, v38, 0x1

    and-int/lit8 v12, v38, 0x1

    const/4 v13, 0x1

    shl-int/2addr v12, v13

    add-int/2addr v9, v12

    move v10, v9

    move-object/from16 v2, v29

    move-object/from16 v4, v31

    move-object/from16 v6, v32

    move-object/from16 v8, v34

    move-object/from16 v15, v37

    move/from16 v5, v42

    const/4 v7, 0x2

    const/4 v9, 0x1

    const/16 v11, 0x1d

    const/16 v13, 0x10

    const/4 v14, 0x4

    goto/16 :goto_e

    :cond_64
    const/4 v1, 0x2

    .line 282
    rem-int v7, v1, v1

    return-void

    :catchall_5e
    move-exception v0

    move-object v1, v0

    .line 151
    :try_start_a3
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_65

    throw v2

    :cond_65
    throw v1

    :catchall_5f
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_66

    throw v2

    :cond_66
    throw v1

    :catchall_60
    move-exception v0

    move-object v1, v0

    .line 147
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_67

    throw v2

    :cond_67
    throw v1
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_a3} :catch_11

    :catch_11
    move-exception v0

    move-object v1, v0

    .line 282
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_2
    .array-data 1
        0x69t
        -0x4ct
        -0x44t
        -0x3t
        -0x50t
        0x1ft
        -0x62t
        0x76t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 818
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AFInAppEventType(I)I
    .locals 9

    const/4 v0, 0x2

    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1zSDK;->$10:I

    and-int/lit8 v2, v1, 0x3f

    or-int/lit8 v1, v1, 0x3f

    add-int/2addr v2, v1

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1zSDK;->$11:I

    rem-int/2addr v2, v0

    sget-object v2, Lcom/appsflyer/internal/AFa1zSDK;->afLogForce:Ljava/lang/Object;

    add-int/lit8 v3, v1, 0x79

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFa1zSDK;->$10:I

    rem-int/2addr v3, v0

    or-int/lit8 v3, v1, 0x65

    const/4 v4, 0x1

    shl-int/2addr v3, v4

    xor-int/lit8 v1, v1, 0x65

    sub-int/2addr v3, v1

    rem-int/lit16 v1, v3, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1zSDK;->$10:I

    rem-int/2addr v3, v0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v1, v3

    sget-object p0, Lcom/appsflyer/internal/AFa1zSDK;->$$a:[B

    const/16 v5, 0xb

    aget-byte v5, p0, v5

    int-to-byte v5, v5

    xor-int/lit16 v6, v5, 0x328

    and-int/lit16 v7, v5, 0x328

    or-int/2addr v6, v7

    int-to-short v6, v6

    const/16 v7, 0x5d

    aget-byte v7, p0, v7

    int-to-byte v7, v7

    invoke-static {v5, v6, v7}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/appsflyer/internal/AFa1zSDK;->afErrorLogForExcManagerOnly:Ljava/lang/Object;

    check-cast v6, Ljava/lang/ClassLoader;

    invoke-static {v5, v4, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    const/16 v6, 0x56

    aget-byte v6, p0, v6

    neg-int v6, v6

    int-to-byte v6, v6

    const/16 v7, 0x149

    int-to-short v7, v7

    const/16 v8, 0x83

    aget-byte p0, p0, v8

    int-to-byte p0, p0

    invoke-static {v6, v7, p0}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object p0

    new-array v6, v4, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v5, p0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget v1, Lcom/appsflyer/internal/AFa1zSDK;->$11:I

    xor-int/lit8 v2, v1, 0x59

    and-int/lit8 v1, v1, 0x59

    shl-int/2addr v1, v4

    add-int/2addr v2, v1

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1zSDK;->$10:I

    rem-int/2addr v2, v0

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    throw v0

    :cond_0
    throw p0
.end method

.method public static AFInAppEventType(Ljava/lang/Object;)I
    .locals 8

    const/4 v0, 0x2

    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1zSDK;->$10:I

    or-int/lit8 v2, v1, 0x6b

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    xor-int/lit8 v1, v1, 0x6b

    sub-int/2addr v2, v1

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1zSDK;->$11:I

    rem-int/2addr v2, v0

    sget-object v2, Lcom/appsflyer/internal/AFa1zSDK;->afLogForce:Ljava/lang/Object;

    xor-int/lit8 v4, v1, 0x7d

    and-int/lit8 v1, v1, 0x7d

    shl-int/2addr v1, v3

    add-int/2addr v4, v1

    rem-int/lit16 v1, v4, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1zSDK;->$10:I

    rem-int/2addr v4, v0

    or-int/lit8 v4, v1, 0x5f

    shl-int/2addr v4, v3

    xor-int/lit8 v1, v1, 0x5f

    sub-int/2addr v4, v1

    rem-int/lit16 v1, v4, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1zSDK;->$11:I

    rem-int/2addr v4, v0

    :try_start_0
    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    sget-object p0, Lcom/appsflyer/internal/AFa1zSDK;->$$a:[B

    const/16 v4, 0xb

    aget-byte v4, p0, v4

    int-to-byte v4, v4

    xor-int/lit16 v5, v4, 0x328

    and-int/lit16 v6, v4, 0x328

    or-int/2addr v5, v6

    int-to-short v5, v5

    const/16 v6, 0x5d

    aget-byte v6, p0, v6

    int-to-byte v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/appsflyer/internal/AFa1zSDK;->afErrorLogForExcManagerOnly:Ljava/lang/Object;

    check-cast v5, Ljava/lang/ClassLoader;

    invoke-static {v4, v3, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0x2a

    aget-byte v5, p0, v5

    int-to-byte v5, v5

    const/16 v6, 0x2ba

    int-to-short v6, v6

    const/16 v7, 0x1ba

    aget-byte p0, p0, v7

    int-to-byte p0, p0

    invoke-static {v5, v6, p0}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object p0

    new-array v3, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    aput-object v5, v3, v1

    invoke-virtual {v4, p0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    throw v0

    :cond_0
    throw p0
.end method

.method static init$0()V
    .locals 5

    const/4 v0, 0x2

    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1zSDK;->$10:I

    xor-int/lit8 v2, v1, 0xb

    and-int/lit8 v1, v1, 0xb

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v2, v1

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1zSDK;->$11:I

    rem-int/2addr v2, v0

    const-string v0, "ISO-8859-1"

    const-string v1, "\u000f\u00e4\u00f9N\u00f7\u0015\u00eb\u00cd;\u0006\u00bf\u00143\u00f1\u0000\u00ff\r\u00f3\u00ff\u00e5%\u0002\u0005\u00ff\u00df!\u00fe\u00f3\u00fc\u000c\u00f7\u0015\u00eb\u00cd>\u00f5\r\u00f9\u00c7%&\u00fa\u0001\u00f1\u0008\u0012\u00fd\u0000\u00f3\t\u0006\u00cd/\u0000\u00fc\u00fd\u00fa\u00fe\u0013\u00f5\u0006\u00ff\u00f7\u0015\u00eb\u00cd@\u00fb\u0006\u00bf\u00147\u00fb\u00f1\u00dd3\u00f1\u0000\u00ff\r\r\u00f6\u000e\u00fd\u00fa\u00fb\u00caA\u0004\u00bb\u00143\u00f4\u0003\u00f8\u00c02\u00ef\r\u0001\u00f6\u0006\u00ff\u00f7\u0015\u00eb\u00cd;\u0006\u00bf\u00147\u00fb\u00f1\u00dc1\u0000\u00ef\u0018\u00d0%\u0002\u0005\u00ff\u00df!\u00fe\u00f3\u00fc\u000c\u00fd\u000b\n\u00f3\u0002\u00c3E\u0006\u00fa\u0001\u00f1\u0008\u00c1\u001b%\u00df\u0018\u0008\u0002\u0003\u0007\u00cb!\u0013\u00cb)\u00f5\u0012\u0000\u00d9#\u00f2\u0003\u0001\r\u00f3\u00fc\u0003\u00e2/\u00f7\u0000\r\u0001\u0003\u00fb\u00f4\u000b\u00fd\u0011\u00eb\u00e8\u0018\u000f\u00ed\u00f2!\u00ed\u0013\u00f1\u00fe\u000f\u00d2#\u0003\u00f9\u000e\u00d1%\t\u0005\u00f6\u0001\u0013\u00d7\u0017\u00fb\u00f7\u000b\u00f1\u00fe\u000f\u00cf\u001e\u0002\u0005\u00fd\u00df%\t\u00f3\u00fc\u0003\u00fd\u000b\n\u00f3\u0002\u00c3E\u0006\u00fa\u0001\u00f1\u0008\u00c1\u0016!\u0013\u00ce#\u0003\u00f9\u000c\u00f5\u0001\u00fa\u0004\u00fe\u0002\u0005\u00fd\u00fd\u000b\n\u00f3\u0002\u00c3E\u0006\u00fa\u0001\u00f1\u0008\u00c1\u0014\u001f\u0012\u00f2\u00df!\u0013\u00cb)\u00f5\u0012\u0000\u00d9#\u00f2\u0003\u0001\r\u00fe\u000f\u00cf,\u00f5\u0001\u00de\u001e\u0002\u0005\u00fd\u00df%\t\u0006\u00f5\u00f5\u00eb\u0007\u00e9\u0008F\u0001\u00b1F\u00fb\u000b\u0000\u00f6\u00ff\u0002\u0008\u0008\u00adL\u00f9\u0001\u000e\u00b5\u00eb\u0006\u00ea\u0008\u00eb\u0004\u00ec\u0008\u00eb\u0008\u00e8\u0008\u0005\u0003%\u00d3/\u0000\u00d51\u00ef\t\u0006\u00dc\u0011\u0011\u00ef\u000c\u00f8\u000f\u00f1\r\u00dc\u0013\u000c\u00f8\u00f7\u0015\u00eb\u00cd>\u00f5\r\u00f9\u00c7\u0015)\u00f5\u0012\u0000\u00d9#\u00f2\u0003\u0001\r\r\u00f6\u000e\u00fd\u00fa\u00fb\u00ca3\u000f\u0000\u00be\u0013/\u0000\u00d7%\u0003\u00f3\u00ff\u000b\u0007\u00f2\u000f\u00de\u0013\u00fc\u0003\u00eb\u001f\u00fe\r4\u000c\u00fe\u00c22\u000f\u0000\u0003\u00f3\u0006\r\u00ec\r\u00bd:\u0005\u0006\u00f1\r\u00fc\u00f3\u000b\u00c33\u00cb\u00f7\u0015\u00eb\u00cd;\u0006\u00bf\u0016\u001d\u0013\u00ed\u00e8%\u0002\u0005\u00ff\u00df!\u00fe\u00f3\u00fc\u000c\u0003\u00f2\u0003\u00e0!\u0013\r\u00f6\u000e\u00fd\u00fa\u00fb\u00caH\u00f3\u00fc\u0012\u00b7\u001d\u001a\u0014\u00cc1\u00ef\t\u0006\u00f7\u0015\u00eb\u00cd;\u0006\u00bf\u00147\u00fb\u00f1\u00dc1\u0000\u00ef\u0018\u00d6&\u00ff\u00fc\u0005\u00ff\u00df!\u00fe\u00f3\u00fc\u000c\u00eb\u000b\t\u00f0\u000e\u00f8\u00fe\u0007\u00fe\u000f\u00cf)\u00f5\u0012\u0000\u00d9#\u00f2\u0003\u0001\r5\u00fd\u0013\u00ed\u00ce5\u00fd\u0013\u00ed\u00ce\u0001\u0007\u00f9\u000f\u00f1\u00fe\u000f\u00d2\u00fe\u00f1\u0007\u0014\u00ea\u0005\u0006\u00f3\u0013\u00f5\r\u00ef\u00e7\u001d\u00f9\u0010\u00ef\u0011\u0007\u00d7\u0011\u0013\u00f4\u00dd\'\u00f9\u0008\u00f8\t\u0006\u00ff\t\u0003\u0004\u00f2\u000c\u00fe\u00c22\u000f\u0000\u0003\u00f3\u0006\r\u00ec\r\u00bd:\u0005\u0006\u00f1\r\u00fc\u00f3\u000b\u00c3\u0012\u0005\u001b\u00d0I\u00d9\u00f1\u0007\u00d9S4\u000c\u00fe\u00c22\u000f\u0000\u0003\u00f3\u0006\r\u00ec\r\u00bd:\u0005\u0006\u00f1\r\u00fc\u00f3\u000b\u00c32\u00cc\u00f7\u0015\u00eb\u00cd;\u0006\u00bfF\u00f9\u0003\u00f4\u0005\t\u00fe\u000f\u00dc\"\u00fd\u0001\u00f5\r\u0002\u0005\u00fe\u000f\u00cd!\u0011\u00fc\u00fd\t\u00ff\u00f1\u00eb\u0011\u0013\u00f4\r\u00f6\u000e\u00fd\u00fa\u00fb\u00ca3\u000f\u0000\u00be\u0013\"\u0011\u00f5\r\u00f3\u000b\u0005\u00db\u0014\n\u00f3\u00fc\u0003\u00eb\u000b\t\u00f0\u00ea\u0017\u00f7\u0015\u00eb\u00cd;\u0006\u00bf\u0018#\u0003\u00f9\u00ea&\u00ff\u00fc\u0005\u00ff\u00df!\u00fe\u00f3\u00fc\u000c\u00fe\r\u00e9\u001b\u00f7\u000b\u00f1\u00f7\u0015\u00eb\u00cd;\u0006\u00bf\u001b\u0006\u00f63\u00eb\u0002\u000b\u0004\u00f5\u0006\u00ff\r\u00f6\u000e\u00fd\u00fa\u00fb\u00caF\u00f1\u0013\u00fc\u00ba&\u0011\u0013\u00fc\u00e1\u001f\u00f5\u0003\u0007\u00fe\u000f\u00db\u0017\u0000\r\u00f2\u000f\u00cd%\u000e\u00f1\r\u00f1\u0013\u00f4\u00e4\u001d\n\u0001\u00fe\u000f\u00d5%\u00fb\u000b\u00f5\u00f8\u000b\u00d5/\u0000\u00fc\u00fd\u00fa\u00fe\u0013\u00f5\u0006\u00ff\u00f7\u0015\u00eb\u00cd;\u0006\u00bf\u0018#\u0003\u00f9\u00eb\u0003\u00ed\u0008\u000c\u00fe\u00c13\u000f\u0000\u0003\u00f3\u0006\r\u00ec\r\u00bc;\u0005\u0006\u00f1\r\u00fc\u00f3\u000b\u00c2\u0013\u0005\u001b\u00d0E\u00dd\u00f1\u0007\u00d9\u0000\u0012\u00fd\u0000\u00f3\t\u0006\u00e0\u0015\u0004\u00f8\u00e8\u001c\u0003\u0000\u00fd\n\u00f7\u0015\u00eb\u00cd;\u0006\u00bf\u0018#\u0003\u00f9\u00df!\u000e\u00f0\u000f\u00f7\u0007\u0004\u00fb\u0003\u00fb\u00d37\u00fb\u00f1\u00dc1\u0000\u00ef\u0018\u0003\u00f2\u0003\u00df)\u00f5\u0012\u0000\u000c\u00fe\u00c13\u000f\u0000\u0003\u00f3\u0006\r\u00ec\r\u00fb\u00ef\u000f\u000c\u00fe\u00c22\u000f\u0000\u0003\u00f3\u0006\r\u00ec\r\u00bd:\u0005\u0006\u00f1\r\u00fc\u00f3\u000b\u00c3\u0012\u0005\u001b\u00d0E\u00dd\u00f1\u0007\u00d9\u0000\u00f3\u0013\u00f5\r\u00ef\u00e7\u001d\u00f9\u0010\u00ef\u0011\u0007\u00cb%\t\u00f3\u00fe\u0011\u00fb\u0003\u00f7\u00fc\u000e\u00f7\u0015\u00eb\u00cd;\u0006\u00bf\u001b%\u0002\u0005\u00ff\u00df!\u00fe\u00f3\u00fc\u000c"

    const/4 v3, 0x0

    const/16 v4, 0x3f0

    if-nez v2, :cond_0

    new-array v2, v4, [B

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sput-object v2, Lcom/appsflyer/internal/AFa1zSDK;->$$a:[B

    const/16 v0, 0x2b

    goto :goto_0

    :cond_0
    new-array v2, v4, [B

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sput-object v2, Lcom/appsflyer/internal/AFa1zSDK;->$$a:[B

    const/16 v0, 0x24

    :goto_0
    sput v0, Lcom/appsflyer/internal/AFa1zSDK;->$$b:I

    return-void
.end method

.method public static valueOf(ICI)Ljava/lang/Object;
    .locals 8

    const/4 v0, 0x2

    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1zSDK;->$11:I

    and-int/lit8 v2, v1, 0x2f

    or-int/lit8 v3, v1, 0x2f

    add-int/2addr v2, v3

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1zSDK;->$10:I

    rem-int/2addr v2, v0

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    sget-object v2, Lcom/appsflyer/internal/AFa1zSDK;->afLogForce:Ljava/lang/Object;

    const/16 v4, 0x15

    div-int/2addr v4, v3

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/appsflyer/internal/AFa1zSDK;->afLogForce:Ljava/lang/Object;

    :goto_0
    add-int/lit8 v1, v1, 0x53

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lcom/appsflyer/internal/AFa1zSDK;->$10:I

    rem-int/2addr v1, v0

    xor-int/lit8 v1, v4, 0x47

    and-int/lit8 v4, v4, 0x47

    const/4 v5, 0x1

    shl-int/2addr v4, v5

    add-int/2addr v1, v4

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lcom/appsflyer/internal/AFa1zSDK;->$11:I

    rem-int/2addr v1, v0

    const/4 v1, 0x3

    :try_start_0
    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v0

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    aput-object p1, v4, v5

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v3

    sget-object p0, Lcom/appsflyer/internal/AFa1zSDK;->$$a:[B

    const/16 p1, 0xb

    aget-byte p1, p0, p1

    int-to-byte p1, p1

    xor-int/lit16 p2, p1, 0x328

    and-int/lit16 v6, p1, 0x328

    or-int/2addr p2, v6

    int-to-short p2, p2

    const/16 v6, 0x5d

    aget-byte v6, p0, v6

    int-to-byte v6, v6

    invoke-static {p1, p2, v6}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/appsflyer/internal/AFa1zSDK;->afErrorLogForExcManagerOnly:Ljava/lang/Object;

    check-cast p2, Ljava/lang/ClassLoader;

    invoke-static {p1, v5, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    const/16 p2, 0x2a

    aget-byte p2, p0, p2

    int-to-byte p2, p2

    xor-int/lit16 v6, p2, 0x1f8

    and-int/lit16 v7, p2, 0x1f8

    or-int/2addr v6, v7

    int-to-short v6, v6

    const/16 v7, 0xd5

    aget-byte p0, p0, v7

    int-to-byte p0, p0

    invoke-static {p2, v6, p0}, Lcom/appsflyer/internal/AFa1zSDK;->$$c(SSI)Ljava/lang/String;

    move-result-object p0

    new-array p2, v1, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, p2, v3

    sget-object v6, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v6, p2, v5

    aput-object v1, p2, v0

    invoke-virtual {p1, p0, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget p1, Lcom/appsflyer/internal/AFa1zSDK;->$11:I

    add-int/lit8 p1, p1, 0x1d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFa1zSDK;->$10:I

    rem-int/2addr p1, v0

    if-eqz p1, :cond_1

    const/16 p1, 0x63

    div-int/2addr p1, v3

    :cond_1
    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_2

    throw p1

    :cond_2
    throw p0
.end method
