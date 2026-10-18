.class synthetic Lcom/itop/gcloud/msdk/popup/network/MSDKPopupHttpUtils$1;
.super Ljava/lang/Object;
.source "MSDKPopupHttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itop/gcloud/msdk/popup/network/MSDKPopupHttpUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$itop$gcloud$msdk$popup$network$MSDKPopupUriUtils$RequestType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    invoke-static {}, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$RequestType;->values()[Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$RequestType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupHttpUtils$1;->$SwitchMap$com$itop$gcloud$msdk$popup$network$MSDKPopupUriUtils$RequestType:[I

    :try_start_0
    sget-object v1, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$RequestType;->GET:Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$RequestType;

    invoke-virtual {v1}, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupHttpUtils$1;->$SwitchMap$com$itop$gcloud$msdk$popup$network$MSDKPopupUriUtils$RequestType:[I

    sget-object v1, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$RequestType;->POST:Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$RequestType;

    invoke-virtual {v1}, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
