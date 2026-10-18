.class Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$2;
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

.field final synthetic val$data:Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$FeedbackData;

.field final synthetic val$finalResult:I


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin;Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$FeedbackData;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$2;->this$0:Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin;

    iput-object p2, p0, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$2;->val$data:Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$FeedbackData;

    iput p3, p0, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$2;->val$finalResult:I

    invoke-direct {p0}, Lcom/beetalk/sdk/plugin/PluginResult;-><init>()V

    .line 77
    const-string p1, "app.feedback"

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$2;->source:Ljava/lang/String;

    .line 78
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "feedback: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$FeedbackData;->feedback:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$2;->message:Ljava/lang/String;

    .line 79
    iput p3, p0, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$2;->status:I

    iput p3, p0, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$2;->flag:I

    return-void
.end method
