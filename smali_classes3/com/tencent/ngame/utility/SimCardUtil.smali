.class public Lcom/tencent/ngame/utility/SimCardUtil;
.super Ljava/lang/Object;
.source "SimCardUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/ngame/utility/SimCardUtil$SIMInfo;,
        Lcom/tencent/ngame/utility/SimCardUtil$SingleSIMInfo;,
        Lcom/tencent/ngame/utility/SimCardUtil$CHIP_TYPE;
    }
.end annotation


# static fields
.field static final CHIP_NAME_MTK:Ljava/lang/String; = "MTK\u82af\u7247"

.field static final CHIP_NAME_QCOM:Ljava/lang/String; = "\u9ad8\u901a\u82af\u7247"

.field static final CHIP_NAME_SINGLE:Ljava/lang/String; = "\u5355\u5361\u82af\u7247"

.field static final CHIP_NAME_SPREADTRUM:Ljava/lang/String; = "\u5c55\u8baf\u82af\u7247"


# instance fields
.field private carrierName_1:Ljava/lang/String;

.field private carrierName_2:Ljava/lang/String;

.field private imei_1:Ljava/lang/String;

.field private imei_2:Ljava/lang/String;

.field private imsi_1:Ljava/lang/String;

.field private imsi_2:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private simId_1:Ljava/lang/Integer;

