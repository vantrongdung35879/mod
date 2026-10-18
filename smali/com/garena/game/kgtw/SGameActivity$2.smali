.class Lcom/garena/game/kgtw/SGameActivity$2;
.super Ljava/lang/Object;
.source "SGameActivity.java"

# interfaces
.implements Lcom/ngame/resources/IResourceDecompressViewProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/garena/game/kgtw/SGameActivity;->initForResourceDecompress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/garena/game/kgtw/SGameActivity;


# direct methods
.method constructor <init>(Lcom/garena/game/kgtw/SGameActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lcom/garena/game/kgtw/SGameActivity$2;->this$0:Lcom/garena/game/kgtw/SGameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public GetContainer()I
    .locals 1

    .line 82
    sget v0, Lcom/garena/game/kgtw/R$layout;->activity_extractor:I

    return v0
.end method

.method public GetErrorDialogConfirm()I
    .locals 1

    .line 105
    sget v0, Lcom/garena/game/kgtw/R$string;->extractor_error_dialog_positive_btn:I

    return v0
.end method

.method public GetErrorDialogMessage()I
    .locals 1

    .line 101
    sget v0, Lcom/garena/game/kgtw/R$string;->extractor_error_dialog_message:I

    return v0
.end method

.method public GetErrorDialogTitle()I
    .locals 1

    .line 97
    sget v0, Lcom/garena/game/kgtw/R$string;->extractor_error_dialog_title:I

    return v0
.end method

.method public GetProgressBar()I
    .locals 1

    .line 86
    sget v0, Lcom/garena/game/kgtw/R$id;->extractor_progress_bar:I

    return v0
.end method

.method public GetProgressBarContainer()I
    .locals 1

    .line 89
    sget v0, Lcom/garena/game/kgtw/R$id;->extractor_progress_container:I

    return v0
.end method

.method public GetProgressBarNum()I
    .locals 1

    .line 93
    sget v0, Lcom/garena/game/kgtw/R$id;->extractor_progress_number:I

    return v0
.end method
