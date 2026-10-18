.class public Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUrlParams;
.super Ljava/lang/Object;
.source "MSDKPopupUrlParams.java"


# instance fields
.field public actionPath:Ljava/lang/String;

.field public gameID:Ljava/lang/String;

.field public gameKey:Ljava/lang/String;

.field public installID:Ljava/lang/String;

.field public os:I

.field public postInfo:Lorg/json/JSONObject;

.field public urlStr:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUrlParams;->urlStr:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUrlParams;->actionPath:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUrlParams;->gameID:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUrlParams;->gameKey:Ljava/lang/String;

    const/4 v1, 0x1

    .line 16
    iput v1, p0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUrlParams;->os:I

    .line 18
    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUrlParams;->version:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUrlParams;->installID:Ljava/lang/String;

    .line 22
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUrlParams;->postInfo:Lorg/json/JSONObject;

    return-void
.end method
