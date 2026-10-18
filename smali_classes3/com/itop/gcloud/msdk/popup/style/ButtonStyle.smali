.class public Lcom/itop/gcloud/msdk/popup/style/ButtonStyle;
.super Ljava/lang/Object;
.source "ButtonStyle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itop/gcloud/msdk/popup/style/ButtonStyle$ButtonType;
    }
.end annotation


# instance fields
.field public buttonHeight:I

.field public buttonType:Lcom/itop/gcloud/msdk/popup/style/ButtonStyle$ButtonType;

.field public buttonWith:I

.field public text:Ljava/lang/String;

.field public textColor:I

.field public textSize:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    sget-object v0, Lcom/itop/gcloud/msdk/popup/style/ButtonStyle$ButtonType;->UNKNOWN:Lcom/itop/gcloud/msdk/popup/style/ButtonStyle$ButtonType;

    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/style/ButtonStyle;->buttonType:Lcom/itop/gcloud/msdk/popup/style/ButtonStyle$ButtonType;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/itop/gcloud/msdk/popup/style/ButtonStyle;->text:Ljava/lang/String;

    const/high16 v0, 0x41200000    # 10.0f

    .line 17
    iput v0, p0, Lcom/itop/gcloud/msdk/popup/style/ButtonStyle;->textSize:F

    const/high16 v0, -0x1000000

    .line 19
    iput v0, p0, Lcom/itop/gcloud/msdk/popup/style/ButtonStyle;->textColor:I

    const/16 v0, 0x64

    .line 21
    iput v0, p0, Lcom/itop/gcloud/msdk/popup/style/ButtonStyle;->buttonWith:I

    .line 23
    iput v0, p0, Lcom/itop/gcloud/msdk/popup/style/ButtonStyle;->buttonHeight:I

    return-void
.end method
