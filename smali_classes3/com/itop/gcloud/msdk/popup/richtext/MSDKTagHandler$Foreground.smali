.class Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Foreground;
.super Ljava/lang/Object;
.source "MSDKTagHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Foreground"
.end annotation


# instance fields
.field private mForegroundColor:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput p1, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Foreground;->mForegroundColor:I

    return-void
.end method

.method static synthetic access$400(Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Foreground;)I
    .locals 0

    .line 146
    iget p0, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Foreground;->mForegroundColor:I

    return p0
.end method
