.class synthetic Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout$4;
.super Ljava/lang/Object;
.source "MSDKRichTextLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$itop$gcloud$msdk$popup$config$MSDKPopupConfig$WindowType:[I

.field static final synthetic $SwitchMap$com$itop$gcloud$msdk$popup$style$ButtonStyle$ButtonType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 112
    invoke-static {}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;->values()[Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout$4;->$SwitchMap$com$itop$gcloud$msdk$popup$config$MSDKPopupConfig$WindowType:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;->CAN_SKIP:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;

    invoke-virtual {v2}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout$4;->$SwitchMap$com$itop$gcloud$msdk$popup$config$MSDKPopupConfig$WindowType:[I

    sget-object v3, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;->NO_SKIP:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;

    invoke-virtual {v3}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 119
    :catch_1
    invoke-static {}, Lcom/itop/gcloud/msdk/popup/style/ButtonStyle$ButtonType;->values()[Lcom/itop/gcloud/msdk/popup/style/ButtonStyle$ButtonType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout$4;->$SwitchMap$com$itop$gcloud$msdk$popup$style$ButtonStyle$ButtonType:[I

    :try_start_2
    sget-object v3, Lcom/itop/gcloud/msdk/popup/style/ButtonStyle$ButtonType;->POSITIVE:Lcom/itop/gcloud/msdk/popup/style/ButtonStyle$ButtonType;

    invoke-virtual {v3}, Lcom/itop/gcloud/msdk/popup/style/ButtonStyle$ButtonType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/itop/gcloud/msdk/popup/richtext/MSDKRichTextLayout$4;->$SwitchMap$com$itop$gcloud$msdk$popup$style$ButtonStyle$ButtonType:[I

    sget-object v2, Lcom/itop/gcloud/msdk/popup/style/ButtonStyle$ButtonType;->NEGATIVE:Lcom/itop/gcloud/msdk/popup/style/ButtonStyle$ButtonType;

    invoke-virtual {v2}, Lcom/itop/gcloud/msdk/popup/style/ButtonStyle$ButtonType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
