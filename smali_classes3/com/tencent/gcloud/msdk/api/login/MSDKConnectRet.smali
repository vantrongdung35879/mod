.class public Lcom/tencent/gcloud/msdk/api/login/MSDKConnectRet;
.super Lcom/tencent/gcloud/msdk/api/login/MSDKLoginRet;
.source "MSDKConnectRet.java"


# instance fields
.field public mainOpenID:Ljava/lang/String;
    .annotation runtime Lcom/tencent/gcloud/msdk/tools/json/JsonProp;
        value = "mainOpenID"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginRet;-><init>()V

    return-void
.end method
