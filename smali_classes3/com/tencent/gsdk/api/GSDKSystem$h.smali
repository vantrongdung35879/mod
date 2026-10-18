.class Lcom/tencent/gsdk/api/GSDKSystem$h;
.super Landroid/os/Handler;
.source "GSDKSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/gsdk/api/GSDKSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "h"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/gsdk/api/GSDKSystem;


# direct methods
.method public constructor <init>(Lcom/tencent/gsdk/api/GSDKSystem;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/gsdk/api/GSDKSystem$h;->a:Lcom/tencent/gsdk/api/GSDKSystem;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 40
    :pswitch_1
    const-string v0, "Post MSG_GSDK_AddCustomParams_InGame"

    invoke-static {v0}, Lcom/tencent/gsdk/utils/Logger;->d(Ljava/lang/String;)V

    .line 41
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashMap;

    .line 42
    invoke-static {}, Lcom/tencent/gsdk/api/GSDKSystem;->c()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 43
    :pswitch_2
    const-string p1, "Post MSG_GSDK_TIMEOUT_DETECT"

    invoke-static {p1}, Lcom/tencent/gsdk/utils/Logger;->d(Ljava/lang/String;)V

    .line 44
    iget-object p1, p0, Lcom/tencent/gsdk/api/GSDKSystem$h;->a:Lcom/tencent/gsdk/api/GSDKSystem;

    invoke-static {p1}, Lcom/tencent/gsdk/api/GSDKSystem;->b(Lcom/tencent/gsdk/api/GSDKSystem;)V

    goto/16 :goto_0

    .line 45
    :pswitch_3
    const-string v0, "Post MSG_GSDK_SET_PAY"

    invoke-static {v0}, Lcom/tencent/gsdk/utils/Logger;->d(Ljava/lang/String;)V

    .line 46
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/tencent/gsdk/api/GSDKSystem$g;

    .line 47
    iget-object v0, p0, Lcom/tencent/gsdk/api/GSDKSystem$h;->a:Lcom/tencent/gsdk/api/GSDKSystem;

    invoke-static {v0, p1}, Lcom/tencent/gsdk/api/GSDKSystem;->a(Lcom/tencent/gsdk/api/GSDKSystem;Lcom/tencent/gsdk/api/GSDKSystem$g;)V

    goto/16 :goto_0

    .line 48
    :pswitch_4
    const-string p1, "Post MSG_GSDK_EVENT_SWITCH"

    invoke-static {p1}, Lcom/tencent/gsdk/utils/Logger;->d(Ljava/lang/String;)V

    .line 49
    iget-object p1, p0, Lcom/tencent/gsdk/api/GSDKSystem$h;->a:Lcom/tencent/gsdk/api/GSDKSystem;

    invoke-virtual {p1}, Lcom/tencent/gsdk/api/GSDKSystem;->l()V

    goto :goto_0

    .line 50
    :pswitch_5
    const-string v0, "Post MSG_GSDK_QUALITY_CLOUD"

    invoke-static {v0}, Lcom/tencent/gsdk/utils/Logger;->d(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/tencent/gsdk/api/GSDKSystem$h;->a:Lcom/tencent/gsdk/api/GSDKSystem;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/tencent/gsdk/api/GSDKSystem;->b(Lcom/tencent/gsdk/api/GSDKSystem;Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :pswitch_6
    const-string v0, "Post MSG_GSDK_START_FPS"

    invoke-static {v0}, Lcom/tencent/gsdk/utils/Logger;->d(Ljava/lang/String;)V

    .line 53
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/tencent/gsdk/api/a;

    .line 54
    iget-object v0, p0, Lcom/tencent/gsdk/api/GSDKSystem$h;->a:Lcom/tencent/gsdk/api/GSDKSystem;

    invoke-static {v0, p1}, Lcom/tencent/gsdk/api/GSDKSystem;->b(Lcom/tencent/gsdk/api/GSDKSystem;Lcom/tencent/gsdk/api/a;)V

    goto :goto_0

    .line 55
    :pswitch_7
    const-string v0, "Post MSG_GSDK_START_TRAFFIC"

    invoke-static {v0}, Lcom/tencent/gsdk/utils/Logger;->d(Ljava/lang/String;)V

    .line 56
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/tencent/gsdk/api/a;

    .line 57
    iget-object v0, p0, Lcom/tencent/gsdk/api/GSDKSystem$h;->a:Lcom/tencent/gsdk/api/GSDKSystem;

    invoke-static {v0, p1}, Lcom/tencent/gsdk/api/GSDKSystem;->a(Lcom/tencent/gsdk/api/GSDKSystem;Lcom/tencent/gsdk/api/a;)V

    goto :goto_0

    .line 58
    :pswitch_8
    const-string v0, "Post MSG_GSDK_END"

    invoke-static {v0}, Lcom/tencent/gsdk/utils/Logger;->d(Ljava/lang/String;)V

    .line 59
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/tencent/gsdk/api/b;

    .line 60
    iget-object v0, p0, Lcom/tencent/gsdk/api/GSDKSystem$h;->a:Lcom/tencent/gsdk/api/GSDKSystem;

    invoke-static {v0}, Lcom/tencent/gsdk/api/GSDKSystem;->a(Lcom/tencent/gsdk/api/GSDKSystem;)Lcom/tencent/gsdk/api/a;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/tencent/gsdk/api/GSDKSystem;->a(Lcom/tencent/gsdk/api/a;Lcom/tencent/gsdk/api/b;)V

    goto :goto_0

    .line 61
    :pswitch_9
    const-string v0, "Post MSG_GSDK_START"

    invoke-static {v0}, Lcom/tencent/gsdk/utils/Logger;->d(Ljava/lang/String;)V

    .line 62
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/tencent/gsdk/api/GSDKSystem$j;

    .line 63
    iget-object v0, p0, Lcom/tencent/gsdk/api/GSDKSystem$h;->a:Lcom/tencent/gsdk/api/GSDKSystem;

    iget-object p1, p1, Lcom/tencent/gsdk/api/GSDKSystem$j;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/tencent/gsdk/api/GSDKSystem;->a(Lcom/tencent/gsdk/api/GSDKSystem;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MainHandler error:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gsdk/utils/Logger;->e(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
