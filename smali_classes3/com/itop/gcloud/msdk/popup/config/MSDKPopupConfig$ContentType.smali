.class public final enum Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;
.super Ljava/lang/Enum;
.source "MSDKPopupConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

.field public static final enum ERROR:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

.field public static final enum HTML:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

.field public static final enum PLUGIN:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

.field public static final enum RICH_TEXT:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

.field public static final enum URL:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;


# instance fields
.field public id:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 367
    new-instance v0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    const/4 v1, -0x1

    const-string v2, "ERROR"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;->ERROR:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    .line 369
    new-instance v1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    const-string v2, "RICH_TEXT"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v4}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;->RICH_TEXT:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    .line 371
    new-instance v2, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    const-string v5, "HTML"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v6}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;->HTML:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    .line 373
    new-instance v5, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    const-string v7, "URL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;->URL:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    .line 375
    new-instance v7, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    const-string v9, "PLUGIN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;->PLUGIN:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    const/4 v9, 0x5

    .line 365
    new-array v9, v9, [Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    aput-object v0, v9, v3

    aput-object v1, v9, v4

    aput-object v2, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;->$VALUES:[Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 379
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 380
    iput p3, p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;->id:I

    return-void
.end method

.method public static valueOf(I)Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 384
    invoke-static {}, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;->values()[Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    move-result-object v0

    .line 385
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 386
    iget v5, v4, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;->id:I

    if-ne v5, p0, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 390
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v2

    const-string p0, "ContentType.valueOf err: %d cannot match ContentType"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKPopupLog;->e(Ljava/lang/String;)V

    .line 391
    sget-object p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;->ERROR:Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;
    .locals 1

    .line 365
    const-class v0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    return-object p0
.end method

.method public static values()[Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;
    .locals 1

    .line 365
    sget-object v0, Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;->$VALUES:[Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    invoke-virtual {v0}, [Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itop/gcloud/msdk/popup/config/MSDKPopupConfig$ContentType;

    return-object v0
.end method
