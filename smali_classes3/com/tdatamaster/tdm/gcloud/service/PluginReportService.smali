.class public Lcom/tdatamaster/tdm/gcloud/service/PluginReportService;
.super Ljava/lang/Object;
.source "PluginReportService.java"


# static fields
.field private static final TDM_LIBRARY:Ljava/lang/String; = "TDataMaster"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerTdmReportService()Z
    .locals 2

    .line 17
    const-string v0, "TDataMaster"

    :try_start_0
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lcom/tdatamaster/tdm/gcloud/service/PluginReportService;->registerTdmReportServiceNative()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v1

    .line 20
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->Error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method private static native registerTdmReportServiceNative()Z
.end method
