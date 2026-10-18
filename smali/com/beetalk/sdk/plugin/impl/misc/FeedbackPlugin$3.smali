.class Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$3;
.super Lcom/beetalk/sdk/plugin/PluginResult;
.source "FeedbackPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin;->executeAction(Landroid/app/Activity;Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$FeedbackData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$3;->this$0:Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin;

    invoke-direct {p0}, Lcom/beetalk/sdk/plugin/PluginResult;-><init>()V

    .line 83
    const-string p1, "app.feedback"

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$3;->source:Ljava/lang/String;

    .line 84
    const-string p1, "Request Failed. Network Error or Server Error"

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$3;->message:Ljava/lang/String;

    .line 85
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->NETWORK_RESPONSE_PARSE_FAIL:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$3;->flag:I

    const/4 p1, -0x1

    .line 86
    iput p1, p0, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$3;->status:I

    return-void
.end method
