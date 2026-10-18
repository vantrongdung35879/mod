.class public Lcom/beetalk/sdk/helper/PhoneInfoUtil;
.super Ljava/lang/Object;
.source "PhoneInfoUtil.java"


# static fields
.field private static volatile mInstance:Lcom/beetalk/sdk/helper/PhoneInfoUtil;


# instance fields
.field private mTimeZoneMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCountryISOByTimeZone(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 45
    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    .line 48
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 49
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 50
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 51
    invoke-direct {p0, p1}, Lcom/beetalk/sdk/helper/PhoneInfoUtil;->getTimeZoneMap(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object p1

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    return-object v0
.end method

.method public static getInstance()Lcom/beetalk/sdk/helper/PhoneInfoUtil;
    .locals 2

    .line 21
    sget-object v0, Lcom/beetalk/sdk/helper/PhoneInfoUtil;->mInstance:Lcom/beetalk/sdk/helper/PhoneInfoUtil;

    if-nez v0, :cond_1

    .line 22
    const-class v0, Lcom/beetalk/sdk/helper/PhoneInfoUtil;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lcom/beetalk/sdk/helper/PhoneInfoUtil;->mInstance:Lcom/beetalk/sdk/helper/PhoneInfoUtil;

    if-nez v1, :cond_0

    .line 24
    new-instance v1, Lcom/beetalk/sdk/helper/PhoneInfoUtil;

    invoke-direct {v1}, Lcom/beetalk/sdk/helper/PhoneInfoUtil;-><init>()V

    sput-object v1, Lcom/beetalk/sdk/helper/PhoneInfoUtil;->mInstance:Lcom/beetalk/sdk/helper/PhoneInfoUtil;

    .line 26
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 28
    :cond_1
    :goto_0
    sget-object v0, Lcom/beetalk/sdk/helper/PhoneInfoUtil;->mInstance:Lcom/beetalk/sdk/helper/PhoneInfoUtil;

    return-object v0
.end method

.method private getTimeZoneMap(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/beetalk/sdk/helper/PhoneInfoUtil;->mTimeZoneMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/garena/msdk/R$array;->regions:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/beetalk/sdk/helper/PhoneInfoUtil;->mTimeZoneMap:Ljava/util/HashMap;

    .line 36
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 37
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 38
    iget-object v4, p0, Lcom/beetalk/sdk/helper/PhoneInfoUtil;->mTimeZoneMap:Ljava/util/HashMap;

    aget-object v5, v3, v1

    const/4 v6, 0x1

    aget-object v3, v3, v6

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/beetalk/sdk/helper/PhoneInfoUtil;->mTimeZoneMap:Ljava/util/HashMap;

    return-object p1
.end method


# virtual methods
.method public getPhoneCountryISO(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_1

    .line 59
    invoke-static {p1}, Lcom/beetalk/sdk/helper/LocaleHelper;->getPhoneDeviceCountry(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 63
    :cond_0
    invoke-direct {p0, p1}, Lcom/beetalk/sdk/helper/PhoneInfoUtil;->getCountryISOByTimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 66
    :cond_1
    const-string p1, ""

    return-object p1
.end method
