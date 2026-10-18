.class Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$1;
.super Landroidx/activity/OnBackPressedCallback;
.source "ComposerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$1;->this$0:Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity;

    invoke-direct {p0, p2}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$1;->this$0:Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity;

    invoke-static {v0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity;->-$$Nest$fgetcomposerController(Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity;)Lcom/twitter/sdk/android/tweetcomposer/ComposerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->onClose()V

    return-void
.end method
