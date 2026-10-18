.class Lcom/garena/game/kgtw/SGameRealActivity$LockscreenReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SGameRealActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/garena/game/kgtw/SGameRealActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LockscreenReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/garena/game/kgtw/SGameRealActivity;


# direct methods
.method constructor <init>(Lcom/garena/game/kgtw/SGameRealActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 255
    iput-object p1, p0, Lcom/garena/game/kgtw/SGameRealActivity$LockscreenReceiver;->this$0:Lcom/garena/game/kgtw/SGameRealActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    .line 259
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.USER_PRESENT"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 260
    invoke-static {}, Lcom/garena/game/kgtw/SGameRealActivity;->getSystemVersion()I

    move-result p1

    const/16 p2, 0x1a

    if-ne p1, p2, :cond_0

    .line 261
    iget-object p1, p0, Lcom/garena/game/kgtw/SGameRealActivity$LockscreenReceiver;->this$0:Lcom/garena/game/kgtw/SGameRealActivity;

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/garena/game/kgtw/SGameRealActivity$LockscreenReceiver;->this$0:Lcom/garena/game/kgtw/SGameRealActivity;

    const-class v1, Lcom/garena/game/kgtw/BlankActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Lcom/garena/game/kgtw/SGameRealActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
