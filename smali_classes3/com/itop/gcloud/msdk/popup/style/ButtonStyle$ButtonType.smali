.class public final enum Lcom/itop/gcloud/msdk/popup/style/ButtonStyle$ButtonType;
.super Ljava/lang/Enum;
.source "ButtonStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itop/gcloud/msdk/popup/style/ButtonStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ButtonType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itop/gcloud/msdk/popup/style/ButtonStyle$ButtonType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itop/gcloud/msdk/popup/style/ButtonStyle$ButtonType;

.field public static final enum NEGATIVE:Lcom/itop/gcloud/msdk/popup/style/ButtonStyle$ButtonType;

.field public static final enum POSITIVE:Lcom/itop/gcloud/msdk/popup/style/ButtonStyle$ButtonType;

.field public static final enum UNKNOWN:Lcom/itop/gcloud/msdk/popup/style/ButtonStyle$ButtonType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 8
    new-instance v0, Lcom/itop/gcloud/msdk/popup/style/ButtonStyle$ButtonType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itop/gcloud/msdk/popup/style/ButtonStyle$ButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itop/gcloud/msdk/popup/style/ButtonStyle$ButtonType;->UNKNOWN:Lcom/itop/gcloud/msdk/popup/style/ButtonStyle$ButtonType;

    .line 9
    new-instance v1, Lcom/itop/gcloud/msdk/popup/style/ButtonStyle$ButtonType;

    const-string v3, "POSITIVE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/itop/gcloud/msdk/popup/style/ButtonStyle$ButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/itop/gcloud/msdk/popup/style/ButtonStyle$ButtonType;->POSITIVE:Lcom/itop/gcloud/msdk/popup/style/ButtonStyle$ButtonType;

    .line 10
    new-instance v3, Lcom/itop/gcloud/msdk/popup/style/ButtonStyle$ButtonType;

    const-string v5, "NEGATIVE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/itop/gcloud/msdk/popup/style/ButtonStyle$ButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/itop/gcloud/msdk/popup/style/ButtonStyle$ButtonType;->NEGATIVE:Lcom/itop/gcloud/msdk/popup/style/ButtonStyle$ButtonType;

    const/4 v5, 0x3

    .line 7
    new-array v5, v5, [Lcom/itop/gcloud/msdk/popup/style/ButtonStyle$ButtonType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/itop/gcloud/msdk/popup/style/ButtonStyle$ButtonType;->$VALUES:[Lcom/itop/gcloud/msdk/popup/style/ButtonStyle$ButtonType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itop/gcloud/msdk/popup/style/ButtonStyle$ButtonType;
    .locals 1

    .line 7
    const-class v0, Lcom/itop/gcloud/msdk/popup/style/ButtonStyle$ButtonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itop/gcloud/msdk/popup/style/ButtonStyle$ButtonType;

    return-object p0
.end method

.method public static values()[Lcom/itop/gcloud/msdk/popup/style/ButtonStyle$ButtonType;
    .locals 1

    .line 7
    sget-object v0, Lcom/itop/gcloud/msdk/popup/style/ButtonStyle$ButtonType;->$VALUES:[Lcom/itop/gcloud/msdk/popup/style/ButtonStyle$ButtonType;

    invoke-virtual {v0}, [Lcom/itop/gcloud/msdk/popup/style/ButtonStyle$ButtonType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itop/gcloud/msdk/popup/style/ButtonStyle$ButtonType;

    return-object v0
.end method
