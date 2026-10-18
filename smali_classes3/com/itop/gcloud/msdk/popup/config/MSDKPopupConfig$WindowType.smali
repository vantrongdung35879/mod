.class public final enum Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;
.super Ljava/lang/Enum;
.source "MSDKPopupConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WindowType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;

.field public static final enum CAN_SKIP:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;

.field public static final enum ERROR:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;

.field public static final enum NO_SKIP:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;


# instance fields
.field public id:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 340
    new-instance v0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;

    const/4 v1, -0x1

    const-string v2, "ERROR"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;->ERROR:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;

    .line 342
    new-instance v1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;

    const-string v2, "CAN_SKIP"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v4}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;->CAN_SKIP:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;

    .line 344
    new-instance v2, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;

    const-string v5, "NO_SKIP"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v6}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;->NO_SKIP:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;

    const/4 v5, 0x3

    .line 338
    new-array v5, v5, [Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;

    aput-object v0, v5, v3

    aput-object v1, v5, v4

    aput-object v2, v5, v6

    sput-object v5, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;->$VALUES:[Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 348
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 349
    iput p3, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;->id:I

    return-void
.end method

.method public static valueOf(I)Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 353
    invoke-static {}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;->values()[Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;

    move-result-object v0

    .line 354
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 355
    iget v5, v4, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;->id:I

    if-ne v5, p0, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 359
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v2

    const-string p0, "WindowType.valueOf err: %d cannot match WindowType"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    .line 360
    sget-object p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;->ERROR:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;
    .locals 1

    .line 338
    const-class v0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;

    return-object p0
.end method

.method public static values()[Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;
    .locals 1

    .line 338
    sget-object v0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;->$VALUES:[Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;

    invoke-virtual {v0}, [Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$WindowType;

    return-object v0
.end method
