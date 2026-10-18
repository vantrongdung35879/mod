.class Lcom/garena/game/kgtw/SGameRealActivity$2;
.super Landroid/os/Handler;
.source "SGameRealActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/garena/game/kgtw/SGameRealActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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

    .line 294
    iput-object p1, p0, Lcom/garena/game/kgtw/SGameRealActivity$2;->this$0:Lcom/garena/game/kgtw/SGameRealActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 297
    iget-object p1, p0, Lcom/garena/game/kgtw/SGameRealActivity$2;->this$0:Lcom/garena/game/kgtw/SGameRealActivity;

    invoke-virtual {p1}, Lcom/garena/game/kgtw/SGameRealActivity;->CheckIfHideSystemUI()V

    return-void
.end method
