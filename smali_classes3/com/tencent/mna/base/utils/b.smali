.class public final Lcom/tencent/mna/base/utils/b;
.super Ljava/lang/Object;
.source "MobileUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mna/base/utils/b$b;,
        Lcom/tencent/mna/base/utils/b$c;
    }
.end annotation


# static fields
.field private static a:Lcom/tencent/mna/base/utils/b$c; = null

.field private static b:I = -0x1

.field private static c:I = 0x1

.field private static d:I = 0xffff

.field private static e:Lcom/tencent/mna/base/utils/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/mna/base/utils/b$b;

    invoke-direct {v0}, Lcom/tencent/mna/base/utils/b$b;-><init>()V

    sput-object v0, Lcom/tencent/mna/base/utils/b;->e:Lcom/tencent/mna/base/utils/b$b;

    return-void
.end method

.method static synthetic a()I
    .locals 1

    .line 3
    sget v0, Lcom/tencent/mna/base/utils/b;->b:I

    return v0
.end method

.method static synthetic a(I)I
    .locals 0

    .line 2
    sput p0, Lcom/tencent/mna/base/utils/b;->c:I

    return p0
.end method

.method public static a(Landroid/content/Context;)I
    .locals 6

    const/4 v0, 0x0

    .line 5
    :try_start_0
    const-string v1, "connectivity"

    .line 6
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    .line 9
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 10
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-nez v5, :cond_3

    .line 11
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 14
    :cond_1
    invoke-static {p0, v4}, Lcom/tencent/mna/base/utils/c;->a(Landroid/content/Context;Landroid/net/NetworkInfo;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    const/4 p0, 0x4

    :goto_2
    return p0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getMobileSubType exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    :cond_4
    return v0
.end method

.method public static a(Landroid/telephony/CellInfo;)I
    .locals 2

    if-eqz p0, :cond_2

    .line 64
    sget v0, Lcom/tencent/mna/base/utils/a$a;->a:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 65
    invoke-static {p0}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m$1(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-static {p0}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/telephony/CellInfoNr;

    move-result-object p0

    .line 68
    invoke-static {p0}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m(Landroid/telephony/CellInfoNr;)Landroid/telephony/CellSignalStrength;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthNr;

    move-result-object p0

    .line 69
    invoke-static {p0}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m(Landroid/telephony/CellSignalStrengthNr;)I

    move-result p0

    goto :goto_0

    .line 70
    :cond_0
    instance-of v0, p0, Landroid/telephony/CellInfoLte;

    if-eqz v0, :cond_1

    .line 71
    check-cast p0, Landroid/telephony/CellInfoLte;

    .line 72
    invoke-virtual {p0}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m(Landroid/telephony/CellSignalStrengthLte;)I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method static synthetic a(Ljava/util/List;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tencent/mna/base/utils/b;->c(Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method private static a(Landroid/content/Context;I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "getAllCellInfoWithTimeout requestUpdate get cellInfo elapse:"

    .line 21
    sget v1, Lcom/tencent/mna/base/utils/a$a;->a:I

    const/16 v2, 0x11

    if-ge v1, v2, :cond_0

    .line 22
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 24
    :cond_0
    invoke-static {p0}, Lcom/tencent/mna/base/utils/e;->c(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 25
    const-string p0, "getAllCellInfoWithTimeout requestUpdate no permission"

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 26
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 29
    :cond_1
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    const/16 v3, 0x1d

    if-lt v1, v3, :cond_2

    .line 32
    :try_start_0
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 34
    invoke-static {p0}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object p0

    new-instance v5, Lcom/tencent/mna/base/utils/b$a;

    invoke-direct {v5, v1}, Lcom/tencent/mna/base/utils/b$a;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v2, p0, v5}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CellInfoCallback;)V

    int-to-long p0, p1

    .line 56
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p0, p1, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v3

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 60
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "getAllCellInfoWithTimeout get cellInfo exception:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 63
    :cond_2
    :goto_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized a(Lcom/tencent/mna/base/utils/b$b;)V
    .locals 1

    const-class v0, Lcom/tencent/mna/base/utils/b;

    monitor-enter v0

    .line 4
    :try_start_0
    sput-object p0, Lcom/tencent/mna/base/utils/b;->e:Lcom/tencent/mna/base/utils/b$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static synthetic b()I
    .locals 1

    .line 2
    sget v0, Lcom/tencent/mna/base/utils/b;->d:I

    return v0
.end method

.method static synthetic b(I)I
    .locals 0

    .line 1
    sput p0, Lcom/tencent/mna/base/utils/b;->b:I

    return p0
.end method

.method public static b(Landroid/telephony/CellInfo;)I
    .locals 2

    if-eqz p0, :cond_2

    .line 97
    sget v0, Lcom/tencent/mna/base/utils/a$a;->a:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 98
    invoke-static {p0}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m$1(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-static {p0}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/telephony/CellInfoNr;

    move-result-object p0

    .line 101
    invoke-static {p0}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m(Landroid/telephony/CellInfoNr;)Landroid/telephony/CellSignalStrength;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/telephony/CellSignalStrengthNr;

    move-result-object p0

    .line 102
    invoke-static {p0}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/telephony/CellSignalStrengthNr;)I

    move-result p0

    goto :goto_0

    .line 103
    :cond_0
    instance-of v0, p0, Landroid/telephony/CellInfoLte;

    if-eqz v0, :cond_1

    .line 104
    check-cast p0, Landroid/telephony/CellInfoLte;

    .line 105
    invoke-virtual {p0}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/telephony/CellSignalStrengthLte;)I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static b(Ljava/util/List;)Lcom/tencent/mna/base/utils/b$b;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)",
            "Lcom/tencent/mna/base/utils/b$b;"
        }
    .end annotation

    .line 56
    new-instance v0, Lcom/tencent/mna/base/utils/b$b;

    invoke-direct {v0}, Lcom/tencent/mna/base/utils/b$b;-><init>()V

    if-eqz p0, :cond_8

    .line 57
    sget v1, Lcom/tencent/mna/base/utils/a$a;->a:I

    const/16 v2, 0x12

    if-ge v1, v2, :cond_0

    goto/16 :goto_2

    .line 61
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellInfo;

    .line 62
    invoke-virtual {v1}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 65
    :cond_2
    sget v2, Lcom/tencent/mna/base/utils/a$a;->a:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_3

    invoke-static {v1}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m$1(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 66
    invoke-static {v1}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/telephony/CellInfoNr;

    move-result-object v2

    .line 67
    invoke-static {v2}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m(Landroid/telephony/CellInfoNr;)Landroid/telephony/CellIdentity;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/telephony/CellIdentityNr;

    move-result-object v2

    .line 68
    invoke-static {v2}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m(Landroid/telephony/CellIdentityNr;)I

    move-result v3

    iput v3, v0, Lcom/tencent/mna/base/utils/b$b;->a:I

    .line 69
    invoke-static {v2}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/telephony/CellIdentityNr;)I

    move-result v2

    iput v2, v0, Lcom/tencent/mna/base/utils/b$b;->b:I

    .line 70
    iput-object v1, v0, Lcom/tencent/mna/base/utils/b$b;->c:Landroid/telephony/CellInfo;

    goto :goto_1

    .line 71
    :cond_3
    instance-of v2, v1, Landroid/telephony/CellInfoLte;

    if-eqz v2, :cond_4

    .line 72
    move-object v2, v1

    check-cast v2, Landroid/telephony/CellInfoLte;

    .line 73
    invoke-virtual {v2}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v2

    .line 74
    invoke-virtual {v2}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v3

    iput v3, v0, Lcom/tencent/mna/base/utils/b$b;->a:I

    .line 75
    invoke-virtual {v2}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v2

    iput v2, v0, Lcom/tencent/mna/base/utils/b$b;->b:I

    .line 76
    iput-object v1, v0, Lcom/tencent/mna/base/utils/b$b;->c:Landroid/telephony/CellInfo;

    goto :goto_1

    .line 77
    :cond_4
    instance-of v2, v1, Landroid/telephony/CellInfoWcdma;

    if-eqz v2, :cond_5

    .line 78
    move-object v2, v1

    check-cast v2, Landroid/telephony/CellInfoWcdma;

    .line 79
    invoke-virtual {v2}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v2

    .line 80
    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v3

    iput v3, v0, Lcom/tencent/mna/base/utils/b$b;->a:I

    .line 81
    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v2

    iput v2, v0, Lcom/tencent/mna/base/utils/b$b;->b:I

    .line 82
    iput-object v1, v0, Lcom/tencent/mna/base/utils/b$b;->c:Landroid/telephony/CellInfo;

    goto :goto_1

    .line 83
    :cond_5
    instance-of v2, v1, Landroid/telephony/CellInfoGsm;

    if-eqz v2, :cond_6

    .line 84
    move-object v2, v1

    check-cast v2, Landroid/telephony/CellInfoGsm;

    .line 85
    invoke-virtual {v2}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v2

    .line 86
    invoke-virtual {v2}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v3

    iput v3, v0, Lcom/tencent/mna/base/utils/b$b;->a:I

    .line 87
    invoke-virtual {v2}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v2

    iput v2, v0, Lcom/tencent/mna/base/utils/b$b;->b:I

    .line 88
    iput-object v1, v0, Lcom/tencent/mna/base/utils/b$b;->c:Landroid/telephony/CellInfo;

    goto :goto_1

    .line 89
    :cond_6
    instance-of v2, v1, Landroid/telephony/CellInfoCdma;

    if-eqz v2, :cond_7

    .line 90
    move-object v2, v1

    check-cast v2, Landroid/telephony/CellInfoCdma;

    .line 91
    invoke-virtual {v2}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v2

    .line 92
    invoke-virtual {v2}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result v3

    iput v3, v0, Lcom/tencent/mna/base/utils/b$b;->a:I

    .line 93
    invoke-virtual {v2}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result v2

    iput v2, v0, Lcom/tencent/mna/base/utils/b$b;->b:I

    .line 94
    iput-object v1, v0, Lcom/tencent/mna/base/utils/b$b;->c:Landroid/telephony/CellInfo;

    .line 96
    :cond_7
    :goto_1
    iget v1, v0, Lcom/tencent/mna/base/utils/b$b;->b:I

    if-ltz v1, :cond_1

    :cond_8
    :goto_2
    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    const-string v0, "_"

    const-string v1, "getPhoneCellInfo LacCid cellInfo:"

    const-string v2, "_-2_-2"

    const-string v3, "_-1_-1"

    .line 3
    const-string v4, "-1_-1_-1_-1"

    .line 8
    :try_start_0
    const-string v5, "phone"

    .line 9
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    if-eqz v5, :cond_0

    .line 10
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-nez v6, :cond_1

    return-object v4

    :cond_1
    const/4 v7, 0x0

    const/4 v8, 0x3

    .line 15
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 16
    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 17
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 18
    invoke-static {p0}, Lcom/tencent/mna/base/utils/e;->c(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 19
    const-string p0, "getPhoneCellInfo no permission"

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 23
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 26
    :cond_2
    sget v2, Lcom/tencent/mna/base/utils/a$a;->a:I

    const/16 v3, 0x1a

    if-ge v2, v3, :cond_5

    .line 28
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object p0

    .line 29
    instance-of v1, p0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v1, :cond_3

    .line 30
    check-cast p0, Landroid/telephony/gsm/GsmCellLocation;

    .line 31
    invoke-virtual {p0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    .line 32
    invoke-virtual {p0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result p0

    goto :goto_1

    .line 33
    :cond_3
    instance-of v1, p0, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v1, :cond_4

    .line 34
    check-cast p0, Landroid/telephony/cdma/CdmaCellLocation;

    .line 35
    invoke-virtual {p0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v1

    .line 36
    invoke-virtual {p0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result p0

    goto :goto_1

    :cond_4
    const/4 p0, -0x1

    const/4 v1, -0x1

    goto :goto_1

    :cond_5
    const/16 v2, 0x64

    .line 40
    invoke-static {p0, v2}, Lcom/tencent/mna/base/utils/b;->a(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p0

    .line 42
    invoke-static {p0}, Lcom/tencent/mna/base/utils/b;->b(Ljava/util/List;)Lcom/tencent/mna/base/utils/b$b;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 43
    iget v2, p0, Lcom/tencent/mna/base/utils/b$b;->b:I

    if-gez v2, :cond_7

    .line 44
    :cond_6
    invoke-static {}, Lcom/tencent/mna/base/utils/b;->c()Lcom/tencent/mna/base/utils/b$b;

    move-result-object v2

    if-eqz v2, :cond_7

    move-object p0, v2

    .line 49
    :cond_7
    iget v2, p0, Lcom/tencent/mna/base/utils/b$b;->a:I

    .line 50
    iget v3, p0, Lcom/tencent/mna/base/utils/b$b;->b:I

    .line 51
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    move v1, v2

    move p0, v3

    .line 53
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getPhoneCellInfo exception:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    move-object p0, v4

    :goto_2
    return-object p0
.end method

.method static synthetic c(I)I
    .locals 0

    .line 1
    sput p0, Lcom/tencent/mna/base/utils/b;->d:I

    return p0
.end method

.method private static c(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)I"
        }
    .end annotation

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellInfo;

    .line 4
    invoke-virtual {v1}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    sget v2, Lcom/tencent/mna/base/utils/a$a;->a:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_3

    invoke-static {v1}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m$1(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 10
    invoke-static {v1}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/telephony/CellInfoNr;

    move-result-object v1

    .line 11
    invoke-static {v1}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m(Landroid/telephony/CellInfoNr;)Landroid/telephony/CellSignalStrength;

    move-result-object v1

    goto :goto_1

    .line 12
    :cond_3
    instance-of v2, v1, Landroid/telephony/CellInfoLte;

    if-eqz v2, :cond_4

    .line 13
    check-cast v1, Landroid/telephony/CellInfoLte;

    .line 14
    invoke-virtual {v1}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v1

    goto :goto_1

    .line 15
    :cond_4
    instance-of v2, v1, Landroid/telephony/CellInfoWcdma;

    if-eqz v2, :cond_5

    .line 16
    check-cast v1, Landroid/telephony/CellInfoWcdma;

    .line 17
    invoke-virtual {v1}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v1

    goto :goto_1

    .line 18
    :cond_5
    instance-of v2, v1, Landroid/telephony/CellInfoCdma;

    if-eqz v2, :cond_6

    .line 19
    check-cast v1, Landroid/telephony/CellInfoCdma;

    .line 20
    invoke-virtual {v1}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v1

    goto :goto_1

    .line 21
    :cond_6
    instance-of v2, v1, Landroid/telephony/CellInfoGsm;

    if-eqz v2, :cond_7

    .line 22
    check-cast v1, Landroid/telephony/CellInfoGsm;

    .line 23
    invoke-virtual {v1}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v1

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_1

    .line 26
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrength;->getDbm()I

    move-result v0

    :cond_8
    return v0
.end method

.method public static c(Landroid/content/Context;)Landroid/telephony/CellInfo;
    .locals 4

    const-string v0, "getRegisteredCellInfo cellInfo list empty:"

    const/4 v1, 0x0

    if-eqz p0, :cond_3

    .line 27
    sget v2, Lcom/tencent/mna/base/utils/a$a;->a:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_3

    const/16 v2, 0x64

    .line 29
    :try_start_0
    invoke-static {p0, v2}, Lcom/tencent/mna/base/utils/b;->a(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 30
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    .line 35
    invoke-virtual {v0}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    .line 36
    :cond_2
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p0

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getRegisteredCellInfo cellInfo exception:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V

    :cond_3
    return-object v1
.end method

.method public static declared-synchronized c()Lcom/tencent/mna/base/utils/b$b;
    .locals 2

    const-class v0, Lcom/tencent/mna/base/utils/b;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/tencent/mna/base/utils/b;->e:Lcom/tencent/mna/base/utils/b$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static d()I
    .locals 1

    .line 31
    sget v0, Lcom/tencent/mna/base/utils/b;->b:I

    if-gez v0, :cond_0

    .line 32
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/utils/b;->d(Landroid/content/Context;)V

    .line 34
    :cond_0
    sget v0, Lcom/tencent/mna/base/utils/b;->b:I

    return v0
.end method

.method public static declared-synchronized d(Landroid/content/Context;)V
    .locals 4

    const-string v0, "registerMobileSignalListener exception:"

    const-class v1, Lcom/tencent/mna/base/utils/b;

    monitor-enter v1

    if-nez p0, :cond_0

    monitor-exit v1

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2
    const-string p0, "registerMobileSignalListener failed, looper is null"

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    .line 7
    :cond_1
    :try_start_1
    invoke-static {p0}, Lcom/tencent/mna/base/utils/e;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 9
    const-string p0, "registerMobileSignalListener, error without perm"

    invoke-static {p0}, Lcom/tencent/mna/v1;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

    .line 13
    :cond_2
    :try_start_2
    sget-object v2, Lcom/tencent/mna/base/utils/b;->a:Lcom/tencent/mna/base/utils/b$c;

    if-nez v2, :cond_4

    .line 14
    new-instance v2, Lcom/tencent/mna/base/utils/b$c;

    invoke-direct {v2, p0}, Lcom/tencent/mna/base/utils/b$c;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/tencent/mna/base/utils/b;->a:Lcom/tencent/mna/base/utils/b$c;

    .line 19
    const-string v2, "registerMobileSignalListener call"

    invoke-static {v2}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 20
    const-string v2, "phone"

    .line 21
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_5

    .line 24
    sget v2, Lcom/tencent/mna/base/utils/a$a;->a:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_3

    const/16 v2, 0x500

    goto :goto_0

    :cond_3
    const/16 v2, 0x100

    .line 27
    :goto_0
    sget-object v3, Lcom/tencent/mna/base/utils/b;->a:Lcom/tencent/mna/base/utils/b$c;

    invoke-virtual {p0, v3, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_4
    monitor-exit v1

    return-void

    :catch_0
    move-exception p0

    .line 30
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    :goto_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public static e()I
    .locals 2

    .line 1
    sget v0, Lcom/tencent/mna/base/utils/b;->d:I

    const v1, 0xffff

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/utils/b;->d(Landroid/content/Context;)V

    .line 4
    :cond_0
    sget v0, Lcom/tencent/mna/base/utils/b;->d:I

    return v0
.end method

.method public static f()I
    .locals 1

    .line 1
    sget v0, Lcom/tencent/mna/base/utils/b;->c:I

    if-lez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/utils/b;->d(Landroid/content/Context;)V

    .line 4
    :cond_0
    sget v0, Lcom/tencent/mna/base/utils/b;->c:I

    return v0
.end method