.field private simId_2:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mContext"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/ngame/utility/SimCardUtil;->simId_1:Ljava/lang/Integer;

    const/4 v0, 0x1

    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/ngame/utility/SimCardUtil;->simId_2:Ljava/lang/Integer;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/ngame/utility/SimCardUtil;->imsi_1:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/tencent/ngame/utility/SimCardUtil;->imsi_2:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/tencent/ngame/utility/SimCardUtil;->imei_1:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/tencent/ngame/utility/SimCardUtil;->imei_2:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/tencent/ngame/utility/SimCardUtil;->carrierName_1:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/tencent/ngame/utility/SimCardUtil;->carrierName_2:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/tencent/ngame/utility/SimCardUtil;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getIMSI()Lcom/tencent/ngame/utility/SimCardUtil$SIMInfo;
    .locals 4

    const/4 v0, 0x0

    .line 248
    :try_start_0
    iget-object v1, p0, Lcom/tencent/ngame/utility/SimCardUtil;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    .line 249
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 250
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/ngame/utility/SimCardUtil;->imsi_1:Ljava/lang/String;

    .line 251
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/ngame/utility/SimCardUtil;->imei_1:Ljava/lang/String;

    .line 252
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/ngame/utility/SimCardUtil;->carrierName_1:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    iget-object v1, p0, Lcom/tencent/ngame/utility/SimCardUtil;->imsi_1:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/tencent/ngame/utility/SimCardUtil;->imsi_1:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 263
    :cond_0
    new-instance v0, Lcom/tencent/ngame/utility/SimCardUtil$SIMInfo;

    sget-object v1, Lcom/tencent/ngame/utility/SimCardUtil$CHIP_TYPE;->SINGLE:Lcom/tencent/ngame/utility/SimCardUtil$CHIP_TYPE;

    const-string/jumbo v2, "\u5355\u5361\u82af\u7247"

    invoke-direct {v0, p0, v1, v2}, Lcom/tencent/ngame/utility/SimCardUtil$SIMInfo;-><init>(Lcom/tencent/ngame/utility/SimCardUtil;Lcom/tencent/ngame/utility/SimCardUtil$CHIP_TYPE;Ljava/lang/String;)V

    .line 264
    iget-object v1, p0, Lcom/tencent/ngame/utility/SimCardUtil;->imsi_1:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/ngame/utility/SimCardUtil;->imei_1:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/ngame/utility/SimCardUtil;->carrierName_1:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/ngame/utility/SimCardUtil$SIMInfo;->addSimInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    .line 255
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public getSimInfo()Lcom/tencent/ngame/utility/SimCardUtil$SIMInfo;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/tencent/ngame/utility/SimCardUtil;->initQualcommDoubleSim()Lcom/tencent/ngame/utility/SimCardUtil$SIMInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/ngame/utility/SimCardUtil;->initMtkDoubleSim()Lcom/tencent/ngame/utility/SimCardUtil$SIMInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 49
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/ngame/utility/SimCardUtil;->initMtkSecondDoubleSim()Lcom/tencent/ngame/utility/SimCardUtil$SIMInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    .line 53
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/ngame/utility/SimCardUtil;->initSpreadDoubleSim()Lcom/tencent/ngame/utility/SimCardUtil$SIMInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    .line 57
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/ngame/utility/SimCardUtil;->getIMSI()Lcom/tencent/ngame/utility/SimCardUtil$SIMInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    return-object v0

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public initMtkDoubleSim()Lcom/tencent/ngame/utility/SimCardUtil$SIMInfo;
    .locals 8

    const/4 v0, 0x0

    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/tencent/ngame/utility/SimCardUtil;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    .line 79
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 80
    const-string v2, "com.android.internal.telephony.Phone"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 81
    const-string v3, "GEMINI_SIM_1"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x1

    .line 82
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 83
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iput-object v3, p0, Lcom/tencent/ngame/utility/SimCardUtil;->simId_1:Ljava/lang/Integer;

    .line 84
    const-string v3, "GEMINI_SIM_2"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 85
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 86
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iput-object v2, p0, Lcom/tencent/ngame/utility/SimCardUtil;->simId_2:Ljava/lang/Integer;

    .line 88
    const-class v2, Landroid/telephony/TelephonyManager;

    const-string v3, "getSubscriberIdGemini"

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 90
    iget-object v3, p0, Lcom/tencent/ngame/utility/SimCardUtil;->simId_1:Ljava/lang/Integer;

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v3, v5, v7

    invoke-virtual {v2, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/ngame/utility/SimCardUtil;->imsi_1:Ljava/lang/String;

    .line 91
    iget-object v3, p0, Lcom/tencent/ngame/utility/SimCardUtil;->simId_2:Ljava/lang/Integer;

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v3, v5, v7

    invoke-virtual {v2, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/ngame/utility/SimCardUtil;->imsi_2:Ljava/lang/String;

    .line 93
    const-class v2, Landroid/telephony/TelephonyManager;

    const-string v3, "getDeviceIdGemini"

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 95
    iget-object v3, p0, Lcom/tencent/ngame/utility/SimCardUtil;->simId_1:Ljava/lang/Integer;

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v3, v5, v7

    invoke-virtual {v2, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/ngame/utility/SimCardUtil;->imei_1:Ljava/lang/String;

    .line 96
    iget-object v3, p0, Lcom/tencent/ngame/utility/SimCardUtil;->simId_2:Ljava/lang/Integer;

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v3, v5, v7

    invoke-virtual {v2, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/ngame/utility/SimCardUtil;->imei_2:Ljava/lang/String;

    .line 98
    const-class v2, Landroid/telephony/TelephonyManager;

    const-string v3, "getCarrierName"

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 101
    iget-object v3, p0, Lcom/tencent/ngame/utility/SimCardUtil;->simId_1:Ljava/lang/Integer;

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v3, v5, v7

    invoke-virtual {v2, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/ngame/utility/SimCardUtil;->carrierName_1:Ljava/lang/String;

    .line 102
    iget-object v3, p0, Lcom/tencent/ngame/utility/SimCardUtil;->simId_2:Ljava/lang/Integer;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v7

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/ngame/utility/SimCardUtil;->carrierName_2:Ljava/lang/String;

    .line 104
    new-instance v1, Lcom/tencent/ngame/utility/SimCardUtil$SIMInfo;

    sget-object v2, Lcom/tencent/ngame/utility/SimCardUtil$CHIP_TYPE;->MTK:Lcom/tencent/ngame/utility/SimCardUtil$CHIP_TYPE;

    const-string v3, "MTK\u82af\u7247"

    invoke-direct {v1, p0, v2, v3}, Lcom/tencent/ngame/utility/SimCardUtil$SIMInfo;-><init>(Lcom/tencent/ngame/utility/SimCardUtil;Lcom/tencent/ngame/utility/SimCardUtil$CHIP_TYPE;Ljava/lang/String;)V

    .line 105
    iget-object v2, p0, Lcom/tencent/ngame/utility/SimCardUtil;->imsi_1:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/ngame/utility/SimCardUtil;->imei_1:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/ngame/utility/SimCardUtil;->carrierName_1:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/ngame/utility/SimCardUtil$SIMInfo;->addSimInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v2, p0, Lcom/tencent/ngame/utility/SimCardUtil;->imsi_2:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/ngame/utility/SimCardUtil;->imei_2:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/ngame/utility/SimCardUtil;->carrierName_2:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/ngame/utility/SimCardUtil$SIMInfo;->addSimInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 109
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public initMtkSecondDoubleSim()Lcom/tencent/ngame/utility/SimCardUtil$SIMInfo;
    .locals 8

    const/4 v0, 0x0

    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/tencent/ngame/utility/SimCardUtil;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    .line 125
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 126
    const-string v2, "com.android.internal.telephony.Phone"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 127
    const-string v3, "GEMINI_SIM_1"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x1

    .line 128
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 129
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iput-object v3, p0, Lcom/tencent/ngame/utility/SimCardUtil;->simId_1:Ljava/lang/Integer;

    .line 130
    const-string v3, "GEMINI_SIM_2"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 131
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 132
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iput-object v2, p0, Lcom/tencent/ngame/utility/SimCardUtil;->simId_2:Ljava/lang/Integer;

    .line 134
    const-class v2, Landroid/telephony/TelephonyManager;

    const-string v3, "getDefault"

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 136
    iget-object v3, p0, Lcom/tencent/ngame/utility/SimCardUtil;->simId_1:Ljava/lang/Integer;

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v3, v5, v7

    invoke-virtual {v2, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 137
    iget-object v5, p0, Lcom/tencent/ngame/utility/SimCardUtil;->simId_2:Ljava/lang/Integer;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v7

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 139
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tencent/ngame/utility/SimCardUtil;->imsi_1:Ljava/lang/String;

    .line 140
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tencent/ngame/utility/SimCardUtil;->imsi_2:Ljava/lang/String;

    .line 142
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tencent/ngame/utility/SimCardUtil;->imei_1:Ljava/lang/String;

    .line 143
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/ngame/utility/SimCardUtil;->imei_2:Ljava/lang/String;

    .line 145
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/ngame/utility/SimCardUtil;->carrierName_1:Ljava/lang/String;

    .line 146
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/ngame/utility/SimCardUtil;->carrierName_2:Ljava/lang/String;

    .line 148
    new-instance v1, Lcom/tencent/ngame/utility/SimCardUtil$SIMInfo;

    sget-object v2, Lcom/tencent/ngame/utility/SimCardUtil$CHIP_TYPE;->MTK2:Lcom/tencent/ngame/utility/SimCardUtil$CHIP_TYPE;

    const-string v3, "MTK\u82af\u7247"

    invoke-direct {v1, p0, v2, v3}, Lcom/tencent/ngame/utility/SimCardUtil$SIMInfo;-><init>(Lcom/tencent/ngame/utility/SimCardUtil;Lcom/tencent/ngame/utility/SimCardUtil$CHIP_TYPE;Ljava/lang/String;)V

    .line 149
    iget-object v2, p0, Lcom/tencent/ngame/utility/SimCardUtil;->imsi_1:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/ngame/utility/SimCardUtil;->imei_1:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/ngame/utility/SimCardUtil;->carrierName_1:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/ngame/utility/SimCardUtil$SIMInfo;->addSimInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v2, p0, Lcom/tencent/ngame/utility/SimCardUtil;->imsi_2:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/ngame/utility/SimCardUtil;->imei_2:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/ngame/utility/SimCardUtil;->carrierName_2:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/ngame/utility/SimCardUtil$SIMInfo;->addSimInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 153
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public initQualcommDoubleSim()Lcom/tencent/ngame/utility/SimCardUtil$SIMInfo;
    .locals 11

    const-string/jumbo v0, "\u9ad8\u901a\u82af\u7247\u9ad8\u901a\u82af\u7247-getPreferredDataSubscription:"

    const/4 v1, 0x0

    .line 202
    :try_start_0
    const-string v2, "android.telephony.MSimTelephonyManager"

    .line 203
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 204
    iget-object v3, p0, Lcom/tencent/ngame/utility/SimCardUtil;->mContext:Landroid/content/Context;

    const-string v4, "phone_msim"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 205
    const-string v4, "getDeviceId"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 206
    const-string v6, "getSubscriberId"

    new-array v7, v5, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 207
    const-string v7, "getSimOperatorName"

    new-array v9, v5, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v8

    invoke-virtual {v2, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 208
    iget-object v9, p0, Lcom/tencent/ngame/utility/SimCardUtil;->simId_1:Ljava/lang/Integer;

    new-array v10, v5, [Ljava/lang/Object;

    aput-object v9, v10, v8

    invoke-virtual {v4, v3, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iput-object v9, p0, Lcom/tencent/ngame/utility/SimCardUtil;->imei_1:Ljava/lang/String;

    .line 209
    iget-object v9, p0, Lcom/tencent/ngame/utility/SimCardUtil;->simId_2:Ljava/lang/Integer;

    new-array v10, v5, [Ljava/lang/Object;

    aput-object v9, v10, v8

    invoke-virtual {v4, v3, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/tencent/ngame/utility/SimCardUtil;->imei_2:Ljava/lang/String;

    .line 210
    iget-object v4, p0, Lcom/tencent/ngame/utility/SimCardUtil;->simId_1:Ljava/lang/Integer;

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v4, v9, v8

    invoke-virtual {v7, v3, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/tencent/ngame/utility/SimCardUtil;->carrierName_1:Ljava/lang/String;

    .line 211
    iget-object v4, p0, Lcom/tencent/ngame/utility/SimCardUtil;->simId_2:Ljava/lang/Integer;

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v4, v9, v8

    invoke-virtual {v7, v3, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/tencent/ngame/utility/SimCardUtil;->carrierName_2:Ljava/lang/String;

    .line 212
    iget-object v4, p0, Lcom/tencent/ngame/utility/SimCardUtil;->simId_1:Ljava/lang/Integer;

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v4, v7, v8

    invoke-virtual {v6, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/tencent/ngame/utility/SimCardUtil;->imsi_1:Ljava/lang/String;

    .line 213
    iget-object v4, p0, Lcom/tencent/ngame/utility/SimCardUtil;->simId_2:Ljava/lang/Integer;

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v4, v7, v8

    invoke-virtual {v6, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/tencent/ngame/utility/SimCardUtil;->imsi_2:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 217
    :try_start_1
    const-string v4, "getPreferredDataSubscription"

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v8

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 219
    const-string v6, "isMultiSimEnabled"

    new-array v5, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v8

    invoke-virtual {v2, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 220
    invoke-virtual {v4, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 221
    :try_start_2
    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    const/4 v4, 0x0

    .line 224
    :goto_0
    :try_start_3
    const-string v3, "SimINfo"

    const-string/jumbo v5, "\u9ad8\u901a\u82af\u7247\u5224\u65ad"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 227
    :goto_1
    new-instance v2, Lcom/tencent/ngame/utility/SimCardUtil$SIMInfo;

    sget-object v3, Lcom/tencent/ngame/utility/SimCardUtil$CHIP_TYPE;->QCOM:Lcom/tencent/ngame/utility/SimCardUtil$CHIP_TYPE;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",flag:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p0, v3, v0}, Lcom/tencent/ngame/utility/SimCardUtil$SIMInfo;-><init>(Lcom/tencent/ngame/utility/SimCardUtil;Lcom/tencent/ngame/utility/SimCardUtil$CHIP_TYPE;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/tencent/ngame/utility/SimCardUtil;->imsi_1:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/ngame/utility/SimCardUtil;->imei_1:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/ngame/utility/SimCardUtil;->carrierName_1:Ljava/lang/String;

    invoke-virtual {v2, v0, v3, v4}, Lcom/tencent/ngame/utility/SimCardUtil$SIMInfo;->addSimInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/tencent/ngame/utility/SimCardUtil;->imsi_2:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/ngame/utility/SimCardUtil;->imei_2:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/ngame/utility/SimCardUtil;->carrierName_2:Ljava/lang/String;

    invoke-virtual {v2, v0, v3, v4}, Lcom/tencent/ngame/utility/SimCardUtil$SIMInfo;->addSimInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    return-object v2

    :catch_2
    move-exception v0

    .line 233
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method public initSpreadDoubleSim()Lcom/tencent/ngame/utility/SimCardUtil$SIMInfo;
    .locals 8

    .line 166
    const-string v0, "phone"

    .line 168
    :try_start_0
    const-string v1, "com.android.internal.telephony.PhoneFactory"

    .line 169
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 170
    const-string v2, "getServiceName"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 172
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v6

    aput-object v4, v3, v7

    .line 171
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 173
    iget-object v2, p0, Lcom/tencent/ngame/utility/SimCardUtil;->mContext:Landroid/content/Context;

    .line 174
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 175
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/ngame/utility/SimCardUtil;->imsi_1:Ljava/lang/String;

    .line 176
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/ngame/utility/SimCardUtil;->imei_1:Ljava/lang/String;

    .line 177
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/ngame/utility/SimCardUtil;->carrierName_1:Ljava/lang/String;

    .line 178
    iget-object v0, p0, Lcom/tencent/ngame/utility/SimCardUtil;->mContext:Landroid/content/Context;

    .line 179
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 180
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/ngame/utility/SimCardUtil;->imsi_2:Ljava/lang/String;

    .line 181
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/ngame/utility/SimCardUtil;->imei_2:Ljava/lang/String;

    .line 182
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/ngame/utility/SimCardUtil;->carrierName_2:Ljava/lang/String;

    .line 183
    new-instance v0, Lcom/tencent/ngame/utility/SimCardUtil$SIMInfo;

    sget-object v1, Lcom/tencent/ngame/utility/SimCardUtil$CHIP_TYPE;->SPREADTRUM:Lcom/tencent/ngame/utility/SimCardUtil$CHIP_TYPE;

    const-string/jumbo v2, "\u5c55\u8baf\u82af\u7247"

    invoke-direct {v0, p0, v1, v2}, Lcom/tencent/ngame/utility/SimCardUtil$SIMInfo;-><init>(Lcom/tencent/ngame/utility/SimCardUtil;Lcom/tencent/ngame/utility/SimCardUtil$CHIP_TYPE;Ljava/lang/String;)V

    .line 184
    iget-object v1, p0, Lcom/tencent/ngame/utility/SimCardUtil;->imsi_1:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/ngame/utility/SimCardUtil;->imei_1:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/ngame/utility/SimCardUtil;->carrierName_1:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/ngame/utility/SimCardUtil$SIMInfo;->addSimInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v1, p0, Lcom/tencent/ngame/utility/SimCardUtil;->imsi_2:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/ngame/utility/SimCardUtil;->imei_2:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/ngame/utility/SimCardUtil;->carrierName_2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/ngame/utility/SimCardUtil$SIMInfo;->addSimInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 187
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method
