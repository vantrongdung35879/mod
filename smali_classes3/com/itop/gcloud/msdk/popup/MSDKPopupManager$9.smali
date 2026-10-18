.class synthetic Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$9;
.super Ljava/lang/Object;
.source "MSDKPopupManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itop/gcloud/msdk/popup/MSDKPopupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$itop$gcloud$msdk$popup$config$MSDKPopupConfig$ContentType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 88
    invoke-static {}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;->values()[Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$9;->$SwitchMap$com$itop$gcloud$msdk$popup$config$MSDKPopupConfig$ContentType:[I

    :try_start_0
    sget-object v1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;->RICH_TEXT:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    invoke-virtual {v1}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$9;->$SwitchMap$com$itop$gcloud$msdk$popup$config$MSDKPopupConfig$ContentType:[I

    sget-object v1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;->HTML:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    invoke-virtual {v1}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/itop/gcloud/msdk/popup/MSDKPopupManager$9;->$SwitchMap$com$itop$gcloud$msdk$popup$config$MSDKPopupConfig$ContentType:[I

    sget-object v1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;->URL:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    invoke-virtual {v1}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
