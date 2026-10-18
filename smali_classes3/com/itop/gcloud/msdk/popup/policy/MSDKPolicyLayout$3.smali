.class synthetic Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout$3;
.super Ljava/lang/Object;
.source "MSDKPolicyLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$itop$gcloud$msdk$popup$style$ButtonStyle$ButtonType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 100
    invoke-static {}, Lcom/itop/gcloud/msdk/popup/style/ButtonStyle$ButtonType;->values()[Lcom/itop/gcloud/msdk/popup/style/ButtonStyle$ButtonType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout$3;->$SwitchMap$com$itop$gcloud$msdk$popup$style$ButtonStyle$ButtonType:[I

    :try_start_0
    sget-object v1, Lcom/itop/gcloud/msdk/popup/style/ButtonStyle$ButtonType;->POSITIVE:Lcom/itop/gcloud/msdk/popup/style/ButtonStyle$ButtonType;

    invoke-virtual {v1}, Lcom/itop/gcloud/msdk/popup/style/ButtonStyle$ButtonType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/itop/gcloud/msdk/popup/policy/MSDKPolicyLayout$3;->$SwitchMap$com$itop$gcloud$msdk$popup$style$ButtonStyle$ButtonType:[I

    sget-object v1, Lcom/itop/gcloud/msdk/popup/style/ButtonStyle$ButtonType;->NEGATIVE:Lcom/itop/gcloud/msdk/popup/style/ButtonStyle$ButtonType;

    invoke-virtual {v1}, Lcom/itop/gcloud/msdk/popup/style/ButtonStyle$ButtonType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
