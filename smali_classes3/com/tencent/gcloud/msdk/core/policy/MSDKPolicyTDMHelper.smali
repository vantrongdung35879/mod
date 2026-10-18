.class public Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;
.super Ljava/lang/Object;
.source "MSDKPolicyTDMHelper.java"


# static fields
.field private static final MSDK_POLICY_ACTIVITY_EVENT:Ljava/lang/String; = "MSDK_POLICY_ACTIVITY_EVENT"

.field private static final MSDK_POLICY_ACTIVITY_EVENT_KEY:Ljava/lang/String; = "action"

.field private static final MSDK_POLICY_TDM_REPORT_DISABLE:Ljava/lang/String; = "MSDK_POLICY_TDM_REPORT_DISABLE"

.field private static final MSDK_SENSITIVE_CLASS_NAME:Ljava/lang/String; = "com.tencent.gcloud.msdk.api.sensitive.MSDKSensitive"

.field private static final TDM_CLASS_NAME:Ljava/lang/String; = "com.tencent.tdm.TDataMaster"

.field private static final TDM_SRC_ID:I = 0x7d3

.field private static hasGetReportFlag:Z

.field private static tdmReportDisabled:Z

.field private static willReport:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 15
    :try_start_0
    const-string v0, "TDataMaster"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "load TDM failed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MSDKPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 18
    sput-boolean v0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;->tdmReportDisabled:Z

    :goto_0
    const/4 v0, -0x1

    .line 34
    sput v0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;->willReport:I

    const/4 v0, 0x0

    .line 35
    sput-boolean v0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;->hasGetReportFlag:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableDeviceInfo(Z)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    const-string v0, "enable device info : "

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 96
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->i(Ljava/lang/String;)V

    .line 97
    const-string v0, "com.tencent.gcloud.msdk.api.sensitive.MSDKSensitive"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 98
    const-string v3, "setCouldCollectSensitiveInfo"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 99
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v3, v4, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "enable v3 device info failed : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->i(Ljava/lang/String;)V

    .line 103
    :goto_0
    sget-boolean v0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;->tdmReportDisabled:Z

    if-eqz v0, :cond_0

    return-void

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "enableDeviceInfo start with "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->i(Ljava/lang/String;)V

    .line 108
    :try_start_1
    invoke-static {}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;->getTDMInstance()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "enableDeviceInfo"

    new-array v5, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 111
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-virtual {v3, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 113
    :cond_1
    const-string p0, " tdm is null"

    invoke-static {p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 116
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p0, "failed with invocation of enableDeviceInfo"

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    .line 117
    :goto_1
    invoke-static {p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->w(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public static enableReport(Z)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 155
    sget-boolean v0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;->tdmReportDisabled:Z

    if-eqz v0, :cond_0

    return-void

    .line 158
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "enableReport start with "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->i(Ljava/lang/String;)V

    .line 160
    :try_start_0
    invoke-static {}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;->getTDMInstance()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 162
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "enableReport"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 163
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 165
    :cond_1
    const-string/jumbo p0, "tdm is null"

    invoke-static {p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 168
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p0, "failed with invocation of enableReport"

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    .line 169
    :goto_0
    invoke-static {p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->w(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static getEventMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 180
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 181
    const-string v1, "action"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static getTDMInstance()Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    .line 45
    :try_start_0
    const-string v1, "com.tencent.tdm.TDataMaster"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 46
    const-string v2, "getInstance"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 47
    invoke-virtual {v1, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get TDM failed : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->w(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 50
    sput-boolean v1, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;->tdmReportDisabled:Z

    :goto_0
    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 61
    invoke-static {p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;->initTDM(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 62
    invoke-static {p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;->enableReport(Z)V

    :cond_0
    return-void
.end method

.method private static initTDM(Landroid/content/Context;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 67
    invoke-static {p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyHelper;->getMetaDataInActivity(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "MSDK_POLICY_TDM_REPORT_DISABLE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;->tdmReportDisabled:Z

    .line 68
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "MSDK_POLICY_TDM_REPORT_DISABLE : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;->tdmReportDisabled:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->d(Ljava/lang/String;)V

    .line 69
    sget-boolean p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;->tdmReportDisabled:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    .line 72
    :cond_0
    const-string p0, "initTDM start"

    invoke-static {p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->i(Ljava/lang/String;)V

    .line 74
    :try_start_0
    invoke-static {}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;->getTDMInstance()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "initialize"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 77
    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    .line 80
    :cond_1
    const-string p0, " tdm is null"

    invoke-static {p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 83
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string p0, "failed with invocation of initialize"

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    .line 84
    :goto_0
    invoke-static {p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->w(Ljava/lang/String;)V

    :goto_1
    return v0
.end method

.method public static reportEvent(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 127
    sget-boolean v0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;->tdmReportDisabled:Z

    if-eqz v0, :cond_0

    return-void

    .line 130
    :cond_0
    invoke-static {}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;->willReport()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 133
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reportEvent start with srcID: 2003 evenInfo: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->i(Ljava/lang/String;)V

    .line 135
    :try_start_0
    invoke-static {}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;->getTDMInstance()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 137
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "reportEvent"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-class v5, Ljava/util/Map;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/16 v2, 0x7d3

    .line 138
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v6

    const-string v2, "MSDK_POLICY_ACTIVITY_EVENT"

    aput-object v2, v3, v7

    aput-object p0, v3, v8

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 140
    :cond_2
    const-string/jumbo p0, "tdm is null"

    invoke-static {p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 143
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string p0, "failed with invocation of reportEvent"

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    .line 144
    :goto_0
    invoke-static {p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->w(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static willReport()Z
    .locals 4

    .line 187
    const-class v0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;

    monitor-enter v0

    .line 188
    :try_start_0
    sget-boolean v1, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;->hasGetReportFlag:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 189
    sput-boolean v2, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;->hasGetReportFlag:Z

    .line 190
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v3, 0x64

    .line 191
    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    sput v1, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;->willReport:I

    .line 193
    :cond_0
    sget v1, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;->willReport:I

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    .line 194
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
