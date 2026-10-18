.class public Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity;
.super Landroidx/activity/ComponentActivity;
.source "ComposerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$FinisherImpl;,
        Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Finisher;,
        Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_TWEET_COMPOSER_REQUEST_CODE:I = 0x8d

.field private static final EXTRA_HASHTAGS:Ljava/lang/String; = "EXTRA_HASHTAGS"

.field private static final EXTRA_IMAGE_URI:Ljava/lang/String; = "EXTRA_IMAGE_URI"

.field private static final EXTRA_TEXT:Ljava/lang/String; = "EXTRA_TEXT"

.field private static final EXTRA_THEME:Ljava/lang/String; = "EXTRA_THEME"

.field private static final EXTRA_USER_TOKEN:Ljava/lang/String; = "EXTRA_USER_TOKEN"

.field private static final EXTRA_VIDEO_URI:Ljava/lang/String; = "EXTRA_VIDEO_URI"

.field private static final PLACEHOLDER_ID:I = -0x1

.field private static final PLACEHOLDER_SCREEN_NAME:Ljava/lang/String; = ""


# instance fields
.field private composerController:Lcom/twitter/sdk/android/tweetcomposer/ComposerController;


# direct methods
.method static bridge synthetic -$$Nest$fgetcomposerController(Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity;)Lcom/twitter/sdk/android/tweetcomposer/ComposerController;
    .locals 0

    iget-object p0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity;->composerController:Lcom/twitter/sdk/android/tweetcomposer/ComposerController;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 51
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 54
    const-string v0, "EXTRA_USER_TOKEN"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/TwitterAuthToken;

    .line 55
    new-instance v3, Lcom/twitter/sdk/android/core/TwitterSession;

    const-wide/16 v1, -0x1

    const-string v4, ""

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/twitter/sdk/android/core/TwitterSession;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthToken;JLjava/lang/String;)V

    .line 57
    const-string v0, "EXTRA_IMAGE_URI"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 58
    const-string v0, "EXTRA_VIDEO_URI"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 59
    const-string v0, "EXTRA_TEXT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 60
    const-string v0, "EXTRA_HASHTAGS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 61
    const-string v0, "EXTRA_THEME"

    sget v1, Lcom/garena/msdk/R$style;->ComposerLight:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 63
    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity;->setTheme(I)V

    .line 64
    sget p1, Lcom/garena/msdk/R$layout;->tw__activity_composer:I

    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity;->setContentView(I)V

    .line 65
    sget p1, Lcom/garena/msdk/R$id;->tw__composer_view:I

    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    .line 66
    new-instance p1, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;

    new-instance v8, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$FinisherImpl;

    invoke-direct {v8, p0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$FinisherImpl;-><init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity;)V

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;-><init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerView;Lcom/twitter/sdk/android/core/TwitterSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Finisher;)V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity;->composerController:Lcom/twitter/sdk/android/tweetcomposer/ComposerController;

    .line 69
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p1

    new-instance v0, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$1;-><init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity;Z)V

    invoke-virtual {p1, p0, v0}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    return-void
.end method
