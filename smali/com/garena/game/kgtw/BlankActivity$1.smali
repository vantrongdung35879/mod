.class Lcom/garena/game/kgtw/BlankActivity$1;
.super Ljava/lang/Object;
.source "BlankActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/garena/game/kgtw/BlankActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/garena/game/kgtw/BlankActivity;


# direct methods
.method constructor <init>(Lcom/garena/game/kgtw/BlankActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 17
    iput-object p1, p0, Lcom/garena/game/kgtw/BlankActivity$1;->this$0:Lcom/garena/game/kgtw/BlankActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 20
    iget-object v0, p0, Lcom/garena/game/kgtw/BlankActivity$1;->this$0:Lcom/garena/game/kgtw/BlankActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/garena/game/kgtw/BlankActivity$1;->this$0:Lcom/garena/game/kgtw/BlankActivity;

    const-class v3, Lcom/garena/game/kgtw/SGameRealActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/garena/game/kgtw/BlankActivity;->startActivity(Landroid/content/Intent;)V

    .line 21
    iget-object v0, p0, Lcom/garena/game/kgtw/BlankActivity$1;->this$0:Lcom/garena/game/kgtw/BlankActivity;

    invoke-virtual {v0}, Lcom/garena/game/kgtw/BlankActivity;->finish()V

    return-void
.end method
