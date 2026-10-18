.class Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin$1;
.super Lcom/beetalk/sdk/plugin/PluginResult;
.source "FBInvitePlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin;->onError(Ljava/lang/Exception;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin;Ljava/lang/Exception;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin$1;->this$0:Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin;

    iput-object p2, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin$1;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Lcom/beetalk/sdk/plugin/PluginResult;-><init>()V

    .line 39
    invoke-virtual {p1}, Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin$1;->source:Ljava/lang/String;

    const/4 p1, -0x1

    .line 40
    iput p1, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin$1;->status:I

    .line 41
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->UNKNOWN_ERROR:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin$1;->flag:I

    .line 42
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin$1;->message:Ljava/lang/String;

    return-void
.end method
