.class Lcom/garena/game/kgtw/SGameRealActivity$1;
.super Ljava/lang/Object;
.source "SGameRealActivity.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/garena/game/kgtw/SGameRealActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 225
    iput-object p1, p0, Lcom/garena/game/kgtw/SGameRealActivity$1;->this$0:Lcom/garena/game/kgtw/SGameRealActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSystemUiVisibilityChange int: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SGameRealActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-static {}, Lcom/garena/game/kgtw/SGameRealActivity;->getSystemVersion()I

    move-result p1

    const/16 v0, 0x13

    if-lt p1, v0, :cond_0

    .line 232
    iget-object p1, p0, Lcom/garena/game/kgtw/SGameRealActivity$1;->this$0:Lcom/garena/game/kgtw/SGameRealActivity;

    invoke-virtual {p1}, Lcom/garena/game/kgtw/SGameRealActivity;->CheckIfHideSystemUI()V

    :cond_0
    return-void
.end method
