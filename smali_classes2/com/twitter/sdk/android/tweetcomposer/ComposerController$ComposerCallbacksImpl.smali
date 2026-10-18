.class Lcom/twitter/sdk/android/tweetcomposer/ComposerController$ComposerCallbacksImpl;
.super Ljava/lang/Object;
.source "ComposerController.java"

# interfaces
.implements Lcom/twitter/sdk/android/tweetcomposer/ComposerController$ComposerCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetcomposer/ComposerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ComposerCallbacksImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/twitter/sdk/android/tweetcomposer/ComposerController;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 159
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$ComposerCallbacksImpl;->this$0:Lcom/twitter/sdk/android/tweetcomposer/ComposerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseClick()V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$ComposerCallbacksImpl;->this$0:Lcom/twitter/sdk/android/tweetcomposer/ComposerController;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->onClose()V

    return-void
.end method

.method public onTextChanged(Ljava/lang/String;)V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$ComposerCallbacksImpl;->this$0:Lcom/twitter/sdk/android/tweetcomposer/ComposerController;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->tweetTextLength(Ljava/lang/String;)I

    move-result p1

    .line 164
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$ComposerCallbacksImpl;->this$0:Lcom/twitter/sdk/android/tweetcomposer/ComposerController;

    invoke-static {v0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->-$$Nest$fgetcomposerView(Lcom/twitter/sdk/android/tweetcomposer/ComposerController;)Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    move-result-object v0

    invoke-static {p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->remainingCharCount(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->setCharCount(I)V

    .line 166
    invoke-static {p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->isTweetTextOverflow(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$ComposerCallbacksImpl;->this$0:Lcom/twitter/sdk/android/tweetcomposer/ComposerController;

    invoke-static {v0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->-$$Nest$fgetcomposerView(Lcom/twitter/sdk/android/tweetcomposer/ComposerController;)Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    move-result-object v0

    sget v1, Lcom/garena/msdk/R$style;->tw__ComposerCharCountOverflow:I

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->setCharCountTextStyle(I)V

    goto :goto_0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$ComposerCallbacksImpl;->this$0:Lcom/twitter/sdk/android/tweetcomposer/ComposerController;

    invoke-static {v0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->-$$Nest$fgetcomposerView(Lcom/twitter/sdk/android/tweetcomposer/ComposerController;)Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    move-result-object v0

    sget v1, Lcom/garena/msdk/R$style;->tw__ComposerCharCount:I

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->setCharCountTextStyle(I)V

    .line 172
    :goto_0
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$ComposerCallbacksImpl;->this$0:Lcom/twitter/sdk/android/tweetcomposer/ComposerController;

    invoke-static {v0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->-$$Nest$fgetcomposerView(Lcom/twitter/sdk/android/tweetcomposer/ComposerController;)Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    move-result-object v0

    invoke-static {p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->isPostEnabled(I)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->postTweetEnabled(Z)V

    return-void
.end method

.method public onTweetPost(Ljava/lang/String;)V
    .locals 3

    .line 177
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$ComposerCallbacksImpl;->this$0:Lcom/twitter/sdk/android/tweetcomposer/ComposerController;

    invoke-static {v1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->-$$Nest$fgetcomposerView(Lcom/twitter/sdk/android/tweetcomposer/ComposerController;)Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$ComposerCallbacksImpl;->this$0:Lcom/twitter/sdk/android/tweetcomposer/ComposerController;

    invoke-static {v1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->-$$Nest$fgetsession(Lcom/twitter/sdk/android/tweetcomposer/ComposerController;)Lcom/twitter/sdk/android/core/TwitterSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/TwitterSession;->getAuthToken()Lcom/twitter/sdk/android/core/AuthToken;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    const-string v2, "EXTRA_USER_TOKEN"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 179
    const-string v1, "EXTRA_TWEET_TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$ComposerCallbacksImpl;->this$0:Lcom/twitter/sdk/android/tweetcomposer/ComposerController;

    invoke-static {p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->-$$Nest$fgetimageUri(Lcom/twitter/sdk/android/tweetcomposer/ComposerController;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "EXTRA_IMAGE_URI"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$ComposerCallbacksImpl;->this$0:Lcom/twitter/sdk/android/tweetcomposer/ComposerController;

    invoke-static {p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->-$$Nest$fgetvideoUri(Lcom/twitter/sdk/android/tweetcomposer/ComposerController;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "EXTRA_VIDEO_URI"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$ComposerCallbacksImpl;->this$0:Lcom/twitter/sdk/android/tweetcomposer/ComposerController;

    invoke-static {p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->-$$Nest$fgetcomposerView(Lcom/twitter/sdk/android/tweetcomposer/ComposerController;)Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 183
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$ComposerCallbacksImpl;->this$0:Lcom/twitter/sdk/android/tweetcomposer/ComposerController;

    invoke-static {p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->-$$Nest$fgetfinisher(Lcom/twitter/sdk/android/tweetcomposer/ComposerController;)Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Finisher;

    move-result-object p1

    invoke-interface {p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Finisher;->finish()V

    return-void
.end method
