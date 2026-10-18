.class public final enum Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$RequestType;
.super Ljava/lang/Enum;
.source "MSDKPopupUriUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$RequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$RequestType;

.field public static final enum GET:Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$RequestType;

.field public static final enum POST:Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$RequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 17
    new-instance v0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$RequestType;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$RequestType;->GET:Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$RequestType;

    .line 18
    new-instance v1, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$RequestType;

    const-string v3, "POST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$RequestType;->POST:Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$RequestType;

    const/4 v3, 0x2

    .line 16
    new-array v3, v3, [Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$RequestType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$RequestType;->$VALUES:[Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$RequestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$RequestType;
    .locals 1

    .line 16
    const-class v0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$RequestType;

    return-object p0
.end method

.method public static values()[Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$RequestType;
    .locals 1

    .line 16
    sget-object v0, Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$RequestType;->$VALUES:[Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$RequestType;

    invoke-virtual {v0}, [Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$RequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itop/gcloud/msdk/popup/network/MSDKPopupUriUtils$RequestType;

    return-object v0
.end method
