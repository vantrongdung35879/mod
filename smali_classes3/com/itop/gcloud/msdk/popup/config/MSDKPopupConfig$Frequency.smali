.class public final enum Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;
.super Ljava/lang/Enum;
.source "MSDKPopupConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Frequency"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;

.field public static final enum ALWAYS:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;

.field public static final enum CONDITION:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;

.field public static final enum ERROR:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;

.field public static final enum ONCE:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;


# instance fields
.field public id:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 398
    new-instance v0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;

    const/4 v1, -0x1

    const-string v2, "ERROR"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;->ERROR:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;

    .line 400
    new-instance v1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;

    const-string v2, "ONCE"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v4}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;->ONCE:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;

    .line 402
    new-instance v2, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;

    const-string v5, "ALWAYS"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v6}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;->ALWAYS:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;

    .line 404
    new-instance v5, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;

    const-string v7, "CONDITION"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;->CONDITION:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;

    const/4 v7, 0x4

    .line 396
    new-array v7, v7, [Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;

    aput-object v0, v7, v3

    aput-object v1, v7, v4

    aput-object v2, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;->$VALUES:[Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 408
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 409
    iput p3, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;->id:I

    return-void
.end method

.method public static valueOf(I)Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 413
    invoke-static {}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;->values()[Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;

    move-result-object v0

    .line 414
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 415
    iget v5, v4, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;->id:I

    if-ne v5, p0, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 419
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v2

    const-string p0, "Frequency.valueOf err: %d cannot match Frequency"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    .line 420
    sget-object p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;->ERROR:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;
    .locals 1

    .line 396
    const-class v0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;

    return-object p0
.end method

.method public static values()[Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;
    .locals 1

    .line 396
    sget-object v0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;->$VALUES:[Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;

    invoke-virtual {v0}, [Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$Frequency;

    return-object v0
.end method
