.class public Lcom/gsdk/gcloud/dolphin/UpdateCallBack$AppVersion;
.super Ljava/lang/Object;
.source "UpdateCallBack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsdk/gcloud/dolphin/UpdateCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppVersion"
.end annotation


# instance fields
.field public versionNumberFour:S

.field public versionNumberOne:S

.field public versionNumberThree:S

.field public versionNumberTwo:S


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-short v0, p0, Lcom/gsdk/gcloud/dolphin/UpdateCallBack$AppVersion;->versionNumberOne:S

    .line 8
    iput-short v0, p0, Lcom/gsdk/gcloud/dolphin/UpdateCallBack$AppVersion;->versionNumberTwo:S

    .line 9
    iput-short v0, p0, Lcom/gsdk/gcloud/dolphin/UpdateCallBack$AppVersion;->versionNumberThree:S

    .line 10
    iput-short v0, p0, Lcom/gsdk/gcloud/dolphin/UpdateCallBack$AppVersion;->versionNumberFour:S

    return-void
.end method
