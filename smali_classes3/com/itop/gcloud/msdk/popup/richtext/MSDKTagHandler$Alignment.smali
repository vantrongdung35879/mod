.class Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Alignment;
.super Ljava/lang/Object;
.source "MSDKTagHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Alignment"
.end annotation


# instance fields
.field private mAlignment:Landroid/text/Layout$Alignment;


# direct methods
.method public constructor <init>(Landroid/text/Layout$Alignment;)V
    .locals 0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object p1, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Alignment;->mAlignment:Landroid/text/Layout$Alignment;

    return-void
.end method

.method static synthetic access$300(Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Alignment;)Landroid/text/Layout$Alignment;
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/itop/gcloud/msdk/popup/richtext/MSDKTagHandler$Alignment;->mAlignment:Landroid/text/Layout$Alignment;

    return-object p0
.end method
