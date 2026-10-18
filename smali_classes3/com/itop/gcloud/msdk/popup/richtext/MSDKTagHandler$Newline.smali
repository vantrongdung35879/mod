.class Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Newline;
.super Ljava/lang/Object;
.source "MSDKTagHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Newline"
.end annotation


# instance fields
.field private mNumNewlines:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput p1, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Newline;->mNumNewlines:I

    return-void
.end method

.method static synthetic access$200(Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Newline;)I
    .locals 0

    .line 170
    iget p0, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Newline;->mNumNewlines:I

    return p0
.end method
