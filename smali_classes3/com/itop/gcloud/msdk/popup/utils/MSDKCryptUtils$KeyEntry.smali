.class Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry;
.super Ljava/lang/Object;
.source "MSDKCryptUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;
    }
.end annotation


# instance fields
.field public key:Ljava/security/Key;

.field public type:Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry$Type;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$1;)V
    .locals 0

    .line 388
    invoke-direct {p0}, Lcom/itop/gcloud/msdk/popup/utils/MSDKCryptUtils$KeyEntry;-><init>()V

    return-void
.end method
