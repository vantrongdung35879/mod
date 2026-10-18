.class public Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$MSDKRequest;
.super Ljava/lang/Object;
.source "MSDKPopupUriUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MSDKRequest"
.end annotation


# instance fields
.field public postData:Ljava/lang/String;

.field public requestType:Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$RequestType;

.field public uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$RequestType;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$MSDKRequest;->requestType:Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$RequestType;

    .line 28
    iput-object p2, p0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$MSDKRequest;->uri:Landroid/net/Uri;

    .line 29
    iput-object p3, p0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$MSDKRequest;->postData:Ljava/lang/String;

    return-void
.end method
