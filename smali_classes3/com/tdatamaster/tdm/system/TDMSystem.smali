.class public Lcom/tdatamaster/tdm/system/TDMSystem;
.super Ljava/lang/Object;
.source "TDMSystem.java"


# static fields
.field private static mInstance:Lcom/tdatamaster/tdm/system/TDMSystem;


# instance fields
.field private mMemeryAvail:J

.field private mSpaceAvail:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 36
    iput-wide v0, p0, Lcom/tdatamaster/tdm/system/TDMSystem;->mMemeryAvail:J

    .line 37
    iput-wide v0, p0, Lcom/tdatamaster/tdm/system/TDMSystem;->mSpaceAvail:J

    return-void
.end method

.method private GetCommentFromBuffer([BI)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x4

    .line 217
    new-array v1, v0, [B

    fill-array-data v1, :array_0

    add-int/lit8 v2, p2, -0x16

    :goto_0
    if-ltz v2, :cond_2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    add-int v4, v2, v3

    .line 223
    aget-byte v4, p1, v4

    aget-byte v5, v1, v3

    if-eq v4, v5, :cond_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v2, 0x14

    .line 232
    aget-byte v0, p1, v0

    add-int/lit8 v1, v2, 0x15

    aget-byte v1, p1, v1

    mul-int/lit16 v1, v1, 0x100

    add-int/2addr v0, v1

    sub-int/2addr p2, v2

    add-int/lit8 p2, p2, -0x16

    .line 235
    new-instance v1, Ljava/lang/String;

    add-int/lit8 v2, v2, 0x16

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {v1, p1, v2, p2, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v1

    .line 239
    :cond_2
    const-string p1, ""

    return-object p1

    :array_0
    .array-data 1
        0x50t
        0x4bt
        0x5t
        0x6t
    .end array-data
.end method

.method public static GetInstance()Lcom/tdatamaster/tdm/system/TDMSystem;
    .locals 1

    .line 46
    sget-object v0, Lcom/tdatamaster/tdm/system/TDMSystem;->mInstance:Lcom/tdatamaster/tdm/system/TDMSystem;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/tdatamaster/tdm/system/TDMSystem;

    invoke-direct {v0}, Lcom/tdatamaster/tdm/system/TDMSystem;-><init>()V

    sput-object v0, Lcom/tdatamaster/tdm/system/TDMSystem;->mInstance:Lcom/tdatamaster/tdm/system/TDMSystem;

    .line 49
    :cond_0
    sget-object v0, Lcom/tdatamaster/tdm/system/TDMSystem;->mInstance:Lcom/tdatamaster/tdm/system/TDMSystem;

    return-object v0
.end method

.method private GetMemoryInfo(Landroid/content/Context;)V
    .locals 2

    .line 56
    :try_start_0
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    if-nez p1, :cond_0

    return-void

    .line 63
    :cond_0
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 64
    invoke-virtual {p1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 65
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const/16 p1, 0x14

    shr-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tdatamaster/tdm/system/TDMSystem;->mMemeryAvail:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GetMemoryInfo failed, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TDM"

    invoke-static {v0, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private GetSpaceInfo()V
    .locals 4

    .line 89
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 94
    :cond_0
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    .line 98
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    mul-long v2, v2, v0

    const/16 v0, 0x14

    shr-long v0, v2, v0

    .line 106
    iput-wide v0, p0, Lcom/tdatamaster/tdm/system/TDMSystem;->mSpaceAvail:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getStorage failed, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TDM"

    invoke-static {v1, v0}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public GetAvailMemory(Landroid/content/Context;)J
    .locals 2

    .line 75
    invoke-direct {p0, p1}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetMemoryInfo(Landroid/content/Context;)V

    .line 76
    iget-wide v0, p0, Lcom/tdatamaster/tdm/system/TDMSystem;->mMemeryAvail:J

    return-wide v0
.end method

.method public GetAvailSpace()J
    .locals 2

    .line 116
    invoke-direct {p0}, Lcom/tdatamaster/tdm/system/TDMSystem;->GetSpaceInfo()V

    .line 117
    iget-wide v0, p0, Lcom/tdatamaster/tdm/system/TDMSystem;->mSpaceAvail:J

    return-wide v0
.end method

.method public GetMetaBool(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 264
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 265
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 269
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "GetMetaBool fail, "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TDM"

    invoke-static {p2, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public GetMetaInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 2

    .line 279
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 280
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 284
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "GetMetaInt fail, "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TDM"

    invoke-static {p2, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return p3
.end method

.method public GetMetaLong(Landroid/content/Context;Ljava/lang/String;)J
    .locals 2

    .line 294
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 295
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 299
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "GetMetaLong fail, "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TDM"

    invoke-static {p2, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p1, 0x0

    :goto_0
    return-wide p1
.end method

.method public GetMetaString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 248
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 249
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 253
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "GetMetaString fail, "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TDM"

    invoke-static {p2, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public GetNetworkType(Landroid/content/Context;)Lcom/tdatamaster/tdm/system/NetworkType;
    .locals 3

    .line 124
    const-string v0, "TDM"

    :try_start_0
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    if-nez p1, :cond_0

    .line 127
    const-string p1, "NetworkStateChecker connManager is null"

    invoke-static {v0, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->Warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    sget-object p1, Lcom/tdatamaster/tdm/system/NetworkType;->NETWORK_UNKNOWN:Lcom/tdatamaster/tdm/system/NetworkType;

    return-object p1

    .line 132
    :cond_0
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 133
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_2

    .line 141
    sget-object p1, Lcom/tdatamaster/tdm/system/NetworkType;->NETWORK_WIFI:Lcom/tdatamaster/tdm/system/NetworkType;

    return-object p1

    .line 143
    :cond_2
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_4

    .line 145
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p1

    const/16 v1, 0x14

    if-eq p1, v1, :cond_3

    packed-switch p1, :pswitch_data_0

    .line 173
    sget-object p1, Lcom/tdatamaster/tdm/system/NetworkType;->NETWORK_MOBILE:Lcom/tdatamaster/tdm/system/NetworkType;

    return-object p1

    .line 166
    :pswitch_0
    sget-object p1, Lcom/tdatamaster/tdm/system/NetworkType;->NETWORK_4G:Lcom/tdatamaster/tdm/system/NetworkType;

    return-object p1

    .line 163
    :pswitch_1
    sget-object p1, Lcom/tdatamaster/tdm/system/NetworkType;->NETWORK_3G:Lcom/tdatamaster/tdm/system/NetworkType;

    return-object p1

    .line 152
    :pswitch_2
    sget-object p1, Lcom/tdatamaster/tdm/system/NetworkType;->NETWORK_2G:Lcom/tdatamaster/tdm/system/NetworkType;

    return-object p1

    .line 170
    :cond_3
    sget-object p1, Lcom/tdatamaster/tdm/system/NetworkType;->NETWORK_5G:Lcom/tdatamaster/tdm/system/NetworkType;

    return-object p1

    .line 176
    :cond_4
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    const/16 v1, 0x9

    if-ne v1, p1, :cond_5

    .line 178
    sget-object p1, Lcom/tdatamaster/tdm/system/NetworkType;->NETWORK_WIRED:Lcom/tdatamaster/tdm/system/NetworkType;

    return-object p1

    .line 182
    :cond_5
    sget-object p1, Lcom/tdatamaster/tdm/system/NetworkType;->NETWORK_UNKNOWN:Lcom/tdatamaster/tdm/system/NetworkType;

    return-object p1

    .line 135
    :cond_6
    :goto_0
    const-string p1, "NetworkStateChecker netInfo is null"

    invoke-static {v0, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->Warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    sget-object p1, Lcom/tdatamaster/tdm/system/NetworkType;->NETWORK_NONE:Lcom/tdatamaster/tdm/system/NetworkType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GetNetworkType Fail, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->Warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    sget-object p1, Lcom/tdatamaster/tdm/system/NetworkType;->NETWORK_UNKNOWN:Lcom/tdatamaster/tdm/system/NetworkType;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public GetSimOperator(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 201
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_1

    const/4 v0, 0x5

    .line 203
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 205
    :cond_1
    :goto_0
    const-string p1, "-1"

    return-object p1
.end method
