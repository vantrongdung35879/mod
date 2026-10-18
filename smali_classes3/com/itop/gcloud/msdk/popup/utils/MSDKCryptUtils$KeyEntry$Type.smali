.class public final enum Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;
.super Ljava/lang/Enum;
.source "MSDKCryptUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;

.field public static final enum KEYSTORE_AES:Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;

.field public static final enum KEYSTORE_RSA:Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;

.field public static final enum SIMPLE:Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;

.field public static final enum UNKNOWN:Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;


# instance fields
.field public id:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 390
    new-instance v0, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;

    const/4 v1, -0x1

    const-string v2, "UNKNOWN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;->UNKNOWN:Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;

    .line 391
    new-instance v1, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;

    const-string v2, "KEYSTORE_AES"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v4}, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;->KEYSTORE_AES:Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;

    .line 392
    new-instance v2, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;

    const-string v5, "KEYSTORE_RSA"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v6}, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;->KEYSTORE_RSA:Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;

    .line 393
    new-instance v5, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;

    const-string v7, "SIMPLE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;->SIMPLE:Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;

    const/4 v7, 0x4

    .line 389
    new-array v7, v7, [Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;

    aput-object v0, v7, v3

    aput-object v1, v7, v4

    aput-object v2, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;->$VALUES:[Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 396
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 397
    iput p3, p0, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;->id:I

    return-void
.end method

.method public static valueOf(I)Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;
    .locals 5

    .line 401
    invoke-static {}, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;->values()[Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;

    move-result-object v0

    .line 402
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 403
    iget v4, v3, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;->id:I

    if-ne p0, v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 407
    :cond_1
    sget-object p0, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;->UNKNOWN:Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;
    .locals 1

    .line 389
    const-class v0, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;

    return-object p0
.end method

.method public static values()[Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;
    .locals 1

    .line 389
    sget-object v0, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;->$VALUES:[Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;

    invoke-virtual {v0}, [Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;

    return-object v0
.end method
