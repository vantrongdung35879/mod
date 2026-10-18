.class public Lcom/appsflyer/internal/AFc1fSDK;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final $$a:[B = null

.field public static final $$b:I = 0x0

.field private static $10:I = 0x0

.field private static $11:I = 0x1

.field private static AFLogger$LogLevel:[B

.field private static AFVersionDeclaration:[B

.field private static AppsFlyer2dXConversionCallback:[B

.field private static afErrorLogForExcManagerOnly:Ljava/lang/Object;

.field private static final afLogForce:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final afRDLog:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static getLevel:Ljava/lang/Object;

.field private static init:I

.field private static onAppOpenAttributionNative:J

.field private static onInstallConversionFailureNative:I


# direct methods
.method private static $$c(ISS)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x2

    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    add-int/lit8 v1, v1, 0x4f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    rem-int/2addr v1, v0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const/16 v1, 0x72

    rem-int/2addr v1, p0

    xor-int/lit16 p0, p1, 0xc4

    and-int/lit16 p1, p1, 0xc4

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x7b

    const/16 p1, 0x39

    ushr-int/2addr p1, p2

    sget-object p2, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    new-array v4, p1, [B

    xor-int/lit8 v5, p1, 0x4d

    and-int/lit8 p1, p1, 0x4d

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr v5, p1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    neg-int p0, p0

    or-int/lit8 v1, p0, 0x77

    shl-int/lit8 v1, v1, 0x1

    xor-int/lit8 p0, p0, 0x77

    sub-int/2addr v1, p0

    xor-int/lit8 p0, p1, 0x58

    and-int/lit8 p1, p1, 0x58

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr p0, p1

    xor-int/lit8 p1, p0, -0x54

    and-int/lit8 p0, p0, -0x54

    shl-int/lit8 p0, p0, 0x1

    add-int/2addr p0, p1

    rsub-int/lit8 p1, p2, 0x24

    sget-object p2, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    new-array v4, p1, [B

    not-int v5, p1

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr v5, p1

    if-nez p2, :cond_0

    :goto_0
    add-int/lit8 p1, v2, 0x11

    rem-int/lit16 v6, p1, 0x80

    sput v6, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    rem-int/2addr p1, v0

    add-int/lit8 v2, v2, 0x75

    rem-int/lit16 p1, v2, 0x80

    sput p1, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    rem-int/2addr v2, v0

    const/4 p1, 0x0

    move v2, p0

    goto :goto_2

    :goto_1
    int-to-byte v2, v1

    aput-byte v2, v4, p1

    xor-int/lit8 v2, p0, 0x1c

    and-int/lit8 p0, p0, 0x1c

    shl-int/lit8 p0, p0, 0x1

    add-int/2addr v2, p0

    add-int/lit8 v2, v2, -0x1b

    if-ne p1, v5, :cond_2

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v4, v3}, Ljava/lang/String;-><init>([BI)V

    return-object p0

    :cond_2
    xor-int/lit8 p0, p1, 0x1

    and-int/lit8 p1, p1, 0x1

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr p0, p1

    aget-byte p1, p2, v2

    sget v6, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    xor-int/lit8 v7, v6, 0x31

    and-int/lit8 v6, v6, 0x31

    shl-int/lit8 v6, v6, 0x1

    add-int/2addr v7, v6

    rem-int/lit16 v6, v7, 0x80

    sput v6, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    rem-int/2addr v7, v0

    move v8, p1

    move p1, p0

    move p0, v8

    :goto_2
    neg-int p0, p0

    and-int v6, v1, p0

    or-int/2addr p0, v1

    add-int/2addr v6, p0

    add-int/lit8 v1, v6, 0x1

    sget p0, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    xor-int/lit8 v6, p0, 0x4d

    and-int/lit8 p0, p0, 0x4d

    shl-int/lit8 p0, p0, 0x1

    add-int/2addr v6, p0

    rem-int/lit16 p0, v6, 0x80

    sput p0, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    rem-int/2addr v6, v0

    move p0, v2

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 46

    const-class v1, [B

    invoke-static {}, Lcom/appsflyer/internal/AFc1fSDK;->init$0()V

    const-wide v2, -0x514d53cbfa02e07fL    # -9.61186380690735E-84

    .line 1000
    sput-wide v2, Lcom/appsflyer/internal/AFc1fSDK;->onAppOpenAttributionNative:J

    const v2, 0x17f47e04    # 1.5799941E-24f

    sput v2, Lcom/appsflyer/internal/AFc1fSDK;->init:I

    const/16 v2, 0x8

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    sput-object v2, Lcom/appsflyer/internal/AFc1fSDK;->AppsFlyer2dXConversionCallback:[B

    const/4 v2, 0x3

    sput v2, Lcom/appsflyer/internal/AFc1fSDK;->onInstallConversionFailureNative:I

    .line 85
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/appsflyer/internal/AFc1fSDK;->afLogForce:Ljava/util/Map;

    .line 86
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/appsflyer/internal/AFc1fSDK;->afRDLog:Ljava/util/Map;

    .line 92
    :try_start_0
    sget-object v3, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v4, 0xe1

    aget-byte v5, v3, v4

    int-to-byte v5, v5

    xor-int/lit16 v6, v5, 0x160

    and-int/lit16 v7, v5, 0x160

    or-int/2addr v6, v7

    int-to-short v6, v6

    const/4 v7, 0x6

    aget-byte v8, v3, v7

    int-to-byte v8, v8

    invoke-static {v5, v6, v8}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    .line 96
    sget-object v6, Lcom/appsflyer/internal/AFc1fSDK;->afErrorLogForExcManagerOnly:Ljava/lang/Object;

    const/4 v8, 0x0

    if-nez v6, :cond_0

    aget-byte v6, v3, v4

    int-to-byte v6, v6

    const/16 v9, 0x399

    int-to-short v9, v9

    const/16 v10, 0x194

    aget-byte v10, v3, v10

    int-to-byte v10, v10

    invoke-static {v6, v9, v10}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_10

    goto :goto_0

    :cond_0
    move-object v6, v8

    :goto_0
    const/16 v9, 0x1f

    const/16 v10, 0x15

    .line 1793
    :try_start_1
    aget-byte v11, v3, v9

    int-to-byte v11, v11

    const/16 v12, 0x2ae

    int-to-short v12, v12

    const/16 v13, 0x1d

    aget-byte v13, v3, v13

    int-to-byte v13, v13

    invoke-static {v11, v12, v13}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v11

    .line 1794
    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    aget-byte v12, v3, v4

    int-to-byte v12, v12

    const/16 v13, 0x78

    aget-byte v13, v3, v13

    int-to-short v13, v13

    const/16 v14, 0x7a

    aget-byte v3, v3, v14

    int-to-byte v3, v3

    invoke-static {v12, v13, v3}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v3

    .line 1795
    invoke-virtual {v11, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object v11, v8

    check-cast v11, [Ljava/lang/Object;

    .line 1796
    invoke-virtual {v3, v8, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v3, :cond_1

    goto :goto_1

    :catch_0
    move-object v3, v8

    .line 1807
    :cond_1
    :try_start_2
    sget-object v11, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v12, v11, v9

    int-to-byte v12, v12

    const/16 v13, 0x1b4

    int-to-short v13, v13

    const/16 v14, 0xc

    aget-byte v14, v11, v14

    int-to-byte v14, v14

    invoke-static {v12, v13, v14}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v12

    .line 1808
    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aget-byte v13, v11, v10

    int-to-byte v13, v13

    xor-int/lit16 v14, v13, 0x309

    and-int/lit16 v15, v13, 0x309

    or-int/2addr v14, v15

    int-to-short v14, v14

    const/16 v15, 0xba

    aget-byte v11, v11, v15

    int-to-byte v11, v11

    invoke-static {v13, v14, v11}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v11

    .line 1809
    invoke-virtual {v12, v11, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    move-object v12, v8

    check-cast v12, [Ljava/lang/Object;

    .line 1810
    invoke-virtual {v11, v8, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    nop

    :goto_1
    if-eqz v3, :cond_2

    .line 113
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    sget-object v12, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v13, v12, v10

    int-to-byte v13, v13

    int-to-short v14, v4

    const/16 v15, 0x1a3

    aget-byte v12, v12, v15

    int-to-byte v12, v12

    invoke-static {v13, v14, v12}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v12

    move-object v13, v8

    check-cast v13, [Ljava/lang/Class;

    .line 114
    invoke-virtual {v11, v12, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    move-object v12, v8

    check-cast v12, [Ljava/lang/Object;

    .line 115
    invoke-virtual {v11, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    nop

    :cond_2
    move-object v11, v8

    :goto_2
    if-eqz v3, :cond_3

    .line 125
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v14, v13, v10

    int-to-byte v14, v14

    xor-int/lit16 v15, v14, 0x12e

    and-int/lit16 v7, v14, 0x12e

    or-int/2addr v7, v15

    int-to-short v7, v7

    const/16 v15, 0xf

    aget-byte v13, v13, v15

    int-to-byte v13, v13

    invoke-static {v14, v7, v13}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v7

    move-object v13, v8

    check-cast v13, [Ljava/lang/Class;

    .line 126
    invoke-virtual {v12, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    move-object v12, v8

    check-cast v12, [Ljava/lang/Object;

    .line 127
    invoke-virtual {v7, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    nop

    :cond_3
    move-object v7, v8

    :goto_3
    const/4 v12, 0x2

    if-eqz v3, :cond_4

    .line 3755
    sget v13, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    and-int/lit8 v14, v13, 0x15

    or-int/2addr v13, v10

    add-int/2addr v14, v13

    rem-int/lit16 v13, v14, 0x80

    sput v13, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    rem-int/2addr v14, v12

    .line 137
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    sget-object v14, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v15, v14, v10

    int-to-byte v15, v15

    xor-int/lit16 v2, v15, 0xe5

    and-int/lit16 v12, v15, 0xe5

    or-int/2addr v2, v12

    int-to-short v2, v2

    const/16 v12, 0x1a3

    aget-byte v12, v14, v12

    int-to-byte v12, v12

    invoke-static {v15, v2, v12}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v2

    move-object v12, v8

    check-cast v12, [Ljava/lang/Class;

    .line 138
    invoke-virtual {v13, v2, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v12, v8

    check-cast v12, [Ljava/lang/Object;

    .line 139
    invoke-virtual {v2, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    nop

    :cond_4
    move-object v2, v8

    :goto_4
    const/16 v3, 0x165

    const/16 v12, 0x75

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v11, :cond_5

    goto :goto_5

    :cond_5
    if-nez v6, :cond_6

    move-object v11, v8

    goto :goto_5

    .line 147
    :cond_6
    :try_start_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v19, 0x30d

    aget-byte v19, v15, v19

    or-int/lit8 v20, v19, 0x1

    shl-int/lit8 v20, v20, 0x1

    xor-int/lit8 v19, v19, 0x1

    sub-int v8, v20, v19

    int-to-byte v8, v8

    const/16 v10, 0x23b

    int-to-short v10, v10

    const/16 v20, 0x1a3

    aget-byte v4, v15, v20

    int-to-byte v4, v4

    invoke-static {v8, v10, v4}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_10

    :try_start_7
    new-array v6, v14, [Ljava/lang/Object;

    aput-object v4, v6, v13

    aget-byte v4, v15, v12

    int-to-byte v4, v4

    xor-int/lit16 v8, v4, 0x320

    and-int/lit16 v10, v4, 0x320

    or-int/2addr v8, v10

    int-to-short v8, v8

    aget-byte v10, v15, v3

    int-to-byte v10, v10

    invoke-static {v4, v8, v10}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    new-array v8, v14, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v13

    invoke-virtual {v4, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_51

    :goto_5
    const/16 v4, 0xfc

    if-eqz v2, :cond_7

    goto :goto_6

    .line 151
    :cond_7
    :try_start_8
    sget-object v2, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v6, v2, v12

    int-to-byte v6, v6

    const/16 v8, 0x289

    int-to-short v8, v8

    aget-byte v10, v2, v9

    int-to-byte v10, v10

    invoke-static {v6, v8, v10}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v6
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_10

    :try_start_9
    new-array v8, v14, [Ljava/lang/Object;

    aput-object v6, v8, v13

    aget-byte v6, v2, v12

    int-to-byte v6, v6

    aget-byte v10, v2, v4

    int-to-short v10, v10

    const/16 v15, 0xe1

    aget-byte v4, v2, v15

    int-to-byte v4, v4

    invoke-static {v6, v10, v4}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v6, 0x15

    aget-byte v10, v2, v6

    int-to-byte v6, v10

    xor-int/lit16 v10, v6, 0x286

    and-int/lit16 v15, v6, 0x286

    or-int/2addr v10, v15

    int-to-short v10, v10

    const/16 v15, 0x1a3

    aget-byte v15, v2, v15

    int-to-byte v15, v15

    invoke-static {v6, v10, v15}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v6

    new-array v10, v14, [Ljava/lang/Class;

    const-class v15, Ljava/lang/String;

    aput-object v15, v10, v13

    invoke-virtual {v4, v6, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_50

    :try_start_a
    new-array v6, v14, [Ljava/lang/Object;

    aput-object v4, v6, v13

    aget-byte v4, v2, v12

    int-to-byte v4, v4

    xor-int/lit16 v8, v4, 0x320

    and-int/lit16 v10, v4, 0x320

    or-int/2addr v8, v10

    int-to-short v8, v8

    aget-byte v2, v2, v3

    int-to-byte v2, v2

    invoke-static {v4, v8, v2}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v4, v14, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v4, v13

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4f

    :goto_6
    if-nez v7, :cond_9

    if-eqz v11, :cond_9

    .line 282
    sget v4, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    add-int/lit8 v4, v4, 0xd

    rem-int/lit16 v6, v4, 0x80

    sput v6, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    const/4 v6, 0x2

    rem-int/2addr v4, v6

    .line 159
    :try_start_b
    sget-object v4, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v6, 0xe1

    aget-byte v7, v4, v6

    int-to-byte v6, v7

    xor-int/lit16 v7, v6, 0x102

    and-int/lit16 v8, v6, 0x102

    or-int/2addr v7, v8

    int-to-short v7, v7

    const/16 v8, 0x25e

    aget-byte v8, v4, v8

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v6
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_10

    const/4 v7, 0x2

    :try_start_c
    new-array v8, v7, [Ljava/lang/Object;

    aput-object v6, v8, v14

    aput-object v11, v8, v13

    aget-byte v6, v4, v12

    int-to-byte v6, v6

    xor-int/lit16 v7, v6, 0x320

    and-int/lit16 v10, v6, 0x320

    or-int/2addr v7, v10

    int-to-short v7, v7

    aget-byte v10, v4, v3

    int-to-byte v10, v10

    invoke-static {v6, v7, v10}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aget-byte v7, v4, v12

    int-to-byte v7, v7

    xor-int/lit16 v10, v7, 0x320

    and-int/lit16 v15, v7, 0x320

    or-int/2addr v10, v15

    int-to-short v10, v10

    aget-byte v4, v4, v3

    int-to-byte v4, v4

    invoke-static {v7, v10, v4}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v7, 0x2

    new-array v10, v7, [Ljava/lang/Class;

    aput-object v4, v10, v13

    const-class v4, Ljava/lang/String;

    aput-object v4, v10, v14

    invoke-virtual {v6, v10}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_d
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_8

    throw v2

    :cond_8
    throw v1

    .line 162
    :cond_9
    :goto_7
    sget-object v4, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v6, v4, v12

    int-to-byte v6, v6

    xor-int/lit16 v8, v6, 0x320

    and-int/lit16 v10, v6, 0x320

    or-int/2addr v8, v10

    int-to-short v8, v8

    aget-byte v10, v4, v3

    int-to-byte v10, v10

    invoke-static {v6, v8, v10}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v8, 0x7

    invoke-static {v6, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v10, v6, v13

    aput-object v7, v6, v14

    const/4 v10, 0x2

    aput-object v11, v6, v10

    const/4 v10, 0x3

    aput-object v2, v6, v10

    const/4 v10, 0x4

    aput-object v7, v6, v10

    const/4 v7, 0x5

    aput-object v11, v6, v7

    const/4 v7, 0x6

    aput-object v2, v6, v7

    .line 196
    new-array v2, v8, [Z

    fill-array-data v2, :array_1

    .line 200
    new-array v7, v8, [Z

    fill-array-data v7, :array_2

    .line 204
    new-array v11, v8, [Z

    aput-boolean v13, v11, v13

    aput-boolean v13, v11, v14

    const/4 v15, 0x2

    aput-boolean v14, v11, v15

    const/4 v15, 0x3

    aput-boolean v14, v11, v15

    aput-boolean v13, v11, v10

    const/4 v15, 0x5

    aput-boolean v14, v11, v15

    const/4 v15, 0x6

    aput-boolean v14, v11, v15
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_10

    const/16 v15, 0x3c

    .line 213
    :try_start_e
    aget-byte v8, v4, v9

    int-to-byte v8, v8

    const/16 v9, 0x64

    int-to-short v9, v9

    aget-byte v3, v4, v15

    int-to-byte v3, v3

    invoke-static {v8, v9, v3}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/16 v8, 0x63

    .line 214
    aget-byte v8, v4, v8

    int-to-byte v8, v8

    const/16 v9, 0x24e

    int-to-short v9, v9

    const/16 v22, 0x31a

    aget-byte v4, v4, v22

    int-to-byte v4, v4

    invoke-static {v8, v9, v4}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3
    :try_end_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_e} :catch_6
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_10

    const/16 v4, 0x22

    if-lt v3, v4, :cond_a

    const/4 v4, 0x1

    goto :goto_8

    :cond_a
    const/4 v4, 0x0

    :goto_8
    const/16 v8, 0x1d

    if-ne v3, v8, :cond_b

    goto :goto_9

    :cond_b
    const/16 v8, 0x1a

    if-lt v3, v8, :cond_c

    const/4 v8, 0x1

    goto :goto_a

    :cond_c
    :goto_9
    const/4 v8, 0x0

    .line 221
    :goto_a
    :try_start_f
    aput-boolean v8, v11, v13
    :try_end_f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_10

    const/16 v8, 0x15

    if-lt v3, v8, :cond_d

    const/4 v9, 0x2

    .line 282
    rem-int v18, v9, v9

    const/4 v9, 0x1

    goto :goto_b

    :cond_d
    const/4 v9, 0x0

    .line 224
    :goto_b
    :try_start_10
    aput-boolean v9, v11, v14

    if-lt v3, v8, :cond_e

    const/4 v3, 0x1

    goto :goto_c

    :cond_e
    const/4 v3, 0x0

    .line 225
    :goto_c
    aput-boolean v3, v11, v10
    :try_end_10
    .catch Ljava/lang/ClassNotFoundException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_10

    goto :goto_d

    :catch_5
    nop

    goto :goto_d

    :catch_6
    nop

    const/4 v4, 0x0

    :goto_d
    const/4 v3, 0x0

    const/4 v8, 0x0

    :goto_e
    if-eqz v3, :cond_f

    goto/16 :goto_43

    :cond_f
    const/16 v9, 0x9

    if-ge v8, v9, :cond_62

    .line 238
    :try_start_11
    aget-boolean v9, v11, v8
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_10

    if-eqz v9, :cond_61

    .line 242
    :try_start_12
    aget-boolean v10, v2, v8

    aget-object v15, v6, v8

    aget-boolean v24, v7, v8
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4d

    if-eqz v10, :cond_14

    if-eqz v15, :cond_11

    .line 2317
    :try_start_13
    sget-object v26, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v14, v26, v12

    int-to-byte v14, v14

    or-int/lit16 v12, v14, 0x320

    int-to-short v12, v12

    const/16 v21, 0x165

    aget-byte v9, v26, v21

    int-to-byte v9, v9

    invoke-static {v14, v12, v9}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const/16 v12, 0xe1

    aget-byte v14, v26, v12

    int-to-byte v12, v14

    const/16 v14, 0x2e4

    int-to-short v14, v14

    const/16 v28, 0x2c

    aget-byte v13, v26, v28

    int-to-byte v13, v13

    invoke-static {v12, v14, v13}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v9, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    invoke-virtual {v9, v15, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    if-nez v9, :cond_14

    goto :goto_f

    :catchall_1
    move-exception v0

    move-object v9, v0

    :try_start_14
    invoke-virtual {v9}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v10

    if-eqz v10, :cond_10

    throw v10

    :cond_10
    throw v9

    .line 2321
    :cond_11
    :goto_f
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v12, 0xfc

    aget-byte v13, v10, v12

    int-to-byte v12, v13

    const/16 v13, 0x194

    int-to-short v13, v13

    const/16 v14, 0xc1

    aget-byte v14, v10, v14

    int-to-byte v14, v14

    invoke-static {v12, v13, v14}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v12, 0x4e

    int-to-byte v12, v12

    const/16 v13, 0x102

    int-to-short v13, v13

    const/16 v14, 0x149

    aget-byte v14, v10, v14

    int-to-byte v14, v14

    invoke-static {v12, v13, v14}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4d

    .line 2500
    sget v12, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    and-int/lit8 v13, v12, 0x77

    or-int/lit8 v12, v12, 0x77

    add-int/2addr v13, v12

    rem-int/lit16 v12, v13, 0x80

    sput v12, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    const/4 v12, 0x2

    rem-int/2addr v13, v12

    if-eqz v13, :cond_12

    goto :goto_10

    .line 282
    :cond_12
    rem-int v13, v12, v12

    :goto_10
    const/4 v12, 0x1

    .line 2321
    :try_start_15
    new-array v13, v12, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v9, v13, v12

    const/16 v9, 0x75

    aget-byte v12, v10, v9

    int-to-byte v9, v12

    const/16 v12, 0x2eb

    int-to-short v12, v12

    const/16 v14, 0x2cf

    aget-byte v10, v10, v14

    int-to-byte v10, v10

    invoke-static {v9, v12, v10}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const/4 v10, 0x1

    new-array v12, v10, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v10, v12, v14

    invoke-virtual {v9, v12}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Throwable;

    throw v9
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    :catchall_2
    move-exception v0

    move-object v9, v0

    :try_start_16
    invoke-virtual {v9}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v10

    if-eqz v10, :cond_13

    throw v10

    :cond_13
    throw v9
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4d

    :cond_14
    if-eqz v10, :cond_27

    .line 2336
    :try_start_17
    new-instance v12, Ljava/util/Random;

    invoke-direct {v12}, Ljava/util/Random;-><init>()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_10

    .line 2500
    sget v13, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    and-int/lit8 v14, v13, 0x25

    or-int/lit8 v13, v13, 0x25

    add-int/2addr v14, v13

    rem-int/lit16 v13, v14, 0x80

    sput v13, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    const/4 v13, 0x2

    rem-int/2addr v14, v13

    .line 2337
    :try_start_18
    sget-object v13, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v14, 0x75

    aget-byte v9, v13, v14
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_e

    int-to-byte v9, v9

    move-object/from16 v28, v2

    const/16 v14, 0xfc

    :try_start_19
    aget-byte v2, v13, v14
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_d

    int-to-short v2, v2

    move/from16 v29, v3

    const/16 v14, 0xe1

    :try_start_1a
    aget-byte v3, v13, v14

    int-to-byte v3, v3

    invoke-static {v9, v2, v3}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aget-byte v3, v13, v14

    int-to-byte v3, v3

    const/16 v9, 0x362

    int-to-short v9, v9

    const/16 v14, 0x24

    aget-byte v13, v13, v14

    neg-int v13, v13

    int-to-byte v13, v13

    invoke-static {v3, v9, v13}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x0

    invoke-virtual {v2, v3, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v9, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_c

    const-wide/32 v13, -0x5d011b96

    xor-long/2addr v2, v13

    :try_start_1b
    invoke-virtual {v12, v2, v3}, Ljava/util/Random;->setSeed(J)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    :goto_11
    if-nez v2, :cond_25

    if-nez v3, :cond_15

    move-object/from16 v30, v2

    const/4 v14, 0x6

    goto :goto_12

    :cond_15
    if-nez v9, :cond_16

    const/4 v14, 0x5

    move-object/from16 v30, v2

    goto :goto_12

    :cond_16
    if-nez v13, :cond_17

    move-object/from16 v30, v2

    const/4 v14, 0x4

    goto :goto_12

    :cond_17
    move-object/from16 v30, v2

    const/4 v14, 0x3

    .line 2355
    :goto_12
    new-instance v2, Ljava/lang/StringBuilder;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_b

    move-object/from16 v31, v5

    add-int/lit8 v5, v14, 0x1

    :try_start_1c
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v5, 0x2e

    .line 2357
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_a

    const/4 v5, 0x0

    :goto_13
    if-ge v5, v14, :cond_1a

    move-object/from16 v32, v6

    move-object/from16 v33, v7

    const/4 v6, 0x1

    xor-int/lit8 v7, v24, 0x1

    if-eq v7, v6, :cond_19

    const/16 v7, 0x1a

    .line 2363
    :try_start_1d
    invoke-virtual {v12, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    .line 2364
    invoke-virtual {v12}, Ljava/util/Random;->nextBoolean()Z

    move-result v27
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_f

    if-eqz v27, :cond_18

    or-int/lit8 v27, v7, 0x41

    shl-int/lit8 v27, v27, 0x1

    xor-int/lit8 v7, v7, 0x41

    sub-int v27, v27, v7

    move/from16 v6, v27

    goto :goto_14

    :cond_18
    neg-int v7, v7

    neg-int v7, v7

    xor-int/lit8 v34, v7, 0x60

    and-int/lit8 v7, v7, 0x60

    shl-int/2addr v7, v6

    add-int v6, v34, v7

    const/4 v7, 0x2

    .line 282
    rem-int v18, v7, v7

    :goto_14
    int-to-char v6, v6

    .line 2369
    :try_start_1e
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_15

    :cond_19
    const/16 v6, 0xc

    .line 2373
    invoke-virtual {v12, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int/lit16 v6, v6, 0x2000

    int-to-char v6, v6

    .line 2374
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_15
    xor-int/lit8 v6, v5, 0x1

    and-int/lit8 v5, v5, 0x1

    const/4 v7, 0x1

    shl-int/2addr v5, v7

    add-int/2addr v5, v6

    move-object/from16 v6, v32

    move-object/from16 v7, v33

    goto :goto_13

    :cond_1a
    move-object/from16 v32, v6

    move-object/from16 v33, v7

    .line 2378
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_f

    if-nez v3, :cond_1c

    .line 2500
    sget v3, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    xor-int/lit8 v5, v3, 0x4b

    and-int/lit8 v3, v3, 0x4b

    const/4 v6, 0x1

    shl-int/2addr v3, v6

    add-int/2addr v5, v3

    rem-int/lit16 v3, v5, 0x80

    sput v3, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    const/4 v3, 0x2

    rem-int/2addr v5, v3

    .line 2382
    :try_start_1f
    new-array v5, v3, [Ljava/lang/Object;

    aput-object v2, v5, v6

    const/4 v2, 0x0

    aput-object v15, v5, v2

    sget-object v2, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v3, 0x75

    aget-byte v6, v2, v3

    int-to-byte v3, v6

    xor-int/lit16 v6, v3, 0x320

    and-int/lit16 v7, v3, 0x320

    or-int/2addr v6, v7

    int-to-short v6, v6

    const/16 v7, 0x165

    aget-byte v14, v2, v7

    int-to-byte v7, v14

    invoke-static {v3, v6, v7}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/16 v6, 0x75

    aget-byte v7, v2, v6

    int-to-byte v6, v7

    xor-int/lit16 v7, v6, 0x320

    and-int/lit16 v14, v6, 0x320

    or-int/2addr v7, v14

    int-to-short v7, v7

    const/16 v14, 0x165

    aget-byte v2, v2, v14

    int-to-byte v2, v2

    invoke-static {v6, v7, v2}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v2, v7, v6

    const-class v2, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v2, v7, v6

    invoke-virtual {v3, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_3

    move-object v3, v2

    :goto_16
    move-object/from16 v36, v12

    move-object/from16 v2, v30

    goto/16 :goto_17

    :catchall_3
    move-exception v0

    move-object v2, v0

    :try_start_20
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_1b

    throw v3

    :cond_1b
    throw v2
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_f

    :cond_1c
    if-nez v9, :cond_1e

    const/4 v5, 0x2

    .line 2386
    :try_start_21
    new-array v6, v5, [Ljava/lang/Object;

    const/4 v5, 0x1

    aput-object v2, v6, v5

    const/4 v2, 0x0

    aput-object v15, v6, v2

    sget-object v2, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v5, 0x75

    aget-byte v7, v2, v5

    int-to-byte v5, v7

    xor-int/lit16 v7, v5, 0x320

    and-int/lit16 v9, v5, 0x320

    or-int/2addr v7, v9

    int-to-short v7, v7

    const/16 v9, 0x165

    aget-byte v14, v2, v9

    int-to-byte v9, v14

    invoke-static {v5, v7, v9}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v7, 0x75

    aget-byte v9, v2, v7

    int-to-byte v7, v9

    xor-int/lit16 v9, v7, 0x320

    and-int/lit16 v14, v7, 0x320

    or-int/2addr v9, v14

    int-to-short v9, v9

    const/16 v14, 0x165

    aget-byte v2, v2, v14

    int-to-byte v2, v2

    invoke-static {v7, v9, v2}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v7, 0x2

    new-array v9, v7, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v2, v9, v7

    const-class v2, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v2, v9, v7

    invoke-virtual {v5, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_4

    move-object v9, v2

    goto :goto_16

    :catchall_4
    move-exception v0

    move-object v2, v0

    :try_start_22
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_1d

    throw v3

    :cond_1d
    throw v2
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_f

    :cond_1e
    if-nez v13, :cond_20

    const/4 v5, 0x2

    .line 2390
    :try_start_23
    new-array v6, v5, [Ljava/lang/Object;

    const/4 v5, 0x1

    aput-object v2, v6, v5

    const/4 v2, 0x0

    aput-object v15, v6, v2

    sget-object v2, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v5, 0x75

    aget-byte v7, v2, v5

    int-to-byte v5, v7

    or-int/lit16 v7, v5, 0x320

    int-to-short v7, v7

    const/16 v13, 0x165

    aget-byte v14, v2, v13

    int-to-byte v13, v14

    invoke-static {v5, v7, v13}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v7, 0x75

    aget-byte v13, v2, v7

    int-to-byte v7, v13

    xor-int/lit16 v13, v7, 0x320

    and-int/lit16 v14, v7, 0x320

    or-int/2addr v13, v14

    int-to-short v13, v13

    const/16 v14, 0x165

    aget-byte v2, v2, v14

    int-to-byte v2, v2

    invoke-static {v7, v13, v2}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v7, 0x2

    new-array v13, v7, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v2, v13, v7

    const-class v2, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v2, v13, v7

    invoke-virtual {v5, v13}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_5

    move-object v13, v2

    goto/16 :goto_16

    :catchall_5
    move-exception v0

    move-object v2, v0

    :try_start_24
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_1f

    throw v3

    :cond_1f
    throw v2
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_f

    :cond_20
    const/4 v5, 0x2

    .line 2394
    :try_start_25
    new-array v6, v5, [Ljava/lang/Object;

    const/4 v5, 0x1

    aput-object v2, v6, v5

    const/4 v2, 0x0

    aput-object v15, v6, v2

    sget-object v2, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v5, 0x75

    aget-byte v7, v2, v5

    int-to-byte v5, v7

    xor-int/lit16 v7, v5, 0x320

    and-int/lit16 v14, v5, 0x320

    or-int/2addr v7, v14

    int-to-short v7, v7

    move-object/from16 v34, v3

    const/16 v14, 0x165

    aget-byte v3, v2, v14

    int-to-byte v3, v3

    invoke-static {v5, v7, v3}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/16 v5, 0x75

    aget-byte v7, v2, v5

    int-to-byte v5, v7

    xor-int/lit16 v7, v5, 0x320

    and-int/lit16 v14, v5, 0x320

    or-int/2addr v7, v14

    int-to-short v7, v7

    move-object/from16 v35, v9

    const/16 v14, 0x165

    aget-byte v9, v2, v14

    int-to-byte v9, v9

    invoke-static {v5, v7, v9}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v7, 0x2

    new-array v9, v7, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v5, v9, v7

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v9, v7

    invoke-virtual {v3, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_9

    .line 2399
    :try_start_26
    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/16 v6, 0x75

    aget-byte v7, v2, v6

    int-to-byte v6, v7

    or-int/lit16 v7, v6, 0x2c0

    int-to-short v7, v7

    const/16 v9, 0x3c

    aget-byte v14, v2, v9

    int-to-byte v9, v14

    invoke-static {v6, v7, v9}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/16 v7, 0x75

    aget-byte v9, v2, v7

    int-to-byte v7, v9

    or-int/lit16 v9, v7, 0x320

    int-to-short v9, v9

    move-object/from16 v36, v12

    const/16 v14, 0x165

    aget-byte v12, v2, v14

    int-to-byte v12, v12

    invoke-static {v7, v9, v12}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v9, 0x1

    new-array v12, v9, [Ljava/lang/Class;

    const/4 v9, 0x0

    aput-object v7, v12, v9

    invoke-virtual {v6, v12}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_7

    .line 2500
    sget v6, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    add-int/lit8 v6, v6, 0x5

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    const/4 v7, 0x2

    rem-int/2addr v6, v7

    const/16 v6, 0x75

    .line 2399
    :try_start_27
    aget-byte v7, v2, v6

    int-to-byte v6, v7

    xor-int/lit16 v7, v6, 0x2c0

    and-int/lit16 v9, v6, 0x2c0

    or-int/2addr v7, v9

    int-to-short v7, v7

    const/16 v9, 0x3c

    aget-byte v12, v2, v9

    int-to-byte v9, v12

    invoke-static {v6, v7, v9}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/16 v7, 0xe1

    aget-byte v9, v2, v7

    int-to-byte v7, v9

    const/16 v9, 0x26c

    int-to-short v9, v9

    const/16 v12, 0xc1

    aget-byte v2, v2, v12

    int-to-byte v2, v2

    invoke-static {v7, v9, v2}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_6

    move-object v2, v3

    move-object/from16 v3, v34

    move-object/from16 v9, v35

    :goto_17
    move-object/from16 v5, v31

    move-object/from16 v6, v32

    move-object/from16 v7, v33

    move-object/from16 v12, v36

    goto/16 :goto_11

    :catchall_6
    move-exception v0

    move-object v2, v0

    :try_start_28
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_21

    throw v5

    :cond_21
    throw v2

    :catchall_7
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_22

    throw v5

    :cond_22
    throw v2
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_7
    .catchall {:try_start_28 .. :try_end_28} :catchall_f

    :catch_7
    move-exception v0

    move-object v2, v0

    .line 2403
    :try_start_29
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v7, 0xfc

    aget-byte v9, v6, v7

    int-to-byte v7, v9

    const/16 v9, 0x348

    int-to-short v9, v9

    const/16 v10, 0xc1

    aget-byte v10, v6, v10

    int-to-byte v10, v10

    invoke-static {v7, v9, v10}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x4e

    int-to-byte v3, v3

    const/16 v7, 0x102

    int-to-short v7, v7

    const/16 v9, 0x149

    aget-byte v9, v6, v9

    int-to-byte v9, v9

    invoke-static {v3, v7, v9}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_f

    const/4 v5, 0x2

    :try_start_2a
    new-array v7, v5, [Ljava/lang/Object;

    const/4 v5, 0x1

    aput-object v2, v7, v5

    const/4 v2, 0x0

    aput-object v3, v7, v2

    const/16 v2, 0x75

    aget-byte v3, v6, v2

    int-to-byte v2, v3

    const/16 v3, 0x2eb

    int-to-short v3, v3

    const/16 v5, 0x2cf

    aget-byte v6, v6, v5

    int-to-byte v5, v6

    invoke-static {v2, v3, v5}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

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
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_8

    :catchall_8
    move-exception v0

    move-object v2, v0

    :try_start_2b
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_23

    throw v3

    :cond_23
    throw v2

    :catchall_9
    move-exception v0

    move-object v2, v0

    .line 2394
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_24

    throw v3

    :cond_24
    throw v2

    :catchall_a
    move-exception v0

    goto :goto_1b

    :cond_25
    move-object/from16 v30, v2

    move-object/from16 v34, v3

    move-object/from16 v31, v5

    move-object/from16 v32, v6

    move-object/from16 v33, v7

    move-object/from16 v35, v9

    move-object/from16 v6, v34

    goto :goto_1e

    :catchall_b
    move-exception v0

    goto :goto_1a

    :catchall_c
    move-exception v0

    goto :goto_19

    :catchall_d
    move-exception v0

    goto :goto_18

    :catchall_e
    move-exception v0

    move-object/from16 v28, v2

    :goto_18
    move/from16 v29, v3

    :goto_19
    move-object/from16 v31, v5

    move-object/from16 v32, v6

    move-object/from16 v33, v7

    move-object v2, v0

    .line 2337
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_26

    throw v3

    :cond_26
    throw v2
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_f

    :catchall_f
    move-exception v0

    goto :goto_1c

    :catchall_10
    move-exception v0

    move-object/from16 v28, v2

    move/from16 v29, v3

    :goto_1a
    move-object/from16 v31, v5

    :goto_1b
    move-object/from16 v32, v6

    move-object/from16 v33, v7

    :goto_1c
    move-object v2, v0

    move/from16 v39, v4

    move/from16 v37, v8

    move-object/from16 v36, v11

    :goto_1d
    const/16 v8, 0xe1

    const/16 v11, 0x15

    const/16 v14, 0x1f

    goto/16 :goto_40

    :cond_27
    move-object/from16 v28, v2

    move/from16 v29, v3

    move-object/from16 v31, v5

    move-object/from16 v32, v6

    move-object/from16 v33, v7

    const/4 v6, 0x0

    const/4 v13, 0x0

    const/16 v30, 0x0

    const/16 v35, 0x0

    :goto_1e
    const/16 v2, 0x1ade

    .line 2416
    :try_start_2c
    new-array v2, v2, [B

    .line 2417
    const-class v3, Lcom/appsflyer/internal/AFc1fSDK;

    sget-object v5, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v7, 0x30d

    aget-byte v7, v5, v7

    const/4 v9, 0x1

    add-int/2addr v7, v9

    int-to-byte v7, v7

    const/16 v9, 0x270

    int-to-short v9, v9

    const/16 v12, 0x1d

    aget-byte v12, v5, v12

    int-to-byte v12, v12

    invoke-static {v7, v9, v12}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v7

    .line 2418
    invoke-virtual {v3, v7}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_4c

    const/4 v7, 0x1

    :try_start_2d
    new-array v9, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v9, v7

    const/16 v3, 0x75

    aget-byte v7, v5, v3

    int-to-byte v12, v7

    const/16 v14, 0x1d3

    int-to-short v14, v14

    int-to-byte v7, v7

    invoke-static {v12, v14, v7}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aget-byte v12, v5, v3

    int-to-byte v3, v12

    or-int/lit16 v12, v3, 0x3b2

    int-to-short v12, v12

    move-object/from16 v24, v6

    const/16 v15, 0x2cf

    aget-byte v6, v5, v15

    int-to-byte v6, v6

    invoke-static {v3, v12, v6}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v6, 0x1

    new-array v12, v6, [Ljava/lang/Class;

    const/4 v15, 0x0

    aput-object v3, v12, v15

    invoke-virtual {v7, v12}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_4b

    .line 2500
    sget v7, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    or-int/lit8 v9, v7, 0x23

    shl-int/2addr v9, v6

    xor-int/lit8 v7, v7, 0x23

    sub-int/2addr v9, v7

    rem-int/lit16 v7, v9, 0x80

    sput v7, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    const/4 v7, 0x2

    rem-int/2addr v9, v7

    .line 2419
    :try_start_2e
    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v7, v6

    const/16 v6, 0x75

    aget-byte v9, v5, v6

    int-to-byte v6, v9

    int-to-byte v9, v9

    invoke-static {v6, v14, v9}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/16 v9, 0x17

    aget-byte v9, v5, v9

    int-to-byte v9, v9

    const/16 v12, 0xb9

    int-to-short v12, v12

    const/16 v15, 0x372

    aget-byte v15, v5, v15

    neg-int v15, v15

    int-to-byte v15, v15

    invoke-static {v9, v12, v15}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x1

    new-array v15, v12, [Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v1, v15, v12

    invoke-virtual {v6, v9, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_4a

    const/16 v6, 0x75

    .line 2420
    :try_start_2f
    aget-byte v7, v5, v6

    int-to-byte v6, v7

    int-to-byte v7, v7

    invoke-static {v6, v14, v7}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/16 v7, 0xe1

    aget-byte v9, v5, v7

    int-to-byte v7, v9

    const/16 v9, 0x26c

    int-to-short v9, v9

    const/16 v12, 0xc1

    aget-byte v5, v5, v12

    int-to-byte v5, v5

    invoke-static {v7, v9, v5}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_49

    const/4 v3, 0x2

    .line 282
    rem-int v12, v3, v3

    const/16 v3, 0x16

    const/16 v5, 0x1ab0

    move-object/from16 v7, v31

    const/4 v6, 0x0

    :goto_1f
    and-int/lit16 v9, v3, 0x9e

    or-int/lit16 v12, v3, 0x9e

    add-int/2addr v9, v12

    add-int/lit16 v12, v3, 0x1ac7

    .line 2432
    :try_start_30
    aget-byte v12, v2, v12

    const/4 v14, 0x1

    add-int/2addr v12, v14

    int-to-byte v12, v12

    aput-byte v12, v2, v9

    .line 2437
    array-length v9, v2
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_4c

    sub-int/2addr v9, v3

    const/4 v12, 0x3

    :try_start_31
    new-array v14, v12, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v12, 0x2

    aput-object v9, v14, v12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v12, 0x1

    aput-object v9, v14, v12

    const/4 v9, 0x0

    aput-object v2, v14, v9

    sget-object v2, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v9, 0x75

    aget-byte v12, v2, v9

    int-to-byte v9, v12

    const/16 v12, 0x7b

    int-to-short v12, v12

    const/16 v15, 0x3e

    aget-byte v15, v2, v15

    int-to-byte v15, v15

    invoke-static {v9, v12, v15}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const/4 v12, 0x3

    new-array v15, v12, [Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v1, v15, v12

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v27, 0x1

    aput-object v12, v15, v27

    const/16 v18, 0x2

    aput-object v12, v15, v18

    invoke-virtual {v9, v15}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v37, v9

    check-cast v37, Ljava/io/InputStream;
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_47

    .line 2443
    :try_start_32
    sget-object v9, Lcom/appsflyer/internal/AFc1fSDK;->afErrorLogForExcManagerOnly:Ljava/lang/Object;
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_4c

    if-nez v9, :cond_28

    .line 2447
    :try_start_33
    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v9

    shr-int/lit8 v9, v9, 0x8

    const v12, -0x3aa8f165

    add-int/2addr v9, v12

    const-wide/16 v14, 0x0

    invoke-static {v14, v15}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v12

    const/4 v14, 0x4

    rsub-int/lit8 v12, v12, 0x4

    int-to-short v12, v12

    .line 3088
    sget-wide v14, Lcom/appsflyer/internal/AFc1fSDK;->onAppOpenAttributionNative:J

    const/16 v34, 0x20

    move/from16 v43, v5

    move-object/from16 v44, v6

    ushr-long v5, v14, v34

    long-to-int v6, v5

    and-int v5, v6, v9

    not-int v5, v5

    or-int/2addr v6, v9

    and-int/2addr v5, v6

    long-to-int v6, v14

    not-int v14, v9

    and-int/2addr v14, v6

    not-int v6, v6

    and-int/2addr v6, v9

    or-int/2addr v6, v14

    filled-new-array {v5, v6}, [I

    move-result-object v38

    .line 3094
    new-instance v5, Lcom/appsflyer/internal/AFj1sSDK;

    sget v39, Lcom/appsflyer/internal/AFc1fSDK;->init:I

    sget-object v40, Lcom/appsflyer/internal/AFc1fSDK;->AppsFlyer2dXConversionCallback:[B

    sget v42, Lcom/appsflyer/internal/AFc1fSDK;->onInstallConversionFailureNative:I

    move-object/from16 v36, v5

    move/from16 v41, v12

    invoke-direct/range {v36 .. v42}, Lcom/appsflyer/internal/AFj1sSDK;-><init>(Ljava/io/InputStream;[II[BII)V
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_f

    const/4 v6, 0x2

    .line 282
    rem-int v12, v6, v6

    move-object/from16 v36, v11

    move-object/from16 v34, v13

    const/4 v9, 0x2

    const/4 v13, 0x4

    goto/16 :goto_20

    :cond_28
    move/from16 v43, v5

    move-object/from16 v44, v6

    .line 2454
    :try_start_34
    const-string v5, ""

    const-string v6, ""
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_4c

    const/4 v12, 0x4

    :try_start_35
    new-array v14, v12, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v17, 0x3

    aput-object v15, v14, v17

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v18, 0x2

    aput-object v15, v14, v18

    const/4 v15, 0x1

    aput-object v6, v14, v15

    aput-object v5, v14, v12

    const/16 v5, 0x1f

    aget-byte v6, v2, v5

    int-to-byte v5, v6

    const/16 v6, 0x2fd

    int-to-short v6, v6

    const/16 v12, 0xc

    aget-byte v12, v2, v12

    int-to-byte v12, v12

    invoke-static {v5, v6, v12}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v6, 0xc

    aget-byte v6, v2, v6

    int-to-byte v6, v6

    const/16 v12, 0xeb

    int-to-short v12, v12

    const/16 v15, 0x31a

    aget-byte v15, v2, v15

    int-to-byte v15, v15

    invoke-static {v6, v12, v15}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v6

    const/4 v12, 0x4

    new-array v15, v12, [Ljava/lang/Class;

    const-class v12, Ljava/lang/CharSequence;

    const/16 v25, 0x0

    aput-object v12, v15, v25

    const/16 v27, 0x1

    aput-object v12, v15, v27

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v18, 0x2

    aput-object v12, v15, v18

    const/16 v17, 0x3

    aput-object v12, v15, v17

    invoke-virtual {v5, v6, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_46

    neg-int v5, v5

    neg-int v5, v5

    not-int v5, v5

    const v6, -0xc33596

    sub-int/2addr v6, v5

    .line 3755
    sget v5, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    xor-int/lit8 v12, v5, 0x5b

    and-int/lit8 v5, v5, 0x5b

    const/4 v14, 0x1

    shl-int/2addr v5, v14

    add-int/2addr v12, v5

    rem-int/lit16 v5, v12, 0x80

    sput v5, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    const/4 v5, 0x2

    rem-int/2addr v12, v5

    const/4 v12, 0x3

    .line 2454
    :try_start_36
    new-array v14, v12, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v14, v5

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v12, 0x1

    aput-object v5, v14, v12

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v14, v5

    const/16 v5, 0x1f

    aget-byte v12, v2, v5

    int-to-byte v5, v12

    const/16 v12, 0x34c

    int-to-short v12, v12

    move-object/from16 v34, v13

    const/16 v15, 0x75

    aget-byte v13, v2, v15

    int-to-byte v13, v13

    invoke-static {v5, v12, v13}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v12, 0xe1

    aget-byte v13, v2, v12
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_45

    int-to-byte v12, v13

    const/16 v13, 0x338

    int-to-short v13, v13

    move-object/from16 v36, v11

    const/16 v15, 0x24

    :try_start_37
    aget-byte v11, v2, v15

    neg-int v11, v11

    int-to-byte v11, v11

    invoke-static {v12, v13, v11}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x3

    new-array v13, v12, [Ljava/lang/Class;

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x0

    aput-object v12, v13, v15

    sget-object v12, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x1

    aput-object v12, v13, v15
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_44

    const/4 v15, 0x2

    :try_start_38
    aput-object v12, v13, v15
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_43

    :try_start_39
    invoke-virtual {v5, v11, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v11, 0x0

    invoke-virtual {v5, v11, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_44

    const/4 v11, 0x0

    cmpl-float v5, v5, v11

    neg-int v5, v5

    xor-int/lit8 v11, v5, 0x1

    const/4 v12, 0x1

    and-int/2addr v5, v12

    shl-int/2addr v5, v12

    add-int/2addr v11, v5

    const/4 v5, 0x4

    :try_start_3a
    new-array v12, v5, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v11, 0x3

    aput-object v5, v12, v11

    const/4 v5, 0x0

    const/4 v11, 0x2

    aput-object v5, v12, v11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v12, v6

    const/4 v5, 0x0

    aput-object v37, v12, v5

    const/16 v5, 0xe1

    aget-byte v6, v2, v5

    int-to-byte v5, v6

    const/16 v6, 0x20b

    int-to-short v6, v6

    const/4 v11, 0x6

    aget-byte v13, v2, v11

    int-to-byte v11, v13

    invoke-static {v5, v6, v11}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/appsflyer/internal/AFc1fSDK;->getLevel:Ljava/lang/Object;

    check-cast v6, Ljava/lang/ClassLoader;

    const/4 v11, 0x1

    invoke-static {v5, v11, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    const/16 v6, 0xa

    aget-byte v6, v2, v6

    int-to-byte v6, v6

    xor-int/lit16 v11, v6, 0x2c6

    and-int/lit16 v13, v6, 0x2c6

    or-int/2addr v11, v13

    int-to-short v11, v11

    const/16 v13, 0x31a

    aget-byte v13, v2, v13

    int-to-byte v13, v13

    invoke-static {v6, v11, v13}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v6

    const/16 v11, 0x75

    aget-byte v13, v2, v11

    int-to-byte v11, v13

    xor-int/lit16 v13, v11, 0x3b2

    and-int/lit16 v14, v11, 0x3b2

    or-int/2addr v13, v14

    int-to-short v13, v13

    const/16 v14, 0x2cf

    aget-byte v15, v2, v14

    int-to-byte v14, v15

    invoke-static {v11, v13, v14}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const/4 v13, 0x4

    new-array v14, v13, [Ljava/lang/Class;

    const/4 v15, 0x0

    aput-object v11, v14, v15

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x1

    aput-object v11, v14, v15

    const/4 v15, 0x2

    aput-object v1, v14, v15

    const/4 v15, 0x3

    aput-object v11, v14, v15

    invoke-virtual {v5, v6, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v9, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/InputStream;
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_42

    .line 282
    sget v6, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    add-int/lit8 v6, v6, 0x21

    rem-int/lit16 v9, v6, 0x80

    sput v9, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    const/4 v9, 0x2

    rem-int/2addr v6, v9

    rem-int v12, v9, v9

    :goto_20
    const/16 v6, 0x10

    int-to-long v11, v6

    .line 3755
    sget v6, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    add-int/lit8 v6, v6, 0x47

    rem-int/lit16 v14, v6, 0x80

    sput v14, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    rem-int/2addr v6, v9

    .line 2457
    :try_start_3b
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v9, 0x1

    new-array v11, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v11, v9

    const/16 v6, 0x75

    aget-byte v9, v2, v6

    int-to-byte v6, v9

    xor-int/lit16 v9, v6, 0x3b2

    and-int/lit16 v12, v6, 0x3b2

    or-int/2addr v9, v12

    int-to-short v9, v9

    const/16 v12, 0x2cf

    aget-byte v14, v2, v12

    int-to-byte v12, v14

    invoke-static {v6, v9, v12}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/16 v9, 0x47

    aget-byte v9, v2, v9

    int-to-byte v9, v9

    const/16 v12, 0x22b

    int-to-short v12, v12

    const/16 v14, 0x312

    aget-byte v14, v2, v14

    int-to-byte v14, v14

    invoke-static {v9, v12, v14}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x1

    new-array v14, v12, [Ljava/lang/Class;

    sget-object v12, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x0

    aput-object v12, v14, v15

    invoke-virtual {v6, v9, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v5, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_41

    if-eqz v10, :cond_3f

    .line 2463
    :try_start_3c
    sget-object v6, Lcom/appsflyer/internal/AFc1fSDK;->afErrorLogForExcManagerOnly:Ljava/lang/Object;
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_26

    if-nez v6, :cond_29

    const/4 v9, 0x2

    .line 282
    rem-int v12, v9, v9

    move-object/from16 v9, v24

    goto :goto_21

    :cond_29
    move-object/from16 v9, v35

    :goto_21
    if-nez v6, :cond_2a

    move-object/from16 v6, v34

    goto :goto_22

    :cond_2a
    move-object/from16 v6, v30

    .line 3755
    :goto_22
    sget v11, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    add-int/lit8 v11, v11, 0x19

    rem-int/lit16 v12, v11, 0x80

    sput v12, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    const/4 v12, 0x2

    rem-int/2addr v11, v12

    const/4 v11, 0x1

    .line 3603
    :try_start_3d
    new-array v12, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v9, v12, v11

    const/16 v11, 0x75

    aget-byte v14, v2, v11

    int-to-byte v11, v14

    xor-int/lit16 v14, v11, 0x2c0

    and-int/lit16 v15, v11, 0x2c0

    or-int/2addr v14, v15

    int-to-short v14, v14

    const/16 v15, 0x3c

    aget-byte v13, v2, v15

    int-to-byte v13, v13

    invoke-static {v11, v14, v13}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const/16 v13, 0x75

    aget-byte v14, v2, v13
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_20

    int-to-byte v13, v14

    xor-int/lit16 v14, v13, 0x320

    and-int/lit16 v15, v13, 0x320

    or-int/2addr v14, v15

    int-to-short v14, v14

    move/from16 v37, v8

    const/16 v15, 0x165

    :try_start_3e
    aget-byte v8, v2, v15

    int-to-byte v8, v8

    invoke-static {v13, v14, v8}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/Class;

    const/4 v13, 0x0

    aput-object v8, v14, v13

    invoke-virtual {v11, v14}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_1f

    if-eqz v4, :cond_2d

    .line 2500
    sget v11, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    xor-int/lit8 v12, v11, 0x2d

    and-int/lit8 v11, v11, 0x2d

    const/4 v13, 0x1

    shl-int/2addr v11, v13

    add-int/2addr v12, v11

    rem-int/lit16 v11, v12, 0x80

    sput v11, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    const/4 v11, 0x2

    rem-int/2addr v12, v11

    if-nez v12, :cond_2c

    const/16 v11, 0x75

    .line 3609
    :try_start_3f
    aget-byte v12, v2, v11

    int-to-byte v11, v12

    or-int/lit16 v12, v11, 0x320

    int-to-short v12, v12

    const/16 v13, 0x165

    aget-byte v14, v2, v13

    int-to-byte v13, v14

    invoke-static {v11, v12, v13}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const/16 v12, 0x47

    aget-byte v12, v2, v12

    int-to-byte v12, v12

    const/16 v13, 0x1c9

    int-to-short v13, v13

    const/16 v14, 0x1a3

    aget-byte v2, v2, v14

    int-to-byte v2, v2

    invoke-static {v12, v13, v2}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v2

    const/4 v12, 0x0

    invoke-virtual {v11, v2, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v9, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_11

    goto :goto_23

    :catchall_11
    move-exception v0

    move-object v2, v0

    :try_start_40
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_2b

    throw v3

    :cond_2b
    throw v2

    :cond_2c
    const/4 v2, 0x0

    throw v2
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_40} :catch_8
    .catchall {:try_start_40 .. :try_end_40} :catchall_12

    :catchall_12
    move-exception v0

    move-object v2, v0

    move/from16 v39, v4

    goto/16 :goto_2a

    :catch_8
    move-exception v0

    move-object v2, v0

    move/from16 v39, v4

    goto/16 :goto_29

    :cond_2d
    :goto_23
    const/16 v2, 0x400

    .line 3616
    :try_start_41
    new-array v11, v2, [B
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_1e

    move/from16 v12, v43

    :goto_24
    if-lez v12, :cond_30

    .line 3755
    sget v13, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    and-int/lit8 v14, v13, 0x7d

    or-int/lit8 v13, v13, 0x7d

    add-int/2addr v14, v13

    rem-int/lit16 v13, v14, 0x80

    sput v13, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    const/4 v13, 0x2

    rem-int/2addr v14, v13

    .line 3619
    :try_start_42
    invoke-static {v2, v12}, Ljava/lang/Math;->min(II)I

    move-result v14
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_1e

    const/4 v15, 0x3

    :try_start_43
    new-array v2, v15, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v2, v13

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v2, v15

    aput-object v11, v2, v13

    sget-object v13, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v14, 0x75

    aget-byte v15, v13, v14
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_15

    int-to-byte v14, v15

    xor-int/lit16 v15, v14, 0x3b2

    move/from16 v39, v4

    and-int/lit16 v4, v14, 0x3b2

    or-int/2addr v4, v15

    int-to-short v4, v4

    move/from16 v40, v3

    const/16 v15, 0x2cf

    :try_start_44
    aget-byte v3, v13, v15

    int-to-byte v3, v3

    invoke-static {v14, v4, v3}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/16 v4, 0x17

    aget-byte v4, v13, v4

    int-to-byte v4, v4

    xor-int/lit16 v14, v4, 0xfa

    and-int/lit16 v15, v4, 0xfa

    or-int/2addr v14, v15

    int-to-short v14, v14

    const/16 v15, 0x312

    aget-byte v15, v13, v15

    int-to-byte v15, v15

    invoke-static {v4, v14, v15}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    const/4 v14, 0x3

    new-array v15, v14, [Ljava/lang/Class;

    const/4 v14, 0x0

    aput-object v1, v15, v14

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v27, 0x1

    aput-object v14, v15, v27

    const/16 v18, 0x2

    aput-object v14, v15, v18

    invoke-virtual {v3, v4, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_14

    const/4 v4, -0x1

    if-eq v3, v4, :cond_31

    .line 2500
    sget v4, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    or-int/lit8 v14, v4, 0x7

    const/4 v15, 0x1

    shl-int/2addr v14, v15

    const/4 v15, 0x7

    xor-int/2addr v4, v15

    sub-int/2addr v14, v4

    rem-int/lit16 v4, v14, 0x80

    sput v4, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    const/4 v4, 0x2

    rem-int/2addr v14, v4

    const/4 v14, 0x3

    .line 3622
    :try_start_45
    new-array v15, v14, [Ljava/lang/Object;

    aput-object v2, v15, v4

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v14, 0x1

    aput-object v4, v15, v14

    aput-object v11, v15, v2

    const/16 v2, 0x75

    aget-byte v4, v13, v2

    int-to-byte v2, v4

    xor-int/lit16 v4, v2, 0x2c0

    and-int/lit16 v14, v2, 0x2c0

    or-int/2addr v4, v14

    int-to-short v4, v4

    move-object/from16 v41, v11

    const/16 v14, 0x3c

    aget-byte v11, v13, v14

    int-to-byte v11, v11

    invoke-static {v2, v4, v11}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/16 v4, 0x43

    aget-byte v4, v13, v4

    int-to-byte v4, v4

    xor-int/lit16 v11, v4, 0xf1

    and-int/lit16 v14, v4, 0xf1

    or-int/2addr v11, v14

    int-to-short v11, v11

    const/16 v14, 0xc1

    aget-byte v13, v13, v14

    int-to-byte v13, v13

    invoke-static {v4, v11, v13}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x3

    new-array v13, v11, [Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v1, v13, v11

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v14, 0x1

    aput-object v11, v13, v14

    const/16 v18, 0x2

    aput-object v11, v13, v18

    invoke-virtual {v2, v4, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v8, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_13

    neg-int v2, v3

    not-int v2, v2

    sub-int/2addr v12, v2

    sub-int/2addr v12, v14

    move/from16 v4, v39

    move/from16 v3, v40

    move-object/from16 v11, v41

    const/16 v2, 0x400

    goto/16 :goto_24

    :catchall_13
    move-exception v0

    move-object v2, v0

    :try_start_46
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_2e

    throw v3

    :cond_2e
    throw v2

    :catchall_14
    move-exception v0

    goto :goto_25

    :catchall_15
    move-exception v0

    move/from16 v39, v4

    :goto_25
    move-object v2, v0

    .line 3619
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_2f

    throw v3

    :cond_2f
    throw v2
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_21

    :cond_30
    move/from16 v40, v3

    move/from16 v39, v4

    .line 3628
    :cond_31
    :try_start_47
    sget-object v2, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v3, 0x75

    aget-byte v4, v2, v3

    int-to-byte v3, v4

    xor-int/lit16 v4, v3, 0x2c0

    and-int/lit16 v5, v3, 0x2c0

    or-int/2addr v4, v5

    int-to-short v4, v4

    const/16 v5, 0x3c

    aget-byte v11, v2, v5

    int-to-byte v5, v11

    invoke-static {v3, v4, v5}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/16 v4, 0x15

    aget-byte v5, v2, v4

    int-to-byte v4, v5

    const/16 v5, 0x24a

    int-to-short v5, v5

    const/16 v11, 0xc1

    aget-byte v12, v2, v11

    int-to-byte v11, v12

    invoke-static {v4, v5, v11}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v8, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_1d

    const/16 v4, 0x75

    :try_start_48
    aget-byte v5, v2, v4

    int-to-byte v4, v5

    const/16 v5, 0x372

    int-to-short v5, v5

    const/16 v11, 0xc

    aget-byte v11, v2, v11

    int-to-byte v11, v11

    invoke-static {v4, v5, v11}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0x47

    aget-byte v5, v2, v5

    int-to-byte v5, v5

    xor-int/lit16 v11, v5, 0x148

    and-int/lit16 v12, v5, 0x148

    or-int/2addr v11, v12

    int-to-short v11, v11

    const/16 v12, 0x312

    aget-byte v12, v2, v12

    int-to-byte v12, v12

    invoke-static {v5, v11, v12}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x0

    invoke-virtual {v4, v5, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v3, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_1c

    const/4 v3, 0x2

    .line 282
    rem-int v12, v3, v3

    const/16 v3, 0x75

    .line 3629
    :try_start_49
    aget-byte v4, v2, v3

    int-to-byte v3, v4

    or-int/lit16 v4, v3, 0x2c0

    int-to-short v4, v4

    const/16 v5, 0x3c

    aget-byte v11, v2, v5

    int-to-byte v5, v11

    invoke-static {v3, v4, v5}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/16 v4, 0xe1

    aget-byte v5, v2, v4

    int-to-byte v4, v5

    const/16 v5, 0x26c

    int-to-short v5, v5

    const/16 v11, 0xc1

    aget-byte v12, v2, v11

    int-to-byte v11, v12

    invoke-static {v4, v5, v11}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v8, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_1b

    const/16 v3, 0x24

    .line 3641
    :try_start_4a
    aget-byte v4, v2, v3

    neg-int v3, v4

    int-to-byte v3, v3

    const/16 v4, 0x102

    int-to-short v5, v4

    const/16 v4, 0xba

    aget-byte v4, v2, v4

    int-to-byte v4, v4

    invoke-static {v3, v5, v4}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/16 v4, 0x6a

    .line 3642
    aget-byte v4, v2, v4

    int-to-byte v4, v4

    const/16 v5, 0x1e9

    int-to-short v5, v5

    const/16 v8, 0x31a

    aget-byte v8, v2, v8

    int-to-byte v8, v8

    invoke-static {v4, v5, v8}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v8, v5, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v5, v8, v11

    const/4 v11, 0x1

    aput-object v5, v8, v11

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x2

    aput-object v5, v8, v11

    invoke-virtual {v3, v4, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_21

    const/16 v4, 0x75

    .line 3646
    :try_start_4b
    aget-byte v5, v2, v4

    int-to-byte v4, v5

    or-int/lit16 v5, v4, 0x320

    int-to-short v5, v5

    const/16 v8, 0x165

    aget-byte v11, v2, v8

    int-to-byte v8, v11

    invoke-static {v4, v5, v8}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0x15

    aget-byte v8, v2, v5

    int-to-byte v5, v8

    const/16 v8, 0x2a0

    int-to-short v8, v8

    const/16 v11, 0xf

    aget-byte v11, v2, v11

    int-to-byte v11, v11

    invoke-static {v5, v8, v11}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x0

    invoke-virtual {v4, v5, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v9, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_1a

    .line 3755
    sget v5, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    add-int/lit8 v5, v5, 0x25

    rem-int/lit16 v11, v5, 0x80

    sput v11, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    const/4 v11, 0x2

    rem-int/2addr v5, v11

    const/16 v5, 0x75

    .line 3646
    :try_start_4c
    aget-byte v11, v2, v5

    int-to-byte v5, v11

    xor-int/lit16 v11, v5, 0x320

    and-int/lit16 v12, v5, 0x320

    or-int/2addr v11, v12

    int-to-short v11, v11

    const/16 v12, 0x165

    aget-byte v13, v2, v12

    int-to-byte v12, v13

    invoke-static {v5, v11, v12}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v11, 0x15

    aget-byte v12, v2, v11

    int-to-byte v11, v12

    const/16 v12, 0xf

    aget-byte v12, v2, v12

    int-to-byte v12, v12

    invoke-static {v11, v8, v12}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x0

    invoke-virtual {v5, v8, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v6, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_19

    const/4 v8, 0x0

    .line 3649
    :try_start_4d
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x3

    new-array v13, v12, [Ljava/lang/Object;

    aput-object v4, v13, v8

    const/4 v4, 0x1

    aput-object v5, v13, v4

    const/4 v4, 0x2

    aput-object v11, v13, v4

    const/4 v5, 0x0

    .line 3646
    invoke-virtual {v3, v5, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_21

    .line 3755
    sget v5, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    add-int/lit8 v5, v5, 0x21

    rem-int/lit16 v8, v5, 0x80

    sput v8, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    rem-int/2addr v5, v4

    const/16 v4, 0x75

    .line 3655
    :try_start_4e
    aget-byte v5, v2, v4

    int-to-byte v4, v5

    xor-int/lit16 v5, v4, 0x320

    and-int/lit16 v8, v4, 0x320

    or-int/2addr v5, v8

    int-to-short v5, v5

    const/16 v8, 0x165

    aget-byte v11, v2, v8

    int-to-byte v8, v11

    invoke-static {v4, v5, v8}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0x24

    aget-byte v8, v2, v5

    neg-int v5, v8

    int-to-byte v5, v5

    const/16 v8, 0x245

    int-to-short v8, v8

    const/16 v11, 0x132

    aget-byte v11, v2, v11

    neg-int v11, v11

    int-to-byte v11, v11

    invoke-static {v5, v8, v11}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x0

    invoke-virtual {v4, v5, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v9, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_18

    const/16 v4, 0x75

    .line 3656
    :try_start_4f
    aget-byte v5, v2, v4

    int-to-byte v4, v5

    or-int/lit16 v5, v4, 0x320

    int-to-short v5, v5

    const/16 v9, 0x165

    aget-byte v11, v2, v9

    int-to-byte v9, v11

    invoke-static {v4, v5, v9}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0x24

    aget-byte v9, v2, v5

    neg-int v5, v9

    int-to-byte v5, v5

    const/16 v9, 0x132

    aget-byte v9, v2, v9

    neg-int v9, v9

    int-to-byte v9, v9

    invoke-static {v5, v8, v9}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_17

    .line 3661
    :try_start_50
    sget-object v4, Lcom/appsflyer/internal/AFc1fSDK;->getLevel:Ljava/lang/Object;

    if-nez v4, :cond_33

    .line 3663
    const-class v4, Lcom/appsflyer/internal/AFc1fSDK;
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_25

    :try_start_51
    const-class v5, Ljava/lang/Class;

    const/16 v6, 0x15

    aget-byte v8, v2, v6

    int-to-byte v6, v8

    const/16 v8, 0x22e

    int-to-short v8, v8

    const/16 v9, 0x1f

    aget-byte v2, v2, v9

    int-to-byte v2, v2

    invoke-static {v6, v8, v2}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_16

    :try_start_52
    sput-object v2, Lcom/appsflyer/internal/AFc1fSDK;->getLevel:Ljava/lang/Object;

    goto :goto_26

    :catchall_16
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_32

    throw v3

    :cond_32
    throw v2

    :cond_33
    :goto_26
    const/4 v2, 0x1

    goto/16 :goto_33

    :catchall_17
    move-exception v0

    move-object v2, v0

    .line 3656
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_34

    throw v3

    :cond_34
    throw v2

    :catchall_18
    move-exception v0

    move-object v2, v0

    .line 3655
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_35

    throw v3

    :cond_35
    throw v2
    :try_end_52
    .catchall {:try_start_52 .. :try_end_52} :catchall_25

    :catchall_19
    move-exception v0

    move-object v2, v0

    .line 3646
    :try_start_53
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_36

    throw v3

    :cond_36
    throw v2

    :catchall_1a
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_37

    throw v3

    :cond_37
    throw v2

    :catchall_1b
    move-exception v0

    move-object v2, v0

    .line 3629
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_38

    throw v3

    :cond_38
    throw v2

    :catchall_1c
    move-exception v0

    move-object v2, v0

    .line 3628
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_39

    throw v3

    :cond_39
    throw v2

    :catchall_1d
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_3a

    throw v3

    :cond_3a
    throw v2
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_21

    :catchall_1e
    move-exception v0

    move/from16 v39, v4

    goto :goto_28

    :catchall_1f
    move-exception v0

    move/from16 v39, v4

    goto :goto_27

    :catchall_20
    move-exception v0

    move/from16 v39, v4

    move/from16 v37, v8

    :goto_27
    move-object v2, v0

    .line 3603
    :try_start_54
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_3b

    throw v3

    :cond_3b
    throw v2
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_54} :catch_9
    .catchall {:try_start_54 .. :try_end_54} :catchall_21

    :catchall_21
    move-exception v0

    :goto_28
    move-object v2, v0

    goto :goto_2a

    :catch_9
    move-exception v0

    move-object v2, v0

    .line 3614
    :goto_29
    :try_start_55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v5, 0xfc

    aget-byte v7, v4, v5

    int-to-byte v5, v7

    const/16 v7, 0x198

    int-to-short v7, v7

    const/16 v8, 0xc1

    aget-byte v8, v4, v8

    int-to-byte v8, v8

    invoke-static {v5, v7, v8}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v5, 0x4e

    int-to-byte v5, v5

    const/16 v7, 0x102

    int-to-short v7, v7

    const/16 v8, 0x149

    aget-byte v8, v4, v8

    int-to-byte v8, v8

    invoke-static {v5, v7, v8}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_21

    const/4 v5, 0x2

    :try_start_56
    new-array v7, v5, [Ljava/lang/Object;

    const/4 v5, 0x1

    aput-object v2, v7, v5

    const/4 v2, 0x0

    aput-object v3, v7, v2

    const/16 v2, 0x75

    aget-byte v3, v4, v2

    int-to-byte v2, v3

    const/16 v3, 0x2eb

    int-to-short v3, v3

    const/16 v5, 0x2cf

    aget-byte v4, v4, v5

    int-to-byte v4, v4

    invoke-static {v2, v3, v4}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const-class v3, Ljava/lang/Throwable;

    const/4 v5, 0x1

    aput-object v3, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_56
    .catchall {:try_start_56 .. :try_end_56} :catchall_22

    :catchall_22
    move-exception v0

    move-object v2, v0

    :try_start_57
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_3c

    throw v3

    :cond_3c
    throw v2
    :try_end_57
    .catchall {:try_start_57 .. :try_end_57} :catchall_21

    .line 3655
    :goto_2a
    :try_start_58
    sget-object v3, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v4, 0x75

    aget-byte v5, v3, v4

    int-to-byte v4, v5

    xor-int/lit16 v5, v4, 0x320

    and-int/lit16 v7, v4, 0x320

    or-int/2addr v5, v7

    int-to-short v5, v5

    const/16 v7, 0x165

    aget-byte v8, v3, v7

    int-to-byte v7, v8

    invoke-static {v4, v5, v7}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0x24

    aget-byte v7, v3, v5

    neg-int v5, v7

    int-to-byte v5, v5

    const/16 v7, 0x245

    int-to-short v7, v7

    const/16 v8, 0x132

    aget-byte v8, v3, v8

    neg-int v8, v8

    int-to-byte v8, v8

    invoke-static {v5, v7, v8}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v9, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_58
    .catchall {:try_start_58 .. :try_end_58} :catchall_24

    const/16 v4, 0x75

    .line 3656
    :try_start_59
    aget-byte v5, v3, v4

    int-to-byte v4, v5

    xor-int/lit16 v5, v4, 0x320

    and-int/lit16 v8, v4, 0x320

    or-int/2addr v5, v8

    int-to-short v5, v5

    const/16 v8, 0x165

    aget-byte v9, v3, v8

    int-to-byte v8, v9

    invoke-static {v4, v5, v8}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0x24

    aget-byte v5, v3, v5

    neg-int v5, v5

    int-to-byte v5, v5

    const/16 v8, 0x132

    aget-byte v3, v3, v8

    neg-int v3, v3

    int-to-byte v3, v3

    invoke-static {v5, v7, v3}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_59
    .catchall {:try_start_59 .. :try_end_59} :catchall_23

    .line 3657
    :try_start_5a
    throw v2

    :catchall_23
    move-exception v0

    move-object v2, v0

    .line 3656
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_3d

    throw v3

    :cond_3d
    throw v2

    :catchall_24
    move-exception v0

    move-object v2, v0

    .line 3655
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_3e

    throw v3

    :cond_3e
    throw v2
    :try_end_5a
    .catchall {:try_start_5a .. :try_end_5a} :catchall_25

    :catchall_25
    move-exception v0

    goto :goto_2b

    :catchall_26
    move-exception v0

    move/from16 v39, v4

    move/from16 v37, v8

    :goto_2b
    move-object v2, v0

    goto/16 :goto_1d

    :cond_3f
    move/from16 v40, v3

    move/from16 v39, v4

    move/from16 v37, v8

    .line 3679
    :try_start_5b
    new-instance v3, Ljava/util/zip/ZipInputStream;

    invoke-direct {v3, v5}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3680
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v4
    :try_end_5b
    .catchall {:try_start_5b .. :try_end_5b} :catchall_40

    const/4 v5, 0x1

    .line 3682
    :try_start_5c
    new-array v6, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v6, v5

    const/16 v3, 0x75

    aget-byte v5, v2, v3

    int-to-byte v3, v5

    const/16 v5, 0x165

    aget-byte v8, v2, v5

    int-to-short v5, v8

    const/16 v8, 0x77

    aget-byte v8, v2, v8

    int-to-byte v8, v8

    invoke-static {v3, v5, v8}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/16 v5, 0x75

    aget-byte v8, v2, v5

    int-to-byte v5, v8

    xor-int/lit16 v8, v5, 0x3b2

    and-int/lit16 v9, v5, 0x3b2

    or-int/2addr v8, v9

    int-to-short v8, v8

    const/16 v9, 0x2cf

    aget-byte v11, v2, v9

    int-to-byte v9, v11

    invoke-static {v5, v8, v9}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v5, v9, v8

    invoke-virtual {v3, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_5c
    .catchall {:try_start_5c .. :try_end_5c} :catchall_3f

    const/4 v5, 0x2

    .line 282
    rem-int v12, v5, v5

    const/16 v5, 0x75

    .line 3682
    :try_start_5d
    aget-byte v6, v2, v5

    int-to-byte v5, v6

    xor-int/lit16 v6, v5, 0x1e2

    and-int/lit16 v8, v5, 0x1e2

    or-int/2addr v6, v8

    int-to-short v6, v6

    const/16 v8, 0x42

    aget-byte v2, v2, v8

    int-to-byte v2, v2

    invoke-static {v5, v6, v2}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_5d
    .catchall {:try_start_5d .. :try_end_5d} :catchall_3e

    const/16 v5, 0x400

    .line 3685
    :try_start_5e
    new-array v5, v5, [B
    :try_end_5e
    .catchall {:try_start_5e .. :try_end_5e} :catchall_40

    const/4 v6, 0x0

    :goto_2c
    const/4 v8, 0x1

    .line 3688
    :try_start_5f
    new-array v9, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v9, v8

    sget-object v8, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v11, 0x75

    aget-byte v12, v8, v11

    int-to-byte v11, v12

    const/16 v12, 0x165

    aget-byte v13, v8, v12

    int-to-short v12, v13

    const/16 v13, 0x77

    aget-byte v13, v8, v13

    int-to-byte v13, v13

    invoke-static {v11, v12, v13}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const/16 v12, 0x17

    aget-byte v12, v8, v12

    int-to-byte v12, v12

    xor-int/lit16 v13, v12, 0xfa

    and-int/lit16 v14, v12, 0xfa

    or-int/2addr v13, v14

    int-to-short v13, v13

    const/16 v14, 0x312

    aget-byte v14, v8, v14

    int-to-byte v14, v14

    invoke-static {v12, v13, v14}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/Class;

    const/4 v13, 0x0

    aput-object v1, v14, v13

    invoke-virtual {v11, v12, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    invoke-virtual {v11, v3, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11
    :try_end_5f
    .catchall {:try_start_5f .. :try_end_5f} :catchall_3d

    if-lez v11, :cond_41

    int-to-long v12, v6

    .line 3689
    :try_start_60
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v14
    :try_end_60
    .catchall {:try_start_60 .. :try_end_60} :catchall_29

    cmp-long v38, v12, v14

    if-gez v38, :cond_41

    const/4 v12, 0x3

    .line 3691
    :try_start_61
    new-array v13, v12, [Ljava/lang/Object;
    :try_end_61
    .catchall {:try_start_61 .. :try_end_61} :catchall_28

    const/4 v12, 0x2

    :try_start_62
    aput-object v9, v13, v12

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v14, 0x1

    aput-object v12, v13, v14

    aput-object v5, v13, v9

    const/16 v9, 0x75

    aget-byte v12, v8, v9

    int-to-byte v9, v12

    xor-int/lit16 v12, v9, 0x1e2

    and-int/lit16 v14, v9, 0x1e2

    or-int/2addr v12, v14

    int-to-short v12, v12

    const/16 v14, 0x42

    aget-byte v14, v8, v14

    int-to-byte v14, v14

    invoke-static {v9, v12, v14}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const/16 v12, 0x43

    aget-byte v12, v8, v12

    int-to-byte v12, v12

    or-int/lit16 v14, v12, 0xf1

    int-to-short v14, v14

    const/16 v15, 0xc1

    aget-byte v8, v8, v15

    int-to-byte v8, v8

    invoke-static {v12, v14, v8}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v8
    :try_end_62
    .catchall {:try_start_62 .. :try_end_62} :catchall_27

    const/4 v12, 0x3

    :try_start_63
    new-array v14, v12, [Ljava/lang/Class;

    const/4 v15, 0x0

    aput-object v1, v14, v15

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x1

    aput-object v15, v14, v17

    const/16 v17, 0x2

    aput-object v15, v14, v17

    invoke-virtual {v9, v8, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8, v2, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_63
    .catchall {:try_start_63 .. :try_end_63} :catchall_28

    neg-int v8, v11

    neg-int v8, v8

    xor-int v9, v6, v8

    and-int/2addr v6, v8

    const/4 v8, 0x1

    shl-int/2addr v6, v8

    add-int/2addr v6, v9

    goto/16 :goto_2c

    :catchall_27
    move-exception v0

    const/4 v12, 0x3

    goto :goto_2d

    :catchall_28
    move-exception v0

    :goto_2d
    move-object v2, v0

    :try_start_64
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_40

    throw v3

    :cond_40
    throw v2
    :try_end_64
    .catchall {:try_start_64 .. :try_end_64} :catchall_25

    :catchall_29
    move-exception v0

    const/4 v12, 0x3

    goto/16 :goto_2b

    :cond_41
    const/4 v12, 0x3

    const/16 v4, 0x75

    .line 3694
    :try_start_65
    aget-byte v5, v8, v4

    int-to-byte v4, v5

    xor-int/lit16 v5, v4, 0x1e2

    and-int/lit16 v6, v4, 0x1e2

    or-int/2addr v5, v6

    int-to-short v5, v5

    const/16 v6, 0x42

    aget-byte v6, v8, v6

    int-to-byte v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x6

    aget-byte v6, v8, v5

    int-to-byte v5, v6

    xor-int/lit16 v6, v5, 0x384

    and-int/lit16 v9, v5, 0x384

    or-int/2addr v6, v9

    int-to-short v6, v6

    const/16 v9, 0x1a3

    aget-byte v9, v8, v9

    int-to-byte v9, v9

    invoke-static {v5, v6, v9}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_65
    .catchall {:try_start_65 .. :try_end_65} :catchall_3c

    const/16 v5, 0x75

    .line 3698
    :try_start_66
    aget-byte v6, v8, v5
    :try_end_66
    .catchall {:try_start_66 .. :try_end_66} :catchall_2b

    int-to-byte v5, v6

    const/16 v6, 0x165

    :try_start_67
    aget-byte v9, v8, v6

    int-to-short v9, v9

    const/16 v11, 0x77

    aget-byte v11, v8, v11

    int-to-byte v11, v11

    invoke-static {v5, v9, v11}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v9, 0xe1

    aget-byte v11, v8, v9

    int-to-byte v9, v11

    const/16 v11, 0x26c

    int-to-short v11, v11

    const/16 v13, 0xc1

    aget-byte v8, v8, v13

    int-to-byte v8, v8

    invoke-static {v9, v11, v8}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v3, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_67
    .catchall {:try_start_67 .. :try_end_67} :catchall_2a

    goto :goto_2f

    :catchall_2a
    move-exception v0

    goto :goto_2e

    :catchall_2b
    move-exception v0

    const/16 v6, 0x165

    :goto_2e
    move-object v3, v0

    :try_start_68
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_42

    throw v5

    :cond_42
    throw v3
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_68} :catch_a
    .catchall {:try_start_68 .. :try_end_68} :catchall_25

    .line 3755
    :catch_a
    :goto_2f
    sget v3, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    add-int/lit8 v3, v3, 0x5f

    rem-int/lit16 v5, v3, 0x80

    sput v5, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    const/4 v5, 0x2

    rem-int/2addr v3, v5

    .line 3704
    :try_start_69
    sget-object v3, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v5, 0x75

    aget-byte v8, v3, v5

    int-to-byte v5, v8

    xor-int/lit16 v8, v5, 0x1e2

    and-int/lit16 v9, v5, 0x1e2

    or-int/2addr v8, v9

    int-to-short v8, v8

    const/16 v9, 0x42

    aget-byte v9, v3, v9

    int-to-byte v9, v9

    invoke-static {v5, v8, v9}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v8, 0xe1

    aget-byte v9, v3, v8

    int-to-byte v8, v9

    const/16 v9, 0x26c

    int-to-short v9, v9

    const/16 v11, 0xc1

    aget-byte v3, v3, v11

    int-to-byte v3, v3

    invoke-static {v8, v9, v3}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    invoke-virtual {v5, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_69
    .catchall {:try_start_69 .. :try_end_69} :catchall_2c

    goto :goto_30

    :catchall_2c
    move-exception v0

    move-object v2, v0

    :try_start_6a
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_43

    throw v3

    :cond_43
    throw v2
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6a} :catch_b
    .catchall {:try_start_6a .. :try_end_6a} :catchall_25

    .line 3708
    :catch_b
    :goto_30
    :try_start_6b
    const-class v2, Lcom/appsflyer/internal/AFc1fSDK;
    :try_end_6b
    .catchall {:try_start_6b .. :try_end_6b} :catchall_40

    :try_start_6c
    const-class v3, Ljava/lang/Class;

    sget-object v5, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v8, 0x15

    aget-byte v9, v5, v8

    int-to-byte v8, v9

    const/16 v9, 0x22e

    int-to-short v9, v9

    const/16 v11, 0x1f

    aget-byte v13, v5, v11

    int-to-byte v11, v13

    invoke-static {v8, v9, v11}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v2, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_6c
    .catchall {:try_start_6c .. :try_end_6c} :catchall_3b

    const/16 v3, 0x24

    .line 3713
    :try_start_6d
    aget-byte v8, v5, v3

    neg-int v3, v8

    int-to-byte v3, v3

    const/16 v8, 0x96

    int-to-short v8, v8

    const/16 v9, 0x43

    aget-byte v9, v5, v9

    int-to-byte v9, v9

    invoke-static {v3, v8, v9}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/16 v8, 0x75

    .line 3714
    aget-byte v9, v5, v8

    int-to-byte v8, v9

    const/16 v9, 0x52

    int-to-short v9, v9

    const/16 v11, 0x2cf

    aget-byte v13, v5, v11

    int-to-byte v11, v13

    invoke-static {v8, v9, v11}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/16 v11, 0x75

    aget-byte v13, v5, v11

    int-to-byte v11, v13

    const/16 v13, 0x1a0

    int-to-short v13, v13

    const/16 v14, 0xba

    aget-byte v14, v5, v14

    int-to-byte v14, v14

    invoke-static {v11, v13, v14}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const/4 v13, 0x2

    new-array v14, v13, [Ljava/lang/Class;

    const/4 v13, 0x0

    aput-object v8, v14, v13
    :try_end_6d
    .catchall {:try_start_6d .. :try_end_6d} :catchall_40

    const/4 v8, 0x1

    :try_start_6e
    aput-object v11, v14, v8
    :try_end_6e
    .catchall {:try_start_6e .. :try_end_6e} :catchall_38

    :try_start_6f
    invoke-virtual {v3, v14}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3
    :try_end_6f
    .catchall {:try_start_6f .. :try_end_6f} :catchall_40

    .line 3716
    :try_start_70
    new-array v11, v8, [Ljava/lang/Object;

    aput-object v4, v11, v13

    const/16 v4, 0x75

    aget-byte v8, v5, v4

    int-to-byte v4, v8

    const/16 v8, 0x2cf

    aget-byte v13, v5, v8

    int-to-byte v8, v13

    invoke-static {v4, v9, v8}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v8, 0x43

    aget-byte v8, v5, v8

    int-to-byte v8, v8

    xor-int/lit16 v9, v8, 0x3a5

    and-int/lit16 v13, v8, 0x3a5

    or-int/2addr v9, v13

    int-to-short v9, v9

    const/16 v13, 0x312

    aget-byte v13, v5, v13

    int-to-byte v13, v13

    invoke-static {v8, v9, v13}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v13, v9, [Ljava/lang/Class;

    const/4 v9, 0x0

    aput-object v1, v13, v9

    invoke-virtual {v4, v8, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v8, 0x0

    invoke-virtual {v4, v8, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_70
    .catchall {:try_start_70 .. :try_end_70} :catchall_3a

    const/4 v8, 0x2

    :try_start_71
    new-array v11, v8, [Ljava/lang/Object;

    aput-object v4, v11, v9
    :try_end_71
    .catchall {:try_start_71 .. :try_end_71} :catchall_40

    const/4 v4, 0x1

    :try_start_72
    aput-object v2, v11, v4
    :try_end_72
    .catchall {:try_start_72 .. :try_end_72} :catchall_38

    :try_start_73
    invoke-virtual {v3, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_73
    .catchall {:try_start_73 .. :try_end_73} :catchall_40

    const/16 v4, 0x24

    .line 3729
    :try_start_74
    aget-byte v8, v5, v4

    neg-int v4, v8

    int-to-byte v4, v4

    or-int/lit16 v8, v4, 0x10c

    int-to-short v8, v8

    const/16 v9, 0x47

    aget-byte v9, v5, v9

    int-to-byte v9, v9

    invoke-static {v4, v8, v9}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v8, 0x42

    .line 3730
    aget-byte v8, v5, v8

    int-to-byte v8, v8

    const/16 v9, 0x312

    int-to-short v9, v9

    const/16 v11, 0x2c

    aget-byte v11, v5, v11

    int-to-byte v11, v11

    invoke-static {v8, v9, v11}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v8, 0x1

    .line 3731
    invoke-virtual {v4, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3733
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 3734
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const/16 v11, 0x77

    .line 3736
    aget-byte v11, v5, v11

    int-to-byte v11, v11

    const/16 v13, 0x3a8

    int-to-short v13, v13

    const/16 v14, 0x3c

    aget-byte v15, v5, v14

    int-to-byte v15, v15

    invoke-static {v11, v13, v15}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    const/4 v13, 0x1

    .line 3737
    invoke-virtual {v11, v13}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/16 v13, 0x77

    .line 3739
    aget-byte v13, v5, v13

    int-to-byte v13, v13

    const/16 v15, 0x254

    int-to-short v15, v15

    const/16 v17, 0x6a

    aget-byte v5, v5, v17

    int-to-byte v5, v5

    invoke-static {v13, v15, v5}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v9, 0x1

    .line 3740
    invoke-virtual {v5, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3742
    invoke-virtual {v11, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 3743
    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 3745
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 3748
    new-instance v13, Ljava/util/ArrayList;

    check-cast v9, Ljava/util/List;

    invoke-direct {v13, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3750
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    .line 3751
    invoke-virtual {v9}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v9

    .line 3753
    invoke-static {v8}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v15

    .line 3754
    invoke-static {v9, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v9
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_74} :catch_f
    .catchall {:try_start_74 .. :try_end_74} :catchall_40

    const/4 v6, 0x0

    :goto_31
    if-ge v6, v15, :cond_45

    .line 3609
    sget v17, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    xor-int/lit8 v23, v17, 0x55

    and-int/lit8 v17, v17, 0x55

    const/16 v27, 0x1

    shl-int/lit8 v17, v17, 0x1

    add-int v12, v23, v17

    rem-int/lit16 v14, v12, 0x80

    sput v14, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    const/4 v14, 0x2

    rem-int/2addr v12, v14

    if-nez v12, :cond_44

    .line 3757
    :try_start_75
    invoke-static {v8, v6}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v9, v6, v12}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    and-int/lit8 v12, v6, 0x2c

    or-int/lit8 v6, v6, 0x2c

    add-int/2addr v12, v6

    add-int/lit8 v6, v12, 0x3c

    goto :goto_32

    :cond_44
    invoke-static {v8, v6}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v9, v6, v12}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_75} :catch_c
    .catchall {:try_start_75 .. :try_end_75} :catchall_25

    or-int/lit8 v12, v6, 0x66

    const/4 v14, 0x1

    shl-int/2addr v12, v14

    xor-int/lit8 v6, v6, 0x66

    sub-int/2addr v12, v6

    add-int/lit8 v6, v12, -0x65

    :goto_32
    const/4 v12, 0x3

    const/16 v14, 0x3c

    goto :goto_31

    :catch_c
    move-exception v0

    move-object v3, v0

    const/16 v8, 0xe1

    const/16 v11, 0x15

    const/16 v14, 0x1f

    goto/16 :goto_3b

    .line 3760
    :cond_45
    :try_start_76
    invoke-virtual {v11, v4, v13}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3761
    invoke-virtual {v5, v4, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_76} :catch_f
    .catchall {:try_start_76 .. :try_end_76} :catchall_40

    .line 3771
    :try_start_77
    sget-object v2, Lcom/appsflyer/internal/AFc1fSDK;->getLevel:Ljava/lang/Object;
    :try_end_77
    .catchall {:try_start_77 .. :try_end_77} :catchall_40

    if-nez v2, :cond_33

    .line 2500
    sget v2, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    xor-int/lit8 v4, v2, 0x7

    const/4 v5, 0x7

    and-int/2addr v2, v5

    const/4 v5, 0x1

    shl-int/2addr v2, v5

    add-int/2addr v4, v2

    rem-int/lit16 v2, v4, 0x80

    sput v2, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    const/4 v2, 0x2

    rem-int/2addr v4, v2

    .line 3773
    :try_start_78
    sput-object v3, Lcom/appsflyer/internal/AFc1fSDK;->getLevel:Ljava/lang/Object;

    goto/16 :goto_26

    :goto_33
    if-eq v10, v2, :cond_46

    .line 2507
    sget-object v2, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v4, 0x75

    aget-byte v5, v2, v4

    int-to-byte v4, v5

    const/16 v5, 0x1a0

    int-to-short v5, v5

    const/16 v6, 0xba

    aget-byte v6, v2, v6

    int-to-byte v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0x6a

    .line 2508
    aget-byte v5, v2, v5

    int-to-byte v5, v5

    const/16 v6, 0x391

    int-to-short v6, v6

    const/16 v8, 0x372

    aget-byte v2, v2, v8

    neg-int v2, v2

    int-to-byte v2, v2

    invoke-static {v5, v6, v2}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v2
    :try_end_78
    .catchall {:try_start_78 .. :try_end_78} :catchall_25

    const/4 v5, 0x1

    :try_start_79
    new-array v6, v5, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v6, v9
    :try_end_79
    .catchall {:try_start_79 .. :try_end_79} :catchall_2e

    :try_start_7a
    invoke-virtual {v4, v2, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_7a
    .catchall {:try_start_7a .. :try_end_7a} :catchall_25

    .line 2512
    :try_start_7b
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_7b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7b .. :try_end_7b} :catch_d
    .catchall {:try_start_7b .. :try_end_7b} :catchall_25

    .line 2513
    :try_start_7c
    new-array v4, v5, [Ljava/lang/Object;

    aput-object v7, v4, v9
    :try_end_7c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7c .. :try_end_7c} :catch_d
    .catchall {:try_start_7c .. :try_end_7c} :catchall_2d

    :try_start_7d
    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_7d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7d .. :try_end_7d} :catch_d
    .catchall {:try_start_7d .. :try_end_7d} :catchall_25

    :goto_34
    const/16 v4, 0x24

    const/16 v11, 0x15

    const/16 v14, 0x1f

    goto/16 :goto_36

    :catchall_2d
    move-exception v0

    goto/16 :goto_2b

    :catch_d
    move-exception v0

    move-object v2, v0

    .line 2520
    :try_start_7e
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/lang/Exception;

    throw v2
    :try_end_7e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7e .. :try_end_7e} :catch_e
    .catchall {:try_start_7e .. :try_end_7e} :catchall_25

    :catch_e
    nop

    const/4 v2, 0x0

    goto :goto_34

    :catchall_2e
    move-exception v0

    goto/16 :goto_2b

    .line 2483
    :cond_46
    :try_start_7f
    sget-object v2, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v4, 0x24

    aget-byte v5, v2, v4

    neg-int v5, v5

    int-to-byte v5, v5

    const/16 v6, 0x102

    int-to-short v8, v6

    const/16 v6, 0xba

    aget-byte v6, v2, v6

    int-to-byte v6, v6

    invoke-static {v5, v8, v6}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v6, 0x6a

    .line 2484
    aget-byte v6, v2, v6

    int-to-byte v6, v6

    const/16 v8, 0x391

    int-to-short v8, v8

    const/16 v9, 0x372

    aget-byte v9, v2, v9

    neg-int v9, v9

    int-to-byte v9, v9

    invoke-static {v6, v8, v9}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x75

    aget-byte v9, v2, v8

    int-to-byte v8, v9

    const/16 v9, 0x1a0

    int-to-short v9, v9

    const/16 v11, 0xba

    aget-byte v11, v2, v11

    int-to-byte v11, v11

    invoke-static {v8, v9, v11}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/4 v9, 0x2

    new-array v11, v9, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v9, v11, v12
    :try_end_7f
    .catchall {:try_start_7f .. :try_end_7f} :catchall_40

    const/4 v9, 0x1

    :try_start_80
    aput-object v8, v11, v9
    :try_end_80
    .catchall {:try_start_80 .. :try_end_80} :catchall_38

    :try_start_81
    invoke-virtual {v5, v6, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 2487
    invoke-virtual {v6, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 2488
    const-class v8, Lcom/appsflyer/internal/AFc1fSDK;
    :try_end_81
    .catchall {:try_start_81 .. :try_end_81} :catchall_40

    :try_start_82
    const-class v9, Ljava/lang/Class;
    :try_end_82
    .catchall {:try_start_82 .. :try_end_82} :catchall_37

    const/16 v11, 0x15

    :try_start_83
    aget-byte v12, v2, v11
    :try_end_83
    .catchall {:try_start_83 .. :try_end_83} :catchall_36

    int-to-byte v12, v12

    const/16 v13, 0x22e

    int-to-short v13, v13

    const/16 v14, 0x1f

    :try_start_84
    aget-byte v15, v2, v14

    int-to-byte v15, v15

    invoke-static {v12, v13, v15}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v9, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    invoke-virtual {v9, v8, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8
    :try_end_84
    .catchall {:try_start_84 .. :try_end_84} :catchall_35

    const/4 v9, 0x2

    :try_start_85
    new-array v12, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v7, v12, v9

    const/4 v7, 0x1

    aput-object v8, v12, v7

    invoke-virtual {v6, v3, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_85
    .catchall {:try_start_85 .. :try_end_85} :catchall_34

    if-eqz v6, :cond_48

    .line 282
    sget v7, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    add-int/lit8 v7, v7, 0x59

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    const/4 v8, 0x2

    rem-int/2addr v7, v8

    if-eqz v7, :cond_47

    const/16 v7, 0x3ce9

    .line 2499
    :try_start_86
    aget-byte v7, v2, v7

    int-to-byte v7, v7

    const/16 v8, 0x4029

    int-to-short v8, v8

    const/16 v9, 0x3ecb

    aget-byte v2, v2, v9

    int-to-byte v2, v2

    invoke-static {v7, v8, v2}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v2, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v5, 0x0

    .line 2500
    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_35

    :cond_47
    const/16 v7, 0xe1

    .line 2499
    aget-byte v8, v2, v7

    int-to-byte v7, v8

    const/16 v8, 0x26c

    int-to-short v8, v8

    const/16 v9, 0xc1

    aget-byte v2, v2, v9

    int-to-byte v2, v2

    invoke-static {v7, v8, v2}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    invoke-virtual {v5, v2, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2500
    invoke-virtual {v2, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_86
    .catchall {:try_start_86 .. :try_end_86} :catchall_2f

    goto :goto_35

    :catchall_2f
    move-exception v0

    move-object v2, v0

    const/16 v8, 0xe1

    goto/16 :goto_40

    :cond_48
    :goto_35
    move-object v2, v6

    :goto_36
    if-eqz v2, :cond_4d

    .line 3755
    sget v5, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    const/4 v6, 0x7

    add-int/2addr v5, v6

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    const/4 v6, 0x2

    rem-int/2addr v5, v6

    .line 2531
    :try_start_87
    move-object v6, v2

    check-cast v6, Ljava/lang/Class;

    .line 2536
    sget-object v2, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v5, 0xe1

    aget-byte v7, v2, v5

    int-to-byte v5, v7

    const/16 v7, 0xc1

    int-to-short v8, v7

    const/4 v7, 0x6

    aget-byte v9, v2, v7

    int-to-byte v9, v9

    invoke-static {v5, v8, v9}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x2

    .line 2541
    new-array v9, v8, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v9, v12

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x1

    aput-object v8, v9, v12

    .line 2542
    invoke-virtual {v6, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    .line 2543
    invoke-virtual {v8, v12}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_87
    .catchall {:try_start_87 .. :try_end_87} :catchall_34

    if-nez v10, :cond_49

    .line 3755
    sget v9, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    and-int/lit8 v12, v9, 0x3b

    or-int/lit8 v9, v9, 0x3b

    add-int/2addr v12, v9

    rem-int/lit16 v9, v12, 0x80

    sput v9, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    const/4 v9, 0x2

    rem-int/2addr v12, v9

    const/4 v12, 0x1

    goto :goto_37

    :cond_49
    const/4 v9, 0x2

    const/4 v12, 0x0

    .line 2544
    :goto_37
    :try_start_88
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    new-array v13, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v13, v9

    const/4 v3, 0x1

    aput-object v12, v13, v3

    invoke-virtual {v8, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sput-object v3, Lcom/appsflyer/internal/AFc1fSDK;->afErrorLogForExcManagerOnly:Ljava/lang/Object;

    const/16 v3, 0x1bde

    .line 2553
    new-array v3, v3, [B

    .line 2554
    const-class v8, Lcom/appsflyer/internal/AFc1fSDK;

    const/16 v9, 0x30d

    aget-byte v9, v2, v9

    or-int/lit8 v12, v9, 0x1

    const/4 v13, 0x1

    shl-int/2addr v12, v13

    xor-int/2addr v9, v13

    sub-int/2addr v12, v9

    int-to-byte v9, v12

    const/16 v12, 0x2e

    aget-byte v12, v2, v12

    int-to-short v12, v12

    const/16 v13, 0x1d

    aget-byte v13, v2, v13

    int-to-byte v13, v13

    invoke-static {v9, v12, v13}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v9

    .line 2555
    invoke-virtual {v8, v9}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8
    :try_end_88
    .catchall {:try_start_88 .. :try_end_88} :catchall_34

    .line 2500
    sget v9, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    xor-int/lit8 v12, v9, 0x5

    and-int/lit8 v9, v9, 0x5

    const/4 v13, 0x1

    shl-int/2addr v9, v13

    add-int/2addr v12, v9

    rem-int/lit16 v9, v12, 0x80

    sput v9, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    const/4 v9, 0x2

    rem-int/2addr v12, v9

    .line 2555
    :try_start_89
    new-array v9, v13, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v9, v12

    const/16 v8, 0x75

    aget-byte v12, v2, v8

    int-to-byte v13, v12

    const/16 v15, 0x1d3

    int-to-short v15, v15

    int-to-byte v12, v12

    invoke-static {v13, v15, v12}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aget-byte v13, v2, v8

    int-to-byte v8, v13

    or-int/lit16 v13, v8, 0x3b2

    int-to-short v13, v13

    const/16 v16, 0x2cf

    aget-byte v4, v2, v16

    int-to-byte v4, v4

    invoke-static {v8, v13, v4}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v8, 0x1

    new-array v13, v8, [Ljava/lang/Class;

    const/16 v16, 0x0

    aput-object v4, v13, v16

    invoke-virtual {v12, v13}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_89
    .catchall {:try_start_89 .. :try_end_89} :catchall_33

    .line 2557
    :try_start_8a
    new-array v9, v8, [Ljava/lang/Object;

    aput-object v3, v9, v16

    const/16 v8, 0x75

    aget-byte v12, v2, v8

    int-to-byte v8, v12

    int-to-byte v12, v12

    invoke-static {v8, v15, v12}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/16 v12, 0x17

    aget-byte v12, v2, v12

    int-to-byte v12, v12

    const/16 v13, 0xb9

    int-to-short v13, v13

    const/16 v16, 0x372

    aget-byte v7, v2, v16

    neg-int v7, v7

    int-to-byte v7, v7

    invoke-static {v12, v13, v7}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v7

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v1, v13, v12

    invoke-virtual {v8, v7, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, v4, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8a
    .catchall {:try_start_8a .. :try_end_8a} :catchall_32

    const/16 v7, 0x75

    .line 2558
    :try_start_8b
    aget-byte v8, v2, v7

    int-to-byte v7, v8

    int-to-byte v8, v8

    invoke-static {v7, v15, v8}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7
    :try_end_8b
    .catchall {:try_start_8b .. :try_end_8b} :catchall_31

    const/16 v8, 0xe1

    :try_start_8c
    aget-byte v9, v2, v8

    int-to-byte v9, v9

    const/16 v12, 0x26c

    int-to-short v12, v12

    const/16 v13, 0xc1

    aget-byte v2, v2, v13

    int-to-byte v2, v2

    invoke-static {v9, v12, v2}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    invoke-virtual {v7, v2, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v4, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8c
    .catchall {:try_start_8c .. :try_end_8c} :catchall_30

    .line 2562
    :try_start_8d
    invoke-static/range {v40 .. v40}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v4, 0x1bb1

    move-object v7, v5

    move-object/from16 v13, v34

    move-object/from16 v11, v36

    move/from16 v8, v37

    move/from16 v4, v39

    const/16 v5, 0x1bb1

    move-object/from16 v45, v3

    move v3, v2

    move-object/from16 v2, v45

    goto/16 :goto_1f

    :catchall_30
    move-exception v0

    goto :goto_38

    :catchall_31
    move-exception v0

    const/16 v8, 0xe1

    :goto_38
    move-object v2, v0

    .line 2558
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_4a

    throw v3

    :cond_4a
    throw v2

    :catchall_32
    move-exception v0

    const/16 v8, 0xe1

    move-object v2, v0

    .line 2557
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_4b

    throw v3

    :cond_4b
    throw v2

    :catchall_33
    move-exception v0

    const/16 v8, 0xe1

    move-object v2, v0

    .line 2555
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_4c

    throw v3

    :cond_4c
    throw v2

    :catchall_34
    move-exception v0

    const/16 v8, 0xe1

    goto/16 :goto_3f

    :cond_4d
    const/4 v2, 0x2

    const/16 v8, 0xe1

    .line 2567
    new-array v4, v2, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v2, v4, v5

    move-object/from16 v6, v44

    .line 2568
    invoke-virtual {v6, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 2569
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    xor-int/lit8 v4, v10, 0x1

    .line 2570
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v7, v9

    aput-object v4, v7, v5

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lcom/appsflyer/internal/AFc1fSDK;->afErrorLogForExcManagerOnly:Ljava/lang/Object;
    :try_end_8d
    .catchall {:try_start_8d .. :try_end_8d} :catchall_48

    .line 282
    rem-int v12, v6, v6

    const/4 v2, 0x2

    const/16 v3, 0xfc

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/16 v6, 0x75

    const/4 v7, 0x0

    const/16 v29, 0x1

    goto/16 :goto_42

    :catchall_35
    move-exception v0

    const/16 v8, 0xe1

    goto :goto_3a

    :catchall_36
    move-exception v0

    const/16 v8, 0xe1

    goto :goto_39

    :catchall_37
    move-exception v0

    const/16 v8, 0xe1

    const/16 v11, 0x15

    :goto_39
    const/16 v14, 0x1f

    :goto_3a
    move-object v2, v0

    .line 2488
    :try_start_8e
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_4e

    throw v3

    :cond_4e
    throw v2

    :catchall_38
    move-exception v0

    goto/16 :goto_3e

    :catch_f
    move-exception v0

    const/16 v8, 0xe1

    const/16 v11, 0x15

    const/16 v14, 0x1f

    move-object v3, v0

    .line 3767
    :goto_3b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v6, 0xfc

    aget-byte v7, v5, v6

    int-to-byte v6, v7

    const/16 v7, 0x19c

    int-to-short v7, v7

    const/16 v9, 0xc1

    aget-byte v9, v5, v9

    int-to-byte v9, v9

    invoke-static {v6, v7, v9}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x4e

    int-to-byte v2, v2

    const/16 v6, 0x102

    int-to-short v6, v6

    const/16 v7, 0x149

    aget-byte v7, v5, v7

    int-to-byte v7, v7

    invoke-static {v2, v6, v7}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_8e
    .catchall {:try_start_8e .. :try_end_8e} :catchall_48

    const/4 v4, 0x2

    :try_start_8f
    new-array v6, v4, [Ljava/lang/Object;

    const/4 v4, 0x1

    aput-object v3, v6, v4

    const/4 v3, 0x0

    aput-object v2, v6, v3

    const/16 v2, 0x75

    aget-byte v3, v5, v2

    int-to-byte v2, v3

    const/16 v3, 0x2eb

    int-to-short v3, v3

    const/16 v4, 0x2cf

    aget-byte v5, v5, v4

    int-to-byte v4, v5

    invoke-static {v2, v3, v4}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const-class v3, Ljava/lang/Throwable;

    const/4 v5, 0x1

    aput-object v3, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_8f
    .catchall {:try_start_8f .. :try_end_8f} :catchall_39

    :catchall_39
    move-exception v0

    move-object v2, v0

    :try_start_90
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_4f

    throw v3

    :cond_4f
    throw v2

    :catchall_3a
    move-exception v0

    const/16 v8, 0xe1

    const/16 v11, 0x15

    const/16 v14, 0x1f

    move-object v2, v0

    .line 3716
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_50

    throw v3

    :cond_50
    throw v2

    :catchall_3b
    move-exception v0

    const/16 v8, 0xe1

    const/16 v11, 0x15

    const/16 v14, 0x1f

    move-object v2, v0

    .line 3708
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_51

    throw v3

    :cond_51
    throw v2

    :catchall_3c
    move-exception v0

    const/16 v8, 0xe1

    const/16 v11, 0x15

    const/16 v14, 0x1f

    move-object v2, v0

    .line 3694
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_52

    throw v3

    :cond_52
    throw v2

    :catchall_3d
    move-exception v0

    const/16 v8, 0xe1

    const/16 v11, 0x15

    const/16 v14, 0x1f

    move-object v2, v0

    .line 3688
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_53

    throw v3

    :cond_53
    throw v2

    :catchall_3e
    move-exception v0

    const/16 v8, 0xe1

    const/16 v11, 0x15

    const/16 v14, 0x1f

    move-object v2, v0

    .line 3682
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_54

    throw v3

    :cond_54
    throw v2

    :catchall_3f
    move-exception v0

    const/16 v8, 0xe1

    const/16 v11, 0x15

    const/16 v14, 0x1f

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_55

    throw v3

    :cond_55
    throw v2

    :catchall_40
    move-exception v0

    goto/16 :goto_3e

    :catchall_41
    move-exception v0

    move/from16 v39, v4

    move/from16 v37, v8

    const/16 v8, 0xe1

    const/16 v11, 0x15

    const/16 v14, 0x1f

    move-object v2, v0

    .line 2457
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_56

    throw v3

    :cond_56
    throw v2

    :catchall_42
    move-exception v0

    move/from16 v39, v4

    move/from16 v37, v8

    const/16 v8, 0xe1

    const/16 v11, 0x15

    const/16 v14, 0x1f

    move-object v2, v0

    .line 2454
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_57

    throw v3

    :cond_57
    throw v2

    :catchall_43
    move-exception v0

    move/from16 v39, v4

    move/from16 v37, v8

    goto :goto_3c

    :catchall_44
    move-exception v0

    move/from16 v39, v4

    move/from16 v37, v8

    goto :goto_3c

    :catchall_45
    move-exception v0

    move/from16 v39, v4

    move/from16 v37, v8

    move-object/from16 v36, v11

    :goto_3c
    const/16 v8, 0xe1

    const/16 v11, 0x15

    const/16 v14, 0x1f

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_58

    throw v3

    :cond_58
    throw v2

    :catchall_46
    move-exception v0

    move/from16 v39, v4

    move/from16 v37, v8

    move-object/from16 v36, v11

    const/16 v8, 0xe1

    const/16 v11, 0x15

    const/16 v14, 0x1f

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_59

    throw v3

    :cond_59
    throw v2

    :catchall_47
    move-exception v0

    move/from16 v39, v4

    move/from16 v37, v8

    move-object/from16 v36, v11

    const/16 v8, 0xe1

    const/16 v11, 0x15

    const/16 v14, 0x1f

    move-object v2, v0

    .line 2437
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_5a

    throw v3

    :cond_5a
    throw v2

    :catchall_48
    move-exception v0

    goto :goto_3f

    :catchall_49
    move-exception v0

    move/from16 v39, v4

    move/from16 v37, v8

    move-object/from16 v36, v11

    const/16 v8, 0xe1

    const/16 v11, 0x15

    const/16 v14, 0x1f

    move-object v2, v0

    .line 2420
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_5b

    throw v3

    :cond_5b
    throw v2

    :catchall_4a
    move-exception v0

    move/from16 v39, v4

    move/from16 v37, v8

    move-object/from16 v36, v11

    const/16 v8, 0xe1

    const/16 v11, 0x15

    const/16 v14, 0x1f

    move-object v2, v0

    .line 2419
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_5c

    throw v3

    :cond_5c
    throw v2

    :catchall_4b
    move-exception v0

    move/from16 v39, v4

    move/from16 v37, v8

    move-object/from16 v36, v11

    const/16 v8, 0xe1

    const/16 v11, 0x15

    const/16 v14, 0x1f

    move-object v2, v0

    .line 2418
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_5d

    throw v3

    :cond_5d
    throw v2
    :try_end_90
    .catchall {:try_start_90 .. :try_end_90} :catchall_48

    :catchall_4c
    move-exception v0

    move/from16 v39, v4

    goto :goto_3d

    :catchall_4d
    move-exception v0

    move-object/from16 v28, v2

    move/from16 v29, v3

    move/from16 v39, v4

    move-object/from16 v31, v5

    move-object/from16 v32, v6

    move-object/from16 v33, v7

    :goto_3d
    move/from16 v37, v8

    move-object/from16 v36, v11

    :goto_3e
    const/16 v8, 0xe1

    const/16 v11, 0x15

    const/16 v14, 0x1f

    :goto_3f
    move-object v2, v0

    :goto_40
    add-int/lit8 v3, v37, 0x1

    const/4 v4, 0x7

    :goto_41
    if-ge v3, v4, :cond_5f

    .line 256
    :try_start_91
    aget-boolean v5, v36, v3
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_91} :catch_10

    if-eqz v5, :cond_5e

    .line 2500
    sget v2, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    or-int/lit8 v3, v2, 0x17

    const/4 v5, 0x1

    shl-int/2addr v3, v5

    xor-int/lit8 v2, v2, 0x17

    sub-int/2addr v3, v2

    rem-int/lit16 v2, v3, 0x80

    sput v2, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    const/4 v2, 0x2

    rem-int/2addr v3, v2

    const/4 v5, 0x0

    .line 271
    :try_start_92
    sput-object v5, Lcom/appsflyer/internal/AFc1fSDK;->afErrorLogForExcManagerOnly:Ljava/lang/Object;

    .line 272
    sput-object v5, Lcom/appsflyer/internal/AFc1fSDK;->getLevel:Ljava/lang/Object;

    const/4 v2, 0x2

    const/16 v3, 0xfc

    const/16 v6, 0x75

    const/4 v7, 0x0

    goto/16 :goto_42

    :cond_5e
    const/4 v5, 0x0

    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    .line 266
    :cond_5f
    sget-object v1, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v3, 0xfc

    aget-byte v3, v1, v3

    int-to-byte v3, v3

    const/16 v4, 0x15e

    int-to-short v4, v4

    const/16 v6, 0x75

    aget-byte v5, v1, v6

    int-to-byte v5, v5

    invoke-static {v3, v4, v5}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v3
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_92} :catch_10

    const/4 v4, 0x2

    :try_start_93
    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x1

    aput-object v2, v5, v4

    const/4 v2, 0x0

    aput-object v3, v5, v2

    aget-byte v2, v1, v6

    int-to-byte v2, v2

    const/16 v3, 0x2eb

    int-to-short v3, v3

    const/16 v4, 0x2cf

    aget-byte v1, v1, v4

    int-to-byte v1, v1

    invoke-static {v2, v3, v1}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v3, v2, v7

    const-class v3, Ljava/lang/Throwable;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    throw v1
    :try_end_93
    .catchall {:try_start_93 .. :try_end_93} :catchall_4e

    :catchall_4e
    move-exception v0

    move-object v1, v0

    :try_start_94
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_60

    throw v2

    :cond_60
    throw v1

    :cond_61
    move-object/from16 v28, v2

    move/from16 v29, v3

    move/from16 v39, v4

    move-object/from16 v31, v5

    move-object/from16 v32, v6

    move-object/from16 v33, v7

    move/from16 v37, v8

    move-object/from16 v36, v11

    const/4 v2, 0x2

    const/16 v3, 0xfc

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/16 v6, 0x75

    const/4 v7, 0x0

    const/16 v8, 0xe1

    const/16 v11, 0x15

    const/16 v14, 0x1f

    :goto_42
    xor-int/lit8 v9, v37, 0x6d

    and-int/lit8 v10, v37, 0x6d

    const/4 v12, 0x1

    shl-int/2addr v10, v12

    add-int/2addr v9, v10

    or-int/lit8 v10, v9, -0x6c

    shl-int/2addr v10, v12

    xor-int/lit8 v9, v9, -0x6c

    sub-int v9, v10, v9

    move v8, v9

    move-object/from16 v2, v28

    move/from16 v3, v29

    move-object/from16 v5, v31

    move-object/from16 v6, v32

    move-object/from16 v7, v33

    move-object/from16 v11, v36

    move/from16 v4, v39

    const/4 v10, 0x4

    const/16 v12, 0x75

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/16 v15, 0x3c

    goto/16 :goto_e

    :cond_62
    :goto_43
    return-void

    :catchall_4f
    move-exception v0

    move-object v1, v0

    .line 151
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_63

    throw v2

    :cond_63
    throw v1

    :catchall_50
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_64

    throw v2

    :cond_64
    throw v1

    :catchall_51
    move-exception v0

    move-object v1, v0

    .line 147
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_65

    throw v2

    :cond_65
    throw v1
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_94} :catch_10

    :catch_10
    move-exception v0

    move-object v1, v0

    .line 282
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    nop

    :array_0
    .array-data 1
        -0x30t
        -0x36t
        0x39t
        -0x1t
        -0x6ct
        -0x6t
        -0x8t
        -0x63t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 818
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AFInAppEventParameterName(I)I
    .locals 9

    const/4 v0, 0x2

    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    or-int/lit8 v2, v1, 0xd

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    xor-int/lit8 v4, v1, 0xd

    sub-int/2addr v2, v4

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    rem-int/2addr v2, v0

    sget-object v2, Lcom/appsflyer/internal/AFc1fSDK;->afErrorLogForExcManagerOnly:Ljava/lang/Object;

    or-int/lit8 v4, v1, 0x7d

    shl-int/2addr v4, v3

    xor-int/lit8 v1, v1, 0x7d

    sub-int/2addr v4, v1

    rem-int/lit16 v1, v4, 0x80

    sput v1, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    rem-int/2addr v4, v0

    and-int/lit8 v4, v1, 0x4b

    or-int/lit8 v1, v1, 0x4b

    add-int/2addr v4, v1

    rem-int/lit16 v1, v4, 0x80

    sput v1, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    rem-int/2addr v4, v0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v1, v4

    sget-object p0, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v5, 0xe1

    aget-byte v6, p0, v5

    int-to-byte v6, v6

    const/16 v7, 0x20b

    int-to-short v7, v7

    const/4 v8, 0x6

    aget-byte v8, p0, v8

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/appsflyer/internal/AFc1fSDK;->getLevel:Ljava/lang/Object;

    check-cast v7, Ljava/lang/ClassLoader;

    invoke-static {v6, v3, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6

    const/16 v7, 0xb0

    aget-byte v7, p0, v7

    int-to-byte v7, v7

    const/16 v8, 0x14f

    int-to-short v8, v8

    aget-byte p0, p0, v5

    int-to-byte p0, p0

    invoke-static {v7, v8, p0}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object p0

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v6, p0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget v1, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    and-int/lit8 v2, v1, 0x2f

    or-int/lit8 v1, v1, 0x2f

    add-int/2addr v2, v1

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    rem-int/2addr v2, v0

    if-eqz v2, :cond_0

    const/16 v0, 0x54

    div-int/2addr v0, v4

    :cond_0
    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    throw v0

    :cond_1
    throw p0
.end method

.method public static AFInAppEventType(ICI)Ljava/lang/Object;
    .locals 8

    const/4 v0, 0x2

    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    add-int/lit8 v1, v1, 0x7

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    rem-int/2addr v1, v0

    const/4 v3, 0x0

    if-nez v1, :cond_0

    sget-object v1, Lcom/appsflyer/internal/AFc1fSDK;->afErrorLogForExcManagerOnly:Ljava/lang/Object;

    const/16 v4, 0x12

    div-int/2addr v4, v3

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/appsflyer/internal/AFc1fSDK;->afErrorLogForExcManagerOnly:Ljava/lang/Object;

    :goto_0
    add-int/lit8 v4, v2, 0x1f

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    rem-int/2addr v4, v0

    or-int/lit8 v4, v2, 0x1d

    const/4 v5, 0x1

    shl-int/2addr v4, v5

    xor-int/lit8 v2, v2, 0x1d

    sub-int/2addr v4, v2

    rem-int/lit16 v2, v4, 0x80

    sput v2, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    rem-int/2addr v4, v0

    const/4 v2, 0x3

    :try_start_0
    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v0

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    aput-object p1, v4, v5

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v3

    sget-object p0, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 p1, 0xe1

    aget-byte p1, p0, p1

    int-to-byte p1, p1

    const/16 p2, 0x20b

    int-to-short p2, p2

    const/4 v6, 0x6

    aget-byte v6, p0, v6

    int-to-byte v6, v6

    invoke-static {p1, p2, v6}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/appsflyer/internal/AFc1fSDK;->getLevel:Ljava/lang/Object;

    check-cast p2, Ljava/lang/ClassLoader;

    invoke-static {p1, v5, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    const/16 p2, 0xa

    aget-byte p2, p0, p2

    int-to-byte p2, p2

    xor-int/lit16 v6, p2, 0x2c6

    and-int/lit16 v7, p2, 0x2c6

    or-int/2addr v6, v7

    int-to-short v6, v6

    const/16 v7, 0x31a

    aget-byte p0, p0, v7

    int-to-byte p0, p0

    invoke-static {p2, v6, p0}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object p0

    new-array p2, v2, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, p2, v3

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v3, p2, v5

    aput-object v2, p2, v0

    invoke-virtual {p1, p0, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget p1, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    and-int/lit8 p2, p1, 0x2b

    or-int/lit8 p1, p1, 0x2b

    add-int/2addr p2, p1

    rem-int/lit16 p1, p2, 0x80

    sput p1, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    rem-int/2addr p2, v0

    if-eqz p2, :cond_1

    return-object p0

    :cond_1
    const/4 p0, 0x0

    throw p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_2

    throw p1

    :cond_2
    throw p0
.end method

.method public static AFKeystoreWrapper(Ljava/lang/Object;)I
    .locals 9

    const/4 v0, 0x2

    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    or-int/lit8 v2, v1, 0x71

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    xor-int/lit8 v4, v1, 0x71

    sub-int/2addr v2, v4

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    rem-int/2addr v2, v0

    sget-object v2, Lcom/appsflyer/internal/AFc1fSDK;->afErrorLogForExcManagerOnly:Ljava/lang/Object;

    add-int/lit8 v4, v1, 0x5b

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    rem-int/2addr v4, v0

    add-int/lit8 v1, v1, 0x3f

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    rem-int/2addr v1, v0

    :try_start_0
    new-array v1, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v1, v4

    sget-object p0, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v5, 0xe1

    aget-byte v5, p0, v5

    int-to-byte v5, v5

    const/16 v6, 0x20b

    int-to-short v6, v6

    const/4 v7, 0x6

    aget-byte v7, p0, v7

    int-to-byte v7, v7

    invoke-static {v5, v6, v7}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/appsflyer/internal/AFc1fSDK;->getLevel:Ljava/lang/Object;

    check-cast v6, Ljava/lang/ClassLoader;

    invoke-static {v5, v3, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    const/16 v6, 0xa

    aget-byte v6, p0, v6

    int-to-byte v6, v6

    xor-int/lit16 v7, v6, 0x2c6

    and-int/lit16 v8, v6, 0x2c6

    or-int/2addr v7, v8

    int-to-short v7, v7

    const/16 v8, 0x31a

    aget-byte p0, p0, v8

    int-to-byte p0, p0

    invoke-static {v6, v7, p0}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object p0

    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v4

    invoke-virtual {v5, p0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget v1, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    xor-int/lit8 v2, v1, 0x39

    and-int/lit8 v1, v1, 0x39

    shl-int/2addr v1, v3

    add-int/2addr v2, v1

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

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

.method static init$0()V
    .locals 6

    const/4 v0, 0x2

    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    add-int/lit8 v1, v1, 0x17

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    rem-int/2addr v1, v0

    const-string v2, "ISO-8859-1"

    const-string v3, "1_\u00a3K\u00cd\u00f5\u0003?\u00cf\u00f2\u0001\u00fe\u000e\u00fb\u00f4\u0015\u00f4D\u00c7\u00fc\u00fb\u0010\u00f4\u0005\u000e\u00f6>\u00cc8\n\u00ec\u00164\u00c6\u00fbB\u00ed\u00ce\u0010\u0001\u0002\u00f4\u000e\u0002\u001c\u00dc\u00ff\u00fc\u0002\"\u00e0\u0003\u000e\u0005\u00f5\n\u00ec\u00164\u00c3\u000c\u00f4\u0008:\u00dc\u00db\u0007\u0000\u0010\u00f9\u00ef\u0004\u0001\u000e\u00f8\u00fb4\u00d2\u0001\u0005\u0004\u0007\u0003\u00ee\u000c\u00fb\u0002\n\u00ec\u00164\u00c1\u0006\u00fbB\u00ed\u00ca\u0006\u0010$\u00ce\u0010\u0001\u0002\u00f4\u00f4\u000b\u00f3\u0004\u0007\u00067\u00c0\u00fdF\u00ed\u00ce\r\u00fe\tA\u00cf\u0012\u00f4\u0000\u000b\u00fb\u0002\n\u00ec\u00164\u00c6\u00fbB\u00ed\u00ca\u0006\u0010%\u00d0\u0001\u0012\u00e91\u00dc\u00ff\u00fc\u0002\"\u00e0\u0003\u000e\u0005\u00f5\u0004\u00f6\u00f7\u000e\u00ff>\u00bc\u00fb\u0007\u0000\u0010\u00f9@\u00e6\u00dc\"\u00e9\u00f9\u00ff\u00fe\u00fa6\u00e0\u00ee6\u00d8\u000c\u00ef\u0001(\u00de\u000f\u00fe\u0000\u00f4\u000e\u0005\u00fe\u001f\u00d2\n\u0001\u00f4\u00f5\u0003?\u00cf\u00f2\u0001\u00fe\u000e\u00fb\u00f4\u0015\u00f4D\u00c7\u00fc\u00fb\u0010\u00f4\u0005\u000e\u00f6>\u00ef\u00fc\u00e43\u00cc\u0014\u0010\u00fa(\u00ab\u0003\u00f2/\u00de\u00fe\u0008\u00f30\u00dc\u00f8\u00fc\u000b\u0000\u00ee*\u00ea\u0006\n\u00f6\u0010\u0003\u00f22\u00e3\u00ff\u00fc\u0004\"\u00dc\u00f8\u000e\u0005\u00fe\u0004\u00f6\u00f7\u000e\u00ff>\u00bc\u00fb\u0007\u0000\u0010\u00f9@\u00eb\u00e0\u00ee3\u00de\u00fe\u0008\u00f5\u000c\u0000\u0007\u00fd\u0003\u00ff\u00fc\u0004\u0004\u00f6\u00f7\u000e\u00ff>\u00bc\u00fb\u0007\u0000\u0010\u00f9@\u00ed\u00e2\u00ef\u000f\"\u00e0\u00ee6\u00d8\u000c\u00ef\u0001(\u00de\u000f\u00fe\u0000\u00f4\u0003\u00f22\u00d5\u000c\u0000#\u00e3\u00ff\u00fc\u0004\"\u00dc\u00f8\u00fb\u000c\u000c\u00fc\u00fe\u00dc.\u00d2\u0001,\u00d0\u0012\u00f8\u00fb!\u00dc\n\u000c\u0016\u00fa\u0018\u00f9\u00bb\u0000P\u00bb\u0006\u00f6\u0001\u000b\u0002\u00ff\u00f9\u00f9T\u00b5\u0008\u0000\u00f3L\u00f5\u0003?\u00cf\u00f2\u0001\u00fe\u000e\u00fb\u00f4\u0015\u00f4D\u00c7\u00fc\u00fb\u0010\u00f4\u0005\u000e\u00f6>\u00ef\u00fc\u00e43\u00c9\u0017\u0010\u00fa(\u0001\u0016\u00fb\u0017\u00f9\u0016\u00fd\u0015\u00f9\u0016\u00f9\u0019\u00f9\n\u00ec\u00164\u00c3\u000c\u00f4\u0008:\u00ec\u00d8\u000c\u00ef\u0001(\u00de\u000f\u00fe\u0000\u00f4\u00f4\u000b\u00f3\u0004\u0007\u00067\u00ce\u00f2\u0001C\u00ee\u00d2\u0001*\u00dc\u00fe\u000e\u0002\u00f6\u00fa\u000f\u00f2#\u00ee\u0005\u00fe\u0016\u00e2\u0003\u00f4\n\u00ec\u00164\u00c6\u00fbB\u00eb\u00e4\u00ee\u0014\u0019\u00dc\u00ff\u00fc\u0002\"\u00e0\u0003\u000e\u0005\u00f5\u00fe\u000f\u00fe!\u00e0\u00ee\n\u00ec\u00164\u00c6\u00fbB\u00ed\u00ca\u0006\u0010%\u00d0\u0001\u0012\u00e9+\u00db\u0002\u0005\u00fc\u0002\"\u00e0\u0003\u000e\u0005\u00f5\u00f5\u0003@\u00ce\u00f2\u0001\u00fe\u000e\u00fb\u00f4\u0015\u00f4E\u00c6\u00fc\u00fb\u0010\u00f4\u0005\u000e\u00f6?\u00ee\u00fc\u00e43\u00c9\u0017\u0010\u00fa(\u0001\t\u0003\u00fa\u0003\u00f22\u00d8\u000c\u00ef\u0001(\u00de\u000f\u00fe\u0000\u00f4\u00cc\u0004\u00ee\u00143\u00cc\u0004\u00ee\u00143\u0000\u00fa\u0008\u00f2\u0010\u0003\u00f2/\u0003\u0010\u00fa\u00ed\u0017\u00fc\u00fb\u000e\u00ee\u000c\u00f4\u0012\u001a\u00e4\u0008\u00f1\u0012\u00f0\u00fa*\u00f0\u00ee\r$\u00da\u0008\u00f9\t\u00f8\u00fb\u0002\u00f8\u00fe\u00fd\u000f\u00cd\u00f5\u0003?\u00cf\u00f2\u0001\u00fe\u000e\u00fb\u00f4\u0015\u00f4D\u00c7\u00fc\u00fb\u0010\u00f4\u0005\u000e\u00f6>\u00cd7\n\u00ec\u00164\u00c6\u00fbB\u00bb\u0008\u00fe\r\u00fc\u00f8\u0003\u00f2%\u00df\u0004\u0000\u000c\u00f4\u00ff\u00fc\u0003\u00f24\u00e0\u00f0\u0005\u0004\u00f8\u0002\u0010\u0016\u00f0\u00ee\r\u00f4\u000b\u00f3\u0004\u0007\u00067\u00ce\u00f2\u0001C\u00ee\u00df\u00f0\u000c\u00f4\u000e\u00f6\u00fc&\u00ed\u00f7\u000e\u0005\u00fe\u0016\u00f6\u00f8\u0011\u0017\u00ea\n\u00ec\u00164\u00c6\u00fbB\u00e9\u00de\u00fe\u0008\u0017\u00db\u0002\u0005\u00fc\u0002\"\u00e0\u0003\u000e\u0005\u00f5\u0003\u00f4\u0018\u00e6\n\u00f6\u0010\n\u00ec\u00164\u00c6\u00fbB\u00e6\u00fb\u000b\u00ce\u0016\u00ff\u00f6\u00fd\u000c\u00fb\u0002\u00f4\u000b\u00f3\u0004\u0007\u00067\u00bb\u0010\u00ee\u0005G\u00db\u00f0\u00ee\u0005 \u00e2\u000c\u00fe\u00fa\u0010\u00ee\r\u001d\u00e4\u00f7\u0000\u0003\u00f2,\u00dc\u0006\u00f6\u000c\t\u00f6,\u00d2\u0001\u0005\u0004\u0007\u0003\u00ee\u000c\u00fb\u0002\n\u00ec\u00164\u00c6\u00fbB\u00e9\u00de\u00fe\u0008\u00f5\u0003\u00fe\u0005\u0008\u00ee%\u00e6*\u00d5\u0012\u00ff\u00f0\u000c\u00fb\u0002\u0016\u00fe\u0014\u00f9\u00f4\u000b\u00f3\u0004\u0007\u00067\u00ba\u0002\u000c\u00fe?\u00db\u00dc\n\u000c\u0002\u000f\u00f6\u00f6\u00f8\u0011\u00ef\u0004\u0001\u000e\u00f8\u00fb!\u00ec\u00fd\t\u0019\u00e5\u00fe\u0001\u0004\u00f7\n\u00ec\u00164\u00c6\u00fbB\u00e9\u00de\u00fe\u0008\"\u00e0\u00f3\u0011\u00f2\n\u00fa\u00fd\u0006\u00fe\u0006.\u00ca\u0006\u0010%\u00d0\u0001\u0012\u00e9\u00fe\u000f\u00fe\"\u00d8\u000c\u00ef\u0001\u00f5\u0003@\u00ce\u00f2\u0001\u00fe\u000e\u00fb\u00f4\u0015\u00f4\u0006\u0012\u00f2\u000e\u00ee\u000c\u00f4\u0012\u001a\u00e4\u0008\u00f1\u0012\u00f0\u00fa6\u00dc\u00f8\u000e\u0003\u00f0\u0006\u00fe\n\u0005\u00f3\n\u00ec\u00164\u00c6\u00fbB\u00e6\u00dc\u00ff\u00fc\u0002\"\u00e0\u0003\u000e\u0005\u00f5"

    const/4 v4, 0x0

    const/16 v5, 0x3d6

    if-eqz v1, :cond_0

    new-array v1, v5, [B

    invoke-virtual {v3, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2, v4, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sput-object v1, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v1, 0x7d

    goto :goto_0

    :cond_0
    new-array v1, v5, [B

    invoke-virtual {v3, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2, v4, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sput-object v1, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v1, 0x37

    :goto_0
    sput v1, Lcom/appsflyer/internal/AFc1fSDK;->$$b:I

    sget v1, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    xor-int/lit8 v2, v1, 0x47

    and-int/lit8 v1, v1, 0x47

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v2, v1

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    rem-int/2addr v2, v0

    return-void
.end method
