.class Lcom/garena/game/kgtw/SGameRealActivity$4;
.super Ljava/lang/Object;
.source "SGameRealActivity.java"

# interfaces
.implements Lcom/tencent/qimei/sdk/IAsyncQimeiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/garena/game/kgtw/SGameRealActivity;->initQIMEI(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/garena/game/kgtw/SGameRealActivity;

.field final synthetic val$appkey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/garena/game/kgtw/SGameRealActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$appkey"
        }
    .end annotation

    .line 727
    iput-object p1, p0, Lcom/garena/game/kgtw/SGameRealActivity$4;->this$0:Lcom/garena/game/kgtw/SGameRealActivity;

    iput-object p2, p0, Lcom/garena/game/kgtw/SGameRealActivity$4;->val$appkey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQimeiDispatch(Lcom/tencent/qimei/sdk/Qimei;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "qimei"
        }
    .end annotation

    .line 730
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "appkey:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/garena/game/kgtw/SGameRealActivity$4;->val$appkey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",qimei:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SGameRealActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    iget-object v0, p0, Lcom/garena/game/kgtw/SGameRealActivity$4;->this$0:Lcom/garena/game/kgtw/SGameRealActivity;

    invoke-virtual {p1}, Lcom/tencent/qimei/sdk/Qimei;->getQimei16()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/garena/game/kgtw/SGameRealActivity;->access$002(Lcom/garena/game/kgtw/SGameRealActivity;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
