.class final Lcom/huawei/game/gamekit/b$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/game/gamekit/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/game/gamekit/b;


# direct methods
.method public constructor <init>(Lcom/huawei/game/gamekit/b;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/game/gamekit/b$a;->a:Lcom/huawei/game/gamekit/b;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/huawei/game/gamekit/b$a;->a:Lcom/huawei/game/gamekit/b;

    invoke-static {v0}, Lcom/huawei/game/gamekit/b;->c(Lcom/huawei/game/gamekit/b;)Lcom/huawei/game/gamekit/GameManager$GameCallBack;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/game/gamekit/b$a;->a:Lcom/huawei/game/gamekit/b;

    invoke-static {v0}, Lcom/huawei/game/gamekit/b;->c(Lcom/huawei/game/gamekit/b;)Lcom/huawei/game/gamekit/GameManager$GameCallBack;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/huawei/game/gamekit/GameManager$GameCallBack;->onPhoneInfoUpdated(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
