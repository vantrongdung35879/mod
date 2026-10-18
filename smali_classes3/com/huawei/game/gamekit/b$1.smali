.class final Lcom/huawei/game/gamekit/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/game/gamekit/GameManager$GameCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/game/gamekit/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/game/gamekit/b;


# direct methods
.method public constructor <init>(Lcom/huawei/game/gamekit/b;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/game/gamekit/b$1;->a:Lcom/huawei/game/gamekit/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPhoneInfoUpdated(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPhoneInfoUpdated info="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameKit"

    invoke-static {v1, v0}, Lcom/huawei/game/gamekit/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/game/gamekit/b$1;->a:Lcom/huawei/game/gamekit/b;

    invoke-static {v0, p1}, Lcom/huawei/game/gamekit/b;->a(Lcom/huawei/game/gamekit/b;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/huawei/game/gamekit/b$1;->a:Lcom/huawei/game/gamekit/b;

    invoke-static {p1}, Lcom/huawei/game/gamekit/b;->a(Lcom/huawei/game/gamekit/b;)Lcom/huawei/game/gamekit/b$a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/huawei/game/gamekit/b$1;->a:Lcom/huawei/game/gamekit/b;

    invoke-static {p1}, Lcom/huawei/game/gamekit/b;->a(Lcom/huawei/game/gamekit/b;)Lcom/huawei/game/gamekit/b$a;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/huawei/game/gamekit/b$1;->a:Lcom/huawei/game/gamekit/b;

    invoke-static {v0}, Lcom/huawei/game/gamekit/b;->b(Lcom/huawei/game/gamekit/b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/huawei/game/gamekit/b$1;->a:Lcom/huawei/game/gamekit/b;

    invoke-static {v0}, Lcom/huawei/game/gamekit/b;->a(Lcom/huawei/game/gamekit/b;)Lcom/huawei/game/gamekit/b$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const-string p1, "sendMessage failed: handler is null"

    invoke-static {v1, p1}, Lcom/huawei/game/gamekit/b/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
