.class public final enum Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;
.super Ljava/lang/Enum;
.source "IMSDKPopupWindowCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;

.field public static final enum CANCEL:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;

.field public static final enum COMMIT:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;

.field public static final enum ERROR:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;

.field public static final enum SKIP:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;


# instance fields
.field public id:I

.field public name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 8
    new-instance v0, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;

    const/4 v1, -0x1

    const-string v2, "error"

    const-string v3, "ERROR"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;->ERROR:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;

    .line 9
    new-instance v1, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;

    const-string v2, "skip"

    const-string v3, "SKIP"

    const/4 v5, 0x1

    invoke-direct {v1, v3, v5, v4, v2}, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;->SKIP:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;

    .line 10
    new-instance v2, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;

    const-string v3, "commit"

    const-string v6, "COMMIT"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v5, v3}, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;->COMMIT:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;

    .line 11
    new-instance v3, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;

    const-string v6, "cancel"

    const-string v8, "CANCEL"

    const/4 v9, 0x3

    invoke-direct {v3, v8, v9, v7, v6}, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;->CANCEL:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;

    const/4 v6, 0x4

    .line 7
    new-array v6, v6, [Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;

    aput-object v0, v6, v4

    aput-object v1, v6, v5

    aput-object v2, v6, v7

    aput-object v3, v6, v9

    sput-object v6, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;->$VALUES:[Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;->id:I

    .line 18
    iput-object p4, p0, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;
    .locals 1

    .line 7
    const-class v0, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;

    return-object p0
.end method

.method public static valueOfInt(I)Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;
    .locals 5

    .line 22
    invoke-static {}, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;->values()[Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 23
    iget v4, v3, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;->id:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 27
    :cond_1
    sget-object p0, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;->ERROR:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;

    return-object p0
.end method

.method public static valueOfString(Ljava/lang/String;)Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;
    .locals 5

    .line 31
    invoke-static {}, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;->values()[Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 32
    iget-object v4, v3, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;->name:Ljava/lang/String;

    invoke-static {p0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 36
    :cond_1
    sget-object p0, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;->ERROR:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;

    return-object p0
.end method

.method public static values()[Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;
    .locals 1

    .line 7
    sget-object v0, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;->$VALUES:[Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;

    invoke-virtual {v0}, [Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;

    return-object v0
.end method
