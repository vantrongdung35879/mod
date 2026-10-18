.class public Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;
.super Lcom/tencent/gcloud/msdk/api/MSDKBaseParams;
.source "MSDKLoginParams.java"


# instance fields
.field public permissions:Ljava/lang/String;
    .annotation runtime Lcom/tencent/gcloud/msdk/tools/json/JsonProp;
        value = "permissions"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/api/MSDKBaseParams;-><init>()V

    return-void
.end method
