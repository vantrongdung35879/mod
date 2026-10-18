.class public Lcom/gsdk/gcloud/dolphin/UpdateCallBack$VersionInfo;
.super Ljava/lang/Object;
.source "UpdateCallBack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsdk/gcloud/dolphin/UpdateCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VersionInfo"
.end annotation


# instance fields
.field public isAppUpdating:Z

.field public isForcedUpdating:Z

.field public isNeedUpdating:Z

.field public needDownloadSize:J

.field public newAppVersion:Lcom/gsdk/gcloud/dolphin/UpdateCallBack$AppVersion;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/gsdk/gcloud/dolphin/UpdateCallBack$VersionInfo;->isAppUpdating:Z

    .line 15
    iput-boolean v0, p0, Lcom/gsdk/gcloud/dolphin/UpdateCallBack$VersionInfo;->isNeedUpdating:Z

    .line 16
    iput-boolean v0, p0, Lcom/gsdk/gcloud/dolphin/UpdateCallBack$VersionInfo;->isForcedUpdating:Z

    const-wide/16 v0, 0x0

    .line 18
    iput-wide v0, p0, Lcom/gsdk/gcloud/dolphin/UpdateCallBack$VersionInfo;->needDownloadSize:J

    return-void
.end method
