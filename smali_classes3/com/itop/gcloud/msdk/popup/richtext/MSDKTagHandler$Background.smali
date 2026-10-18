.class Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Background;
.super Ljava/lang/Object;
.source "MSDKTagHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Background"
.end annotation


# instance fields
.field private mBackgroundColor:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput p1, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Background;->mBackgroundColor:I

    return-void
.end method

.method static synthetic access$600(Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Background;)I
    .locals 0

    .line 154
    iget p0, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Background;->mBackgroundColor:I

    return p0
.end method
